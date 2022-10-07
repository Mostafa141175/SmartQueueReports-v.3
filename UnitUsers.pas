unit UnitUsers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtDlgs, System.UITypes,
  UnitBcrypt,
  FireDAC.Phys.MSSQLDef, FireDAC.Phys, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  Vcl.Imaging.pngimage, Vcl.VirtualImage;

type
  TUsersForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DSUsers: TDataSource;
    LblUser: TLabel;
    LblPassword: TLabel;
    QryUsers: TFDQuery;
    ShowPassChkBox: TCheckBox;
    UserNameEdit: TEdit;
    PassEdit: TEdit;
    PassHintEdit: TEdit;
    LblPassHint: TLabel;
    SaveBtn: TButton;
    DeleteBtn: TButton;
    AddUserBtn: TButton;
    CancelBtn: TButton;
    QrySelelctUser: TFDQuery;
    ComBoxUserGroups: TComboBox;
    Label1: TLabel;
    qryUGroups: TFDQuery;
    LblPassword2: TLabel;
    Pass2Edit: TEdit;
    LblPassState: TLabel;
    Pass1Image: TVirtualImage;
    Pass2Image: TVirtualImage;
    LblUpChr: TLabel;
    LblLoChr: TLabel;
    LblNmrChr: TLabel;
    LblSpecialChr: TLabel;
    LblPassLength: TLabel;
    ImgUpChar: TVirtualImage;
    ImgLoChar: TVirtualImage;
    ImgNmrChar: TVirtualImage;
    ImgSpecialChar: TVirtualImage;
    ImgLengthChar: TVirtualImage;
    Label2: TLabel;
    EditBtn: TButton;
    qryEditUser: TFDQuery;
    CloseBtn: TButton;
    procedure CloseBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure PassEditChange(Sender: TObject);
    procedure ShowPassChkBoxClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AddUserBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DeleteBtnClick(Sender: TObject);
    procedure Pass2EditChange(Sender: TObject);
    procedure Pass2EditExit(Sender: TObject);
    procedure Pass1ImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Pass1ImageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Pass2ImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Pass2ImageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsersForm: TUsersForm;

  CanModifyUser : Boolean;

implementation

{$R *.dfm}

uses UnitDataModule, MainUnit, UnitGlobal;

Function GetValidatePassword(aPassword: String):Boolean;
Begin
   var PassLenChars := False;
   var PassUpChars := False;
   var PassLoChars := False; 
   var PassNmrChars := False; 
   var PassSpecialChars := False;
//   var aPassword := PassEdit.Text ;

   If Length(aPassword) >= 6 then PassLenChars := True;
     For var I := 1 to Length(aPassword) Do
       Begin
         var TempChr := Copy(aPassword, I, 1);
          If Pos(TempChr, PassNumr) <> 0 then  PassNmrChars := True;
           If Pos(TempChr, PassCharUp) <> 0 Then  PassUpChars := True;
          If Pos(TempChr, PassCharLo) <> 0 Then  PassLoChars := True;
         If Pos(TempChr, SpecialChar) <> 0 Then  PassSpecialChars := True;
       End;

     
     if PassUpChars = True then UsersForm.ImgUpChar.ImageIndex := 51
     else UsersForm.ImgUpChar.ImageIndex := 50;

     if PassLoChars = True then UsersForm.ImgLoChar.ImageIndex := 51
     else UsersForm.ImgLoChar.ImageIndex := 50;

     if PassNmrChars = True then UsersForm.ImgNmrChar.ImageIndex := 51
     else UsersForm.ImgNmrChar.ImageIndex := 50;

     if PassSpecialChars = True then UsersForm.ImgSpecialChar.ImageIndex := 51
     else UsersForm.ImgSpecialChar.ImageIndex := 50;

     if PassLenChars = True then UsersForm.ImgLengthChar.ImageIndex := 51
     else UsersForm.ImgLengthChar.ImageIndex := 50;
End;


procedure TUsersForm.AddUserBtnClick(Sender: TObject);
begin
     SaveBtn.Enabled := True;
     UserNameEdit.Enabled := True;
     PassEdit.Enabled := True;
     Pass2Edit.Enabled := True;
     PassHintEdit.Enabled := True;
     ComBoxUserGroups.Enabled := True;
     
     UserNameEdit.Text := '';
     PassEdit.Text := '';
     Pass2Edit.Text := '';
     PassHintEdit.Text := '';
     ComBoxUserGroups.Text := '';
     ShowPassChkBox.Checked := False;
     LblPassState.Caption := '';
     LblPassState.Font.Color := clWindowText;
