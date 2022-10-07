unit UnitQueCounters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormQueCounters = class(TForm)
    srcMyCounters: TDataSource;
    MyCounterDBGrid: TDBGrid;
    Panel1: TPanel;
    DeleteBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    CloseBtn: TButton;
    Panel2: TPanel;
    qryCounters: TFDQuery;
    CmBoxBranches: TComboBox;
    CmBoxCounters: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    qryBranches: TFDQuery;
    CounterNumberEdit: TEdit;
    Label3: TLabel;
    qryMyCounters: TFDQuery;
    srcBranches: TDataSource;
    qryInsertCounter: TFDQuery;
    qryDeleteID: TFDQuery;
    SaveBtn: TButton;
    CancelBtn: TButton;
    qryUpdateID: TFDQuery;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmBoxBranchesSelect(Sender: TObject);
    procedure CmBoxCountersSelect(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure MyCounterDBGridCellClick(Column: TColumn);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormQueCounters: TFormQueCounters;

  MyBranchID, MyCounterID, InitCounter : Integer;
  MyBranchName, MyCounterName, BranchCounterID, MySelectID : String;
  MyBranchSelect, MyCounterSelect : Boolean;

implementation

{$R *.dfm}

uses MainUnit, UnitDataModule, UnitGlobal;

procedure TFormQueCounters.AddBtnClick(Sender: TObject);
begin
    if (CounterNumberEdit.Text <> '') 
   { or (MyServiceSelect)} then
    begin
       AddBtn.Enabled := False;
       InitCounter := StrToInt(CounterNumberEdit.Text);
       BranchCounterID := '2000_'+  MyBranchID.ToString +'_'+ MyCounterID.ToString;

       qryInsertCounter.Params.ClearValues;
       qryInsertCounter.Params[0].AsString := BranchCounterID;
       qryInsertCounter.Params[1].AsInteger := InitCounter;
       qryInsertCounter.Params[2].AsString := MyCounterName;
       qryInsertCounter.Params[3].AsInteger := MyBranchID;
       qryInsertCounter.ExecSQL;
       DataQModule.tblQueServices.Refresh;
       qryMyCounters.Refresh;

       CounterNumberEdit.Text := '';
       CmBoxCounters.ItemIndex := -1;
       MyCounterSelect := False;
       MyBranchSelect := False;
    end
    else
    begin
       ShowMessage('يجب إدخال رقم الخدمة أولاً');
       Exit;
    end;
end;

procedure TFormQueCounters.CancelBtnClick(Sender: TObject);
begin
    MyBranchSelect := False;
    MyCounterSelect := False;
    EditBtn.Enabled := False;
    SaveBtn.Enabled := False;
    DeleteBtn.Enabled := False;
    AddBtn.Enabled := False;
    CmBoxBranches.Enabled := True;
    
    CounterNumberEdit.Text := '';
    CmBoxCounters.ItemIndex := -1;

    qryMyCounters.Refresh;
end;

procedure TFormQueCounters.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TFormQueCounters.CmBoxBranchesSelect(Sender: TObject);
begin
     MyBranchSelect := False;
     MyCounterDBGrid.Enabled := True;
     
    var SS := CmBoxBranches.Text;
    if qryBranches.Locate('BranchName', SS, [loCaseInsensitive, loPartialKey]) then
    begin
        MyBranchSelect := True;
        MyBranchID:= qryBranches.FieldByName('BranchID').Value;
        MyBranchName := qryBranches.FieldByName('BranchName').Value;
        qryMyCounters.Open;
    end;
end;

procedure TFormQueCounters.CmBoxCountersSelect(Sender: TObject);
begin
     MyCounterSelect := False;

    var SS := CmBoxCounters.Text;
    if qryCounters.Locate('CounterName', SS, [loCaseInsensitive, loPartialKey]) then
    begin
        MyCounterSelect := True;
        MyCounterID:= qryCounters.FieldByName('CounterID').Value;
        MyCounterName := qryCounters.FieldByName('CounterName').Value;
    end;

    AddBtn.Enabled := True;
    CounterNumberEdit.Text := '';
end;

procedure TFormQueCounters.DeleteBtnClick(Sender: TObject);
begin
     if MessageDlg('Are you sure you want to DELETE it...?!',
                TMsgDlgType.mtWarning, mbYesNo, 0) = mrYes then
     begin
        with qryDeleteID do
        begin
           Params[0].AsString := MySelectID ;
           ExecSQL;
        end;
         CmBoxCounters.ItemIndex := -1;
         DeleteBtn.Enabled := False;
         EditBtn.Enabled := False;

         qryMyCounters.Open;
         DataQModule.tblQueServices.Refresh;
         qryMyCounters.Refresh;
     end;
end;

procedure TFormQueCounters.EditBtnClick(Sender: TObject);
begin
     SaveBtn.Enabled := True;
     CancelBtn.Enabled := True;

     AddBtn.Enabled := False;
     CmBoxBranches.Enabled := False;
end;

procedure TFormQueCounters.FormShow(Sender: TObject);
begin
    MyBranchSelect := False;
    MyCounterSelect := False;
    EditBtn.Enabled := False;
    SaveBtn.Enabled := False;
    DeleteBtn.Enabled := False;
    AddBtn.Enabled := False;
    CmBoxBranches.Enabled := True;
    
    CounterNumberEdit.Text := '';
    MyCounterDBGrid.Enabled := False;
    
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


    CmBoxCounters.Clear;
    qryCounters.Open;
    qryCounters.First;
    if qryCounters.RecordCount <> 0 then
      begin
           while NOT qryCounters.Eof do
              begin
                  CmBoxCounters.Items.Add(qryCounters.FieldByName('CounterName').AsString);
                  qryCounters.Next;
              end;
      end;
         CmBoxCounters.ItemIndex := -1;
end;

procedure TFormQueCounters.MyCounterDBGridCellClick(Column: TColumn);
begin
   if MyCounterDBGrid.Fields[0].Value <> NULL then
     begin
       MySelectID := MyCounterDBGrid.Fields[0].Value;
       DeleteBtn.Enabled := True;
       EditBtn.Enabled := True;
     end;
end;

procedure TFormQueCounters.SaveBtnClick(Sender: TObject);
begin
    if CounterNumberEdit.Text <> '' then
    begin
       AddBtn.Enabled := False;
       InitCounter := StrToInt(CounterNumberEdit.Text);
       BranchCounterID := '2000_'+  MyBranchID.ToString +'_'+ MyCounterID.ToString;

       qryUpdateID.Params.ClearValues;
       qryUpdateID.Params[0].AsString := BranchCounterID;
       qryUpdateID.Params[1].AsInteger := InitCounter;
       qryUpdateID.Params[2].AsString := MyCounterName;
       qryUpdateID.Params[3].AsString := MySelectID;
       qryUpdateID.ExecSQL;

       DataQModule.tblQueCounters.Refresh;
       qryMyCounters.Refresh;

       CounterNumberEdit.Text := '';
       CmBoxCounters.ItemIndex := -1;
       EditBtn.Enabled := True;
       DeleteBtn.Enabled := False;
       SaveBtn.Enabled := False;
       CmBoxBranches.Enabled := True;
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
