unit UnitCounters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, scControls, scGrids,
  scDBGrids;

type
  TFormCounters = class(TForm)
    SrcCounters: TDataSource;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    scDBGrid1: TscDBGrid;
    Button1: TButton;
    Panel1: TPanel;
    DeleteBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    CloseBtn: TButton;
    SaveBtn: TButton;
    CancelBtn: TButton;
    procedure CloseBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCounters: TFormCounters;

implementation

{$R *.dfm}

uses UnitDataModule, UnitQueCounters;

procedure TFormCounters.Button1Click(Sender: TObject);
begin
    FormQueCounters.ShowModal; 
end;

procedure TFormCounters.CloseBtnClick(Sender: TObject);
begin
    Close;
end;

end.
