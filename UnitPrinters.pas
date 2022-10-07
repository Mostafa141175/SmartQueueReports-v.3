unit UnitPrinters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, scControls, scGrids, scDBGrids;

type
  TFormPrinters = class(TForm)
    SrcPrinters: TDataSource;
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
  FormPrinters: TFormPrinters;

implementation

{$R *.dfm}

uses UnitDataModule, UnitQuePrinters;

procedure TFormPrinters.Button1Click(Sender: TObject);
begin
     FormQuePrinters.ShowModal;
end;

procedure TFormPrinters.CloseBtnClick(Sender: TObject);
begin
    Close;
end;

end.
