unit UnitServices;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, scControls, scGrids, scDBGrids;

type
  TFormServices = class(TForm)
    SrcService: TDataSource;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    CloseBtn: TButton;
    scDBGrid1: TscDBGrid;
    Button1: TButton;
    procedure CloseBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServices: TFormServices;

implementation

{$R *.dfm}

uses UnitDataModule, unitQueServices;

procedure TFormServices.Button1Click(Sender: TObject);
begin
     FormQueServices.ShowModal;
end;

procedure TFormServices.CloseBtnClick(Sender: TObject);
begin
    Close;
end;

end.