end;

procedure TUsersForm.CancelBtnClick(Sender: TObject);
begin
     SaveBtn.Enabled := False;
     EditBtn.Enabled := False;
     UserNameEdit.Enabled := False;
     PassEdit.Enabled := False;
     Pass2Edit.Enabled := False;
     PassHintEdit.Enabled := False;
     ComBoxUserGroups.Enabled := False;
     
     UserNameEdit.Text := '';
     PassEdit.Text := '';
     Pass2Edit.Text := '';
     PassHintEdit.Text := '';
     ComBoxUserGroups.Text := '';
     ShowPassChkBox.Checked := False;
     LblPassState.Caption := '';
     LblPassState.Font.Color := clWindowText;
end;

procedure TUsersForm.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TUsersForm.DBGrid1CellClick(Column: TColumn);
begin
     DeleteBtn.Enabled := True;
     EditBtn.Enabled := True;
     with QrySelelctUser do
     begin
          SQL.Clear;
          SQL.Add('Select * From Users');
          SQL.Add('WHERE (UserName = :xUser)');
          ParamByName('xUser').ParamType := ptInput;
          ParamByName('xUser').DataType := ftString;
          ParamByName('xUser').Value := LowerCase(DataQModule.TblUsersUserName.AsString);
          QrySelelctUser.Open;
     end;

     UserNameEdit.Text := QrySelelctUser.FieldByName('UserName').Value;
//     PassEdit.Text := QryChangeUser.FieldByName('PasswordHash').Value;
     PassHintEdit.Text := QrySelelctUser.FieldByName('PasswordHint').Value;
     QrySelelctUser.Close;
end;

procedure TUsersForm.DeleteBtnClick(Sender: TObject);
begin
     if MessageDlg('Are you sure you want to DELETE user...?!',
                TMsgDlgType.mtWarning, mbYesNo, 0) = mrYes then
     begin
        with QrySelelctUser do
          begin
              SQL.Clear;
              SQL.Add('DELETE FROM Users');
              SQL.Add('WHERE UserName = :xUser');
              ParamByName('xUser').ParamType := ptInput;
              ParamByName('xUser').DataType := ftString;
              ParamByName('xUser').Value := LowerCase(DataQModule.TblUsersUserName.AsString);
              ExecSQL ;
//          QryChangeUser.Open;
//          QryChangeUser.Close;
          end;
     end;

     DataQModule.TblUsers.Refresh;
     CancelBtnClick(Sender);
end;

procedure TUsersForm.EditBtnClick(Sender: TObject);
begin
     SaveBtn.Enabled := True;
     UserNameEdit.Enabled := True;
     PassEdit.Enabled := True;
     Pass2Edit.Enabled := True;
     PassHintEdit.Enabled := True;
     ComBoxUserGroups.Enabled := True;

     CanModifyUser := True;

end;

procedure TUsersForm.FormShow(Sender: TObject);
begin
     SaveBtn.Enabled := False;
     UserNameEdit.Enabled := False;
     PassEdit.Enabled := False;
     Pass2Edit.Enabled := False;
     PassHintEdit.Enabled := False;
     DeleteBtn.Enabled := False;
     ComBoxUserGroups.Enabled := False;
     
     UserNameEdit.Text := '';
     PassEdit.Text := '';
     Pass2Edit.Text := '';
     PassHintEdit.Text := '';
     ComBoxUserGroups.Text := '';
     ShowPassChkBox.Checked := False;
     LblPassState.Caption := '';
     LblPassState.Font.Color := clWindowText;

     CanModifyUser := False;


    ComBoxUserGroups.Clear;
    qryUGroups.Open;
    qryUGroups.First;
    if qryUGroups.RecordCount <> 0 then
      begin
           while NOT qryUGroups.Eof do
              begin
                  ComBoxUserGroups.Items.Add(qryUGroups.FieldByName('UserGroupName').AsString);
                  qryUGroups.Next;
              end;
      end;
         ComBoxUserGroups.ItemIndex := -1;

     
end;

procedure TUsersForm.Pass1ImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    Pass1Image.ImageIndex := 31;
     if PassEdit.PasswordChar = '*' then
        PassEdit.PasswordChar := #0; 
end;

procedure TUsersForm.Pass1ImageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     Pass1Image.ImageIndex := 32;
     if PassEdit.PasswordChar = #0 then
        PassEdit.PasswordChar := '*';
