unit UnitBranchSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSelectForm = class(TForm)
    qryGroups: TFDQuery;
    LblGroups: TLabel;
    CmBoxGroups: TComboBox;
    LblBraches: TLabel;
    CmBoxBranches: TComboBox;
    CancelBtn: TButton;
    OkBtn: TButton;
    qryBranches: TFDQuery;
    SrcGroup: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OkBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure CmBoxBranchesSelect(Sender: TObject);
    procedure CmBoxGroupsSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelectForm: TSelectForm;

implementation

{$R *.dfm}

uses UnitDataModule, MainUnit, UnitGlobal;


procedure TSelectForm.CancelBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TSelectForm.CmBoxBranchesSelect(Sender: TObject);
begin
    var SS := CmBoxBranches.Text;

    if qryBranches.Locate('BranchName', SS, [loCaseInsensitive, loPartialKey]) then
    begin
        BranchSelected := True;
        BranchID := qryBranches.FieldByName('BranchID').Value;
//        BranchGroup := qryBranches.FieldByName('GroupID').Value;
        BranchName := qryBranches.FieldByName('BranchName').Value;
//        GroupName := qryBranches.FieldByName('GroupName').Value;
    end;
end;

procedure TSelectForm.CmBoxGroupsSelect(Sender: TObject);
begin
  if CmBoxGroups.Text <> 'ALL ...!' then
    begin
     var BGroup := CmBoxGroups.Text;
     if qryGroups.Locate('GroupName', BGroup, [loCaseInsensitive, loPartialKey]) then
        BranchGroup := qryGroups.FieldByName('GroupID').Value;

    
        CmBoxBranches.Clear;
        with qryBranches do
        begin
          var SQLText := ' SELECT DISTINCT * FROM [BranchRelationView] ' +
                   ' WHERE GroupID = :GroupID ' ;
            qryBranches.SQL.Clear;
            qryBranches.Params.Clear;
            qryBranches.Params.Add('GroupID', ftSmallint, ptInput);
            qryBranches.SQL.Add(SQLText);
            qryBranches.Params[0].AsSmallInt := BranchGroup;
            qryBranches.Open(SQLText);
        end;
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
    end
    else
    begin
       CmBoxBranches.Clear;

       qryBranches.SQL.Clear;
       qryBranches.Open(' SELECT DISTINCT  * FROM [BranchRelationView] ');
       qryBranches.First;
       if qryBranches.RecordCount <> 0 then
         begin
           while NOT qryBranches.Eof do
           begin
             CmBoxBranches.Items.Add(qryBranches.FieldByName('BranchName').AsString);
             qryBranches.Next;
           end;
         end;
       CmBoxBranches.ItemIndex := 0;
    end;
end;

procedure TSelectForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     CmBoxGroups.ItemIndex := -1;
     CmBoxBranches.ItemIndex := -1;
end;

procedure TSelectForm.FormShow(Sender: TObject);
begin
    OkBtn.SetFocus;
    CmBoxBranches.Clear;


    var SQLText := ' SELECT DISTINCT  * FROM [BranchRelationView] ';
//                   ' WHERE GroupID = (:GroupID) ' ;
   
//    CmBoxBranches.Items.Add('ALL ...!');

    qryBranches.SQL.Clear;
    qryBranches.Open(SQLText);
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
    CmBoxGroups.Items.Add('ALL ...!');
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
         CmBoxGroups.ItemIndex := 0;  
end;

procedure TSelectForm.OkBtnClick(Sender: TObject);
begin
     if BranchSelected then
        BranchSelected := False
     else
     begin
         ShowMessage('من فضلك اختار الفرع أولا');
         Exit;        
     end;

     if CmBoxBranches.Text = '' then
        SelectForm.ModalResult := mrCancel;
     
     CmBoxGroups.ItemIndex := -1;
     CmBoxBranches.ItemIndex := -1;
     ModalResult := mrOk;
end;

end.
