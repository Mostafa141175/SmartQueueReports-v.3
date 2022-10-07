unit UnitSQLSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, 
  Vcl.ComCtrls, UnitProjectUutils, System.UITypes, System.Win.Registry;

//  winapi.ActiveX, 
//  Data.Win.ADODB, Winapi.ADOInt, Winapi.OleDB,
//  Data.DB, System.Win.ComObj ;

type
  TFormSQLSetting = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBConnectBtn: TButton;
    OKBtn: TButton;
    imgAnyDAC: TImage;
    edtServer: TEdit;
    Label3: TLabel;
    imgConnect: TImage;
    Label4: TLabel;
    edtDB: TEdit;
    SQLUserEdit: TEdit;
    SQLPasswordEdit: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    OSAuthentCheckBox: TCheckBox;
    DisconnectBtn: TButton;
    
    procedure DBConnectBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure OSAuthentCheckBoxClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure DoSQLConnection;
    procedure DisconnectBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSQLSetting: TFormSQLSetting;

implementation

{$R *.dfm}

uses UnitDataModule, MainUnit, UnitGlobal, UnitDMReports {, TestUnit};

{ TFormSQLSetting }


procedure TFormSQLSetting.DisconnectBtnClick(Sender: TObject);
begin
     DataQModule.FDConnectionSQL.Connected := Not DataQModule.FDConnectionSQL.Connected;
end;

procedure TFormSQLSetting.DoSQLConnection;
begin
    with (DataQModule.FDConnectionSQL) do
    begin
       Close;
      // create temporary connection definition
      with Params do
      begin
         Clear;
         Add('DriverID=MSSQL');
         Add('MARS=Yes');
         Add('Server=' + ServerName);
         Add('Database=' + DatabaseName);
         Add('User_Name=' + LoginName); //SQLAdmin
         Add('Password=' + LoginPassword); //SQLadmin
         Add('OSAuthent=' + LoginOSAuthent);
      end;
      Open;
    end;

    with (DMReports.FDConnectionReports) do
    begin
      Close;
      // create temporary connection definition
      with Params do
      begin
         Clear;
         Add('DriverID=MSSQL');
         Add('MARS=Yes');
         Add('Server=' + ServerName);
         Add('Database=' + DatabaseName);
         Add('User_Name=' + LoginName); //SQLAdmin
         Add('Password=' + LoginPassword); //SQLadmin
         Add('OSAuthent=' + LoginOSAuthent);
      end;
      Open;
    end;


{   
  with (TestForm.fdSQLConn) do
  begin
    Close;
      // create temporary connection definition
      with Params do
      begin
         Clear;
         Add('DriverID=MSSQL');
         Add('MARS=Yes');
         Add('Server=' + ServerName);
         Add('Database=' + DatabaseName);
         Add('User_Name=' + LoginName); //SQLAdmin
         Add('Password=' + LoginPassword); //SQLadmin
         Add('OSAuthent=' + LoginOSAuthent);
      end;
    Open;
  end;    }
    
end;

procedure TFormSQLSetting.FormShow(Sender: TObject);
begin
//     OSAuthentCheckBox.Checked := True;
//     SQLUserEdit.Enabled := False;
//     SQLPasswordEdit.Enabled := False;
//     DisconnectBtn.Enabled := False;
//     DBConnectBtn.Enabled := True;
end;

procedure TFormSQLSetting.OKBtnClick(Sender: TObject);
begin
  {   if not DataQModule.FDConnectionSQL.Connected then
        TestConButtonClick(Sender);
                                      }
    reg := TRegistry.Create;
    with reg do
    try
       RootKey := HKEY_CURRENT_USER;
       reg.CreateKey ('Software\SmartQueue_V03') ;
       Key := 'HKEY_CURRENT_USER\Software\SmartQueue_V03' ;
       MainForm.SetRegistry(Reg, Key, 'Connection Setting');
       reg.WriteString ('Server', ServerName);
       reg.WriteString ('Database', DatabaseName) ;
       reg.WriteString ('OSAuthent', LoginOSAuthent) ;
//       reg.WriteString ('UserName', LoginName) ;
//       reg.WriteString ('Password', LoginPassword) ;

       if Length(LoginName) < Length(CipherKey) then
         begin
          for var I := Length(LoginName) to Length(CipherKey)-1 do
             LoginName := LoginName + #32;
             LoginName :=  XOR16Byte(StringToHex(LoginName), StringToHex(CipherKey));
             reg.WriteString ('UserName', LoginName) ;
         end;

       if Length(LoginPassword) < Length(CipherKey) then
         begin
          for var I := Length(LoginPassword) to Length(CipherKey)-1 do
             LoginPassword := LoginPassword + #32;
             LoginPassword :=  XOR16Byte(StringToHex(LoginPassword), StringToHex(CipherKey));
             reg.WriteString ('Password', LoginPassword) ;
         end;
    finally
      reg.Free;
    end;  
            
end;

procedure TFormSQLSetting.OSAuthentCheckBoxClick(Sender: TObject);
begin
    if not OSAuthentCheckBox.Checked then
       begin
           SQLUserEdit.Enabled := True;
           SQLPasswordEdit.Enabled := True;
           LoginOSAuthent := 'No';
       end
       else
       begin
           SQLUserEdit.Enabled := False;
           SQLPasswordEdit.Enabled := False;
           SQLUserEdit.Text := '';
           SQLPasswordEdit.Text := '';
           LoginOSAuthent := 'Yes';
       end;
end;

procedure TFormSQLSetting.DBConnectBtnClick(Sender: TObject);
begin
    if (edtServer.Text = '') or (edtDB.Text = '') then
       Exit
    else
    begin
       ServerName := edtServer.Text;
       DatabaseName := edtDB.Text;
    end;
       
      if (SQLUserEdit.Text) <> SQLUserName then
         LoginName := SQLUserEdit.Text
      else LoginName := SQLUserName;

      if (SQLPasswordEdit.Text) <> SQLPassword then
         LoginPassword := SQLPasswordEdit.Text 
      else LoginPassword := SQLPassword;

      if not OSAuthentCheckBox.Checked then
         LoginOSAuthent := 'No' else
         LoginOSAuthent := 'Yes';

      DoSQLConnection;

      if DataQModule.FDConnectionSQL.Connected then
         MessageDlg('Database Connection Successful...!', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbOK], 0);
end;



end.