end;

procedure TUsersForm.SaveBtnClick(Sender: TObject);
var
  User, Pass, PwrdHint : String;
  UGroup, UserID : Integer;
begin
    if PassEdit.Text <> Pass2Edit.Text then
    begin
         ShowMessage('كلمة السر غير مطابقة');
         Exit ;
    end;

  {  if not (ValidatePassword(PassEdit.Text)) and (ValidatePassword(Pass2Edit.Text)) then
       begin
         ShowMessage('Password Not Valid...!' +#13+ 'please type the correct characters');
         Exit ;
       end;    }
    

     if not DataQModule.TblUsers.Active then
        DataQModule.TblUsers.Active;

//     UserID := DataQModule.TblUsers.RecordCount + 1; 
     User := LowerCase(UserNameEdit.Text);
     Pass := TBCrypt.HashPassword(PassEdit.Text);
     PwrdHint := PassHintEdit.Text;
     UGroup := ComBoxUserGroups.ItemIndex;

 
     if CanModifyUser then
       if (PassEdit.Text <> '') and (Pass2Edit.Text <> '')  
         and (ComBoxUserGroups.Text <> '') then
           begin
             CanModifyUser := False;
              with qryEditUser do
                begin
                  qryEditUser.Params[3].Value := DataQModule.TblUsersUserID.AsInteger;
                  qryEditUser.Params[0].AsString := Pass;
                  qryEditUser.Params[1].AsString := PwrdHint;
                  qryEditUser.Params[2].AsDateTime := Now;
                  qryEditUser.ExecSQL;
                  DataQModule.TblUsers.Refresh;

                  CancelBtnClick(Sender);
                  Exit;   
                end;
           end
           else
           begin
              MessageDlg('من فضلك ادخل جميع البيانات * المطلوبة اولا', 
                    TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0 );
           end;


     
     if (User <> '') and (PassEdit.Text <> '') and (Pass2Edit.Text <> '')  
         and (ComBoxUserGroups.Text <> '') then
     begin
//          QryUsers.Params[0].AsInteger := UserID;
          QryUsers.Params[0].AsString := User;
          QryUsers.Params[1].AsString := Pass;
          QryUsers.Params[2].AsString := PwrdHint;
          QryUsers.Params[3].AsInteger := UGroup;
          QryUsers.Params[4].AsDateTime := Now;
          QryUsers.ExecSQL;

          DataQModule.TblUsers.Refresh;
     end else
     begin
          MessageDlg('من فضلك ادخل جميع البيانات * المطلوبة اولا', 
                    TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0 );
     end;


     
//     UserNameEdit.Text := '';
//     PassEdit.Text := '';
//     PassHintEdit.Text := '';
//     ShowPassChkBox.Checked := True;

     CancelBtnClick(Sender);
     
end;

procedure TUsersForm.Pass2EditChange(Sender: TObject);
begin
     GetValidatePassword(Pass2Edit.Text);
     ShowPassChkBoxClick(Sender);
end;

procedure TUsersForm.Pass2EditExit(Sender: TObject);
begin
     if Pass2Edit.Text <> PassEdit.Text then
    begin
        LblPassState.Caption := 'كلمة السر غير مطابقة';
        LblPassState.Font.Color := clRed; 
    end
    else
    begin
        LblPassState.Caption := 'كلمة السرمطابقة';
        LblPassState.Font.Color := clBlue;
    end;
end;

procedure TUsersForm.PassEditChange(Sender: TObject);
begin
     GetValidatePassword(PassEdit.Text);
     ShowPassChkBoxClick(Sender);
end;

procedure TUsersForm.ShowPassChkBoxClick(Sender: TObject);
begin
     if not ShowPassChkBox.Checked then
     begin
        PassEdit.PasswordChar := '*';
        Pass2Edit.PasswordChar := '*';
     end
     else
     begin
        PassEdit.PasswordChar := #0;
        Pass2Edit.PasswordChar := #0;
     end;
end;

procedure TUsersForm.Pass2ImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     Pass2Image.ImageIndex := 31;
     if Pass2Edit.PasswordChar = '*' then
        Pass2Edit.PasswordChar := #0;
end;

procedure TUsersForm.Pass2ImageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     Pass2Image.ImageIndex := 32;
     if Pass2Edit.PasswordChar = #0 then
        Pass2Edit.PasswordChar := '*';
end;

end.
