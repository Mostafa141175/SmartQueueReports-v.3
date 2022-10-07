unit UnitBranchRelations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBranchRelations = class(TForm)
    srcMyRelations: TDataSource;
    MyRelationDBGrid: TDBGrid;
    Panel1: TPanel;
    DeleteBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    CloseBtn: TButton;
    Panel2: TPanel;
    qryGroups: TFDQuery;
    CmBoxBranches: TComboBox;
    CmBoxGroups: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    qryBranches: TFDQuery;
    qryMyRelations: TFDQuery;
    srcGroups: TDataSource;
    qryInsertID: TFDQuery;
    qryDeleteID: TFDQuery;
    SaveBtn: TButton;
    CancelBtn: TButton;
    qryUpdateID: TFDQuery;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmBoxBranchesSelect(Sender: TObject);
    procedure CmBoxGroupsSelect(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure MyRelationDBGridCellClick(Column: TColumn);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBranchRelations: TFormBranchRelations;

  MyBranchID, MyGroupID : Integer;
  MyBranchName, MyGroupName, BranchRelationID, MySelectID : String;
  MyBranchSelect, MyGroupSelect, CanChange : Boolean;

implementation

{$R *.dfm}

uses MainUnit, UnitDataModule, UnitGlobal;

procedure TFormBranchRelations.AddBtnClick(Sender: TObject);
begin
    if (CmBoxBranches.Text <> '') or (CmBoxGroups.Text <> '') then
    begin
       AddBtn.Enabled := False;
       BranchRelationID := 'ID_'+ MyGroupID.ToString +'_'+ MyBranchID.ToString ;

       qryInsertID.Params.ClearValues;
       qryInsertID.Params[0].AsString := BranchRelationID;
       qryInsertID.Params[1].AsInteger := MyBranchID;
       qryInsertID.Params[2].AsInteger := MyGroupID;
       qryInsertID.ExecSQL;
       DataQModule.tblBranchRelation.Refresh;
       qryMyRelations.Refresh;

       CmBoxGroups.ItemIndex := -1;
       CmBoxBranches.ItemIndex := -1;
       MyGroupSelect := False;
       MyBranchSelect := False;
    end
    else
    begin
       ShowMessage('يجب إدخال رقم الخدمة أولاً');
       Exit;
    end;
end;

procedure TFormBranchRelations.CancelBtnClick(Sender: TObject);
begin
    MyBranchSelect := False;
    MyGroupSelect := False;
    EditBtn.Enabled := False;
    SaveBtn.Enabled := False;
    DeleteBtn.Enabled := False;
    AddBtn.Enabled := False;
    CanChange := False;
//    CmBoxBranches.Enabled := True;

    CmBoxGroups.ItemIndex := -1;
    CmBoxBranches.ItemIndex := -1;

    qryMyRelations.Refresh;
end;

procedure TFormBranchRelations.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TFormBranchRelations.CmBoxBranchesSelect(Sender: TObject);
begin
     MyBranchSelect := False;
     
    var SS := CmBoxBranches.Text;
    if qryBranches.Locate('BranchName', SS, [loCaseInsensitive, loPartialKey]) then
    begin
        MyBranchSelect := True;
        MyBranchID:= qryBranches.FieldByName('BranchID').Value;
        MyBranchName := qryBranches.FieldByName('BranchName').Value;
//        qryMyRelations.Open;
    end;
end;

procedure TFormBranchRelations.CmBoxGroupsSelect(Sender: TObject);
begin
     MyGroupSelect := False;
     MyRelationDBGrid.Enabled := True;

    if Not CanChange then
    begin
        var SS := CmBoxGroups.Text;
        if qryGroups.Locate('GroupName', SS, [loCaseInsensitive, loPartialKey]) then
        begin
            MyGroupSelect := True;
            MyGroupID:= qryGroups.FieldByName('GroupID').Value;
            MyGroupName := qryGroups.FieldByName('GroupName').Value;
            qryMyRelations.Open;
            CmBoxBranches.ItemIndex := -1;
        end;
    end;

    AddBtn.Enabled := True;
end;

procedure TFormBranchRelations.DeleteBtnClick(Sender: TObject);
begin
     if MessageDlg('Are you sure you want to DELETE it...?!',
                TMsgDlgType.mtWarning, mbYesNo, 0) = mrYes then
     begin
        with qryDeleteID do
        begin
           Params[0].AsString := MySelectID ;
           ExecSQL;
        end;
         CmBoxGroups.ItemIndex := -1;
         CmBoxBranches.ItemIndex := -1;
         DeleteBtn.Enabled := False;
         EditBtn.Enabled := False;

         qryMyRelations.Open;
         DataQModule.tblQueServices.Refresh;
         qryMyRelations.Refresh;
     end;
end;

procedure TFormBranchRelations.EditBtnClick(Sender: TObject);
begin
     SaveBtn.Enabled := True;
     CancelBtn.Enabled := True;
     CanChange := True;

     AddBtn.Enabled := False;
//     CmBoxBranches.Enabled := False;
end;

procedure TFormBranchRelations.FormShow(Sender: TObject);
begin
    MyBranchSelect := False;
    MyGroupSelect := False;
    EditBtn.Enabled := False;
    SaveBtn.Enabled := False;
    DeleteBtn.Enabled := False;
    AddBtn.Enabled := False;
    CanChange := False;
//    CmBoxBranches.Enabled := True;

    MyRelationDBGrid.Enabled := False;
    
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


    CmBoxGroups.Clear;
    qryGroups.Open;
    qryGroups.First;
    if qryGroups.RecordCount <> 0 then
      begin
      while NOT qryGroups.Eof do
         begin
             CmBoxGroups.Items.Add(qryGroups.FieldByName('GroupName').AsString);
             qryGroups.Next;
         end;
      end;
         CmBoxGroups.ItemIndex := -1;
end;

procedure TFormBranchRelations.MyRelationDBGridCellClick(Column: TColumn);
begin
   if MyRelationDBGrid.Fields[0].Value <> NULL then
     begin
       MySelectID := MyRelationDBGrid.Fields[0].Value;
       DeleteBtn.Enabled := True;
       EditBtn.Enabled := True;
     end;
end;

procedure TFormBranchRelations.SaveBtnClick(Sender: TObject);
begin
    if (CmBoxGroups.Text <> '') or (CmBoxBranches.Text <> '') then
    begin
       AddBtn.Enabled := False;
       BranchRelationID := 'ID_'+ MyGroupID.ToString +'_'+ MyBranchID.ToString ;

       qryUpdateID.Params.ClearValues;
       qryUpdateID.Params[0].AsString := BranchRelationID;
       qryUpdateID.Params[1].AsInteger := MyBranchID;
       qryUpdateID.Params[2].AsInteger := MyGroupID;
       qryUpdateID.ExecSQL;

       DataQModule.tblBranchRelation.Refresh;
       qryMyRelations.Refresh;

       CmBoxGroups.ItemIndex := -1;
       CmBoxBranches.ItemIndex := -1;
       EditBtn.Enabled := True;
       DeleteBtn.Enabled := False;
       SaveBtn.Enabled := False;

       CanChange := False;
//       CmBoxBranches.Enabled := True;
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
