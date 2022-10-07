unit UnitQueServices;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormQueServices = class(TForm)
    srcMySerices: TDataSource;
    MyServicesDBGrid: TDBGrid;
    Panel1: TPanel;
    DeleteBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    CloseBtn: TButton;
    Panel2: TPanel;
    qryBranches: TFDQuery;
    CmBoxBranches: TComboBox;
    CmBoxServices: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    qryServices: TFDQuery;
    ServiceNumberEdit: TEdit;
    Label3: TLabel;
    qryMyService: TFDQuery;
    srcBranches: TDataSource;
    qryInsertServices: TFDQuery;
    qryDeleteID: TFDQuery;
    SaveBtn: TButton;
    CancelBtn: TButton;
    qryUpdateID: TFDQuery;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmBoxBranchesSelect(Sender: TObject);
    procedure CmBoxServicesSelect(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure MyServicesDBGridCellClick(Column: TColumn);
    procedure DeleteBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormQueServices: TFormQueServices;

  MyBranchID, MyServiceID, InitService : Integer;
  MyBranchName, MyServiceName, BranchServiceID, MySelectID : String;
  MyBranchSelect, MyServiceSelect : Boolean;

implementation

{$R *.dfm}

uses MainUnit, UnitDataModule, UnitGlobal;

procedure TFormQueServices.AddBtnClick(Sender: TObject);
begin
    if (ServiceNumberEdit.Text <> '') 
   { or (MyServiceSelect)} then
    begin
       AddBtn.Enabled := False;
       InitService := StrToInt(ServiceNumberEdit.Text);
       BranchServiceID := '1000_'+  MyBranchID.ToString +'_'+ MyServiceID.ToString;

       qryInsertServices.Params.ClearValues;
       qryInsertServices.Params[0].AsString := BranchServiceID;
       qryInsertServices.Params[1].AsInteger := InitService;
       qryInsertServices.Params[2].AsString := MyServiceName;
       qryInsertServices.Params[3].AsInteger := MyBranchID;
       qryInsertServices.ExecSQL;
       DataQModule.tblQueServices.Refresh;
       qryMyService.Refresh;

       ServiceNumberEdit.Text := '';
       MyServiceSelect := False;
       MyBranchSelect := False;
       CmBoxServices.ItemIndex := -1;
    end
    else
    begin
       ShowMessage('يجب إدخال رقم الخدمة أولاً');
       Exit;
    end;
end;

procedure TFormQueServices.CancelBtnClick(Sender: TObject);
begin
    MyBranchSelect := False;
    MyServiceSelect := False;
    EditBtn.Enabled := False;
    SaveBtn.Enabled := False;
    DeleteBtn.Enabled := False;
    AddBtn.Enabled := False;
    CmBoxBranches.Enabled := True;
    
    ServiceNumberEdit.Text := '';
    CmBoxServices.ItemIndex := -1;

    qryMyService.Refresh;
end;

procedure TFormQueServices.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TFormQueServices.CmBoxBranchesSelect(Sender: TObject);
begin
     MyBranchSelect := False;
     MyServicesDBGrid.Enabled := True;
     
    var SS := CmBoxBranches.Text;
    if qryBranches.Locate('BranchName', SS, [loCaseInsensitive, loPartialKey]) then
    begin
        MyBranchSelect := True;
        MyBranchID:= qryBranches.FieldByName('BranchID').Value;
        MyBranchName := qryBranches.FieldByName('BranchName').Value;
        qryMyService.Open;
    end;
end;

procedure TFormQueServices.CmBoxServicesSelect(Sender: TObject);
begin
     MyServiceSelect := False;

    var SS := CmBoxServices.Text;
    if qryServices.Locate('ServiceName', SS, [loCaseInsensitive, loPartialKey]) then
    begin
        MyServiceSelect := True;
        MyServiceID:= qryServices.FieldByName('ServiceID').Value;
        MyServiceName := qryServices.FieldByName('ServiceName').Value;
    end;

    AddBtn.Enabled := True;
    ServiceNumberEdit.Text := '';
end;

procedure TFormQueServices.DeleteBtnClick(Sender: TObject);
begin
     if MessageDlg('Are you sure you want to DELETE it...?!',
                TMsgDlgType.mtWarning, mbYesNo, 0) = mrYes then
     begin
        with qryDeleteID do
        begin
           Params[0].AsString := MySelectID ;
           ExecSQL;
        end;
         CmBoxServices.ItemIndex := -1;
         DeleteBtn.Enabled := False;
         EditBtn.Enabled := False;

         qryMyService.Open;
         DataQModule.tblQueServices.Refresh;
         qryMyService.Refresh;
     end;
end;

procedure TFormQueServices.EditBtnClick(Sender: TObject);
begin
     SaveBtn.Enabled := True;
     CancelBtn.Enabled := True;

     AddBtn.Enabled := False;
     CmBoxBranches.Enabled := False;
end;

procedure TFormQueServices.FormShow(Sender: TObject);
begin
    MyBranchSelect := False;
    MyServiceSelect := False;
    EditBtn.Enabled := False;
    SaveBtn.Enabled := False;
    DeleteBtn.Enabled := False;
    AddBtn.Enabled := False;
    CmBoxBranches.Enabled := True;
    
    ServiceNumberEdit.Text := '';
    MyServicesDBGrid.Enabled := False;
    
    CmBoxBranches.Clear;
    qryBranches.Open;
    qryBranches.First;
    if qryBranches.RecordCount <> 0 then
      begin
      while NOT qryBranches.Eof do
         begin
             CmBoxBranches.Items.Add(qryBranches.FieldByName('BranchName').AsString);
             qryBranches.Next;
         end;
      end;
         CmBoxBranches.ItemIndex := -1;

    CmBoxServices.Clear;
    qryServices.Open;
    qryServices.First;
    if qryServices.RecordCount <> 0 then
      begin
      while NOT qryServices.Eof do
         begin
             CmBoxServices.Items.Add(qryServices.FieldByName('ServiceName').AsString);
             qryServices.Next;
         end;
      end;
         CmBoxServices.ItemIndex := -1;
end;

procedure TFormQueServices.MyServicesDBGridCellClick(Column: TColumn);
begin
   if MyServicesDBGrid.Fields[0].Value <> NULL then
     begin
       MySelectID := MyServicesDBGrid.Fields[0].Value;
       DeleteBtn.Enabled := True;
       EditBtn.Enabled := True;
     end;
end;

procedure TFormQueServices.SaveBtnClick(Sender: TObject);
begin
    if ServiceNumberEdit.Text <> '' then
    begin
       AddBtn.Enabled := False;
       InitService := StrToInt(ServiceNumberEdit.Text);
       BranchServiceID := '1000_'+  MyBranchID.ToString +'_'+ MyServiceID.ToString;

       qryUpdateID.Params.ClearValues;
       qryUpdateID.Params[0].AsString := BranchServiceID;
       qryUpdateID.Params[1].AsInteger := InitService;
       qryUpdateID.Params[2].AsString := MyServiceName;
       qryUpdateID.Params[3].AsString := MySelectID;
       qryUpdateID.ExecSQL;

       DataQModule.tblQueServices.Refresh;
       qryMyService.Refresh;

       ServiceNumberEdit.Text := '';
       EditBtn.Enabled := True;
       DeleteBtn.Enabled := False;
       SaveBtn.Enabled := False;
       CmBoxBranches.Enabled := True;
       CmBoxServices.ItemIndex := -1;
//       MyServiceSelect := False;
//       MyBranchSelect := False;
    end
    else
    begin
       ShowMessage('يجب إدخال رقم الخدمة أولاً');
       Exit;
    end;
end;

end.
