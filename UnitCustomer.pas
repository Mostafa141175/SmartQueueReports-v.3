unit UnitCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ExtDlgs, Data.DB;

type
  TFormCustomer = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    CustNameDBEdit: TDBEdit;
    DBNavigator2: TDBNavigator;
    CustEnNameDBEdit: TDBEdit;
    LogoDBImage: TDBImage;
    LogoBtn: TButton;
    PictureDlg: TOpenPictureDialog;
    CustomerDataSource: TDataSource;
    Label2: TLabel;
    LocationDBEdit: TDBEdit;
    CloseBtn: TButton;
    DeleteBtn: TButton;
    procedure CloseBtnClick(Sender: TObject);
    procedure LogoBtnClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCustomer: TFormCustomer;

implementation


uses  UnitDataModule;


{$R *.dfm}

procedure TFormCustomer.DeleteBtnClick(Sender: TObject);
begin
     DataQModule.TblCustomer.Edit;
     DataQModule.TblCustomerCustomerLogo.Clear;
     DataQModule.TblCustomer.Post;
     DataQModule.TblCustomer.Refresh;
end;

procedure TFormCustomer.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TFormCustomer.LogoBtnClick(Sender: TObject);
begin
     IF PictureDlg.Execute Then
        LogoDBImage.Picture.LoadFromFile(PictureDlg.FileName) ;
end;

end.
