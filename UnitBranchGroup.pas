unit UnitBranchGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormBranchGroup = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    srcBranchGroups: TDataSource;
    Panel1: TPanel;
    DeleteBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    CloseBtn: TButton;
    SaveBtn: TButton;
    CancelBtn: TButton;
    GroupIDEdit: TEdit;
    GroupNameEdit: TEdit;
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBranchGroup: TFormBranchGroup;

implementation

{$R *.dfm}

uses  UnitDataModule;

procedure TFormBranchGroup.CloseBtnClick(Sender: TObject);
begin
    Close;
end;

end.
