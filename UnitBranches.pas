unit UnitBranches;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,  System.Win.Registry,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtDlgs;

type
  TFormBranches = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    BranchDataSource: TDataSource;
    Button1: TButton;
    Panel1: TPanel;
    DeleteBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    CloseBtn: TButton;
    SaveBtn: TButton;
    CancelBtn: TButton;
    BranchIDEdit: TEdit;
    BranchNameEdit: TEdit;
    procedure CloseBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBranches: TFormBranches;


implementation

{$R *.dfm}

uses  UnitDataModule, UnitBranchRelations ;



procedure TFormBranches.AddBtnClick(Sender: TObject);
begin
    if (BranchNameEdit.Text <> '') or (BranchIDEdit.Text <> '') then
    begin
       AddBtn.Enabled := False;

     {  qryInsertID.Params.ClearValues;
       qryInsertID.Params[0].AsString := BranchRelationID;
       qryInsertID.Params[1].AsInteger := MyBranchID;
       qryInsertID.Params[2].AsInteger := MyGroupID;
       qryInsertID.ExecSQL;
       
       DataQModule.TblBranches.Refresh;
       qryMyRelations.Refresh;

       BranchNameEdit.Text := '';
       BranchIDEdit.Text := '';    }
    end
    else
    begin
       ShowMessage('يجب إدخال رقم الخدمة أولاً');
       Exit;
    end;
end;

procedure TFormBranches.Button1Click(Sender: TObject);
begin
    FormBranchRelations.ShowModal; 
end;

procedure TFormBranches.CloseBtnClick(Sender: TObject);
begin
    Close;
end;

end.
