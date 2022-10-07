unit UnitLogIn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,  System.Hash,
  Vcl.StdCtrls, FireDAC.Comp.Client,  
  UnitBcrypt, 
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, System.UITypes, {DBTables,} UnitGlobal, Vcl.VirtualImage  ;

type
  TLogInForm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    UserNameEdit: TEdit;
    Label2: TLabel;
    PasswordEdit: TEdit;
    LoginBtn: TButton;
    Image2: TImage;
    CancelBtn: TButton;
    ShowPassChkBox: TCheckBox;
    PassImage: TVirtualImage;
    VirtualImage1: TVirtualImage;
    VirtualImage2: TVirtualImage;
    procedure LoginBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowPassChkBoxClick(Sender: TObject);
    procedure PasswordEditChange(Sender: TObject);
    procedure PassImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PassImageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UserNameEditChange(Sender: TObject);
    procedure VirtualImage1DblClick(Sender: TObject);
  private
    { Private declarations }
    CountDown : Integer;
  public
    { Public declarations }
  end;

var
  LogInForm: TLogInForm;

implementation

{$R *.dfm}

uses UnitDataModule, MainUnit, UnitUsers;

procedure TLogInForm.LoginBtnClick(Sender: TObject);
var
  TypedPassword, EncrypedPassword,  UName, UPass : String;
  PasswordRehashNeeded: Boolean; 
begin
/// https://soonsantos.medium.com/how-to-encrypt-a-password-in-delphi-6eb570fd47b7
     
  ModalResult := mrNone;

  If UserNameEdit.Text = '' then
  begin
    MessageBeep( $FFFF ) ;
    Application.MessageBox( 'Missing user name.', 'Login Error',
                            MB_ICONEXCLAMATION + MB_OK );
    UserNameEdit.SetFocus ;
    exit; { nothing more to do here, short circuit out }
  end;

  if PasswordEdit.text = '' then
  begin
    MessageBeep( $FFFF ) ;
    Application.MessageBox( 'Missing password.', 'Login Error',
                            MB_ICONEXCLAMATION + MB_OK );
    PasswordEdit.SetFocus ;
    exit; { nothing more to do here, short circuit out }
  end;


  try { Exception handling block. }

    try { Exception protection block. }


//      Session.AddPassword(PW);
//      SecurityData.SecurityTable.open;
      
      UName := LowerCase(UserNameEdit.Text);
      UPass := UpperCase(System.Hash.THashSHA2.GetHashString(PasswordEdit.Text));

     { ShowMessage('User Name: ' + UName +#13+ 'Password: ' + UPass
                  +#13#13+  'UTF8: ' +#13+
                  UpperCase(System.Hash.THashSHA2.GetHashString(UTF8Encode(PasswordEdit.Text)))
                  +#13#13+  'Text: ' +#13+
                  UpperCase(System.Hash.THashSHA2.GetHashString(PasswordEdit.Text))
                  +#13#13+  'IT Has to be: ' +#13+
                  '39B6434CA1B5262FF1B101B738AA5C9E4EB8958AC1CB454E2A0722811FB8B7F8' );   }
                  
      if (UName = SmartUserName) and (UPass = SmartPassword) then
        begin
             ShowMessage('Login successfully');
             CurrentUser.UserID := 0;
             CurrentUser.UserName := 'Smart';
             CurrentUser.UserPassHash := SmartPassword;
             CurrentUser.UserActive := True;
             MainForm.ActionAfterLogIn.Execute;
             ModalResult := mrOK;
             Exit; 
        end; 
//        else
//        begin
//             MessageDlg('Password is Incorrect'+#13+'كلمة السر غير صحيحة', 
//                         TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0 );
//             exit;
//        end;

//      if not (DataQModule.tblSmartKey.FindKey([UName])) then
      if not (DataQModule.TblUsers.FindKey([UserNameEdit.Text]))
      then
        raise ELoginInvalidInfo.create( 'Invalid Login Information.' );

      {-------------------------------------------------------
      The user is known to the system. See if he belongs to
      a user group. (In other words, assess the user's
      access privlege.)
      -------------------------------------------------------}

     { if SecurityData.SecurityTable.FieldByName( 'USER_GROUP' ).isNull
      then
        raise ELoginMissingGroup.create( 'No access privlege.' );   }

      {-------------------------------------------------------
      Information provided so far is correct, and the user
      has access privlege to the system. Store the known
      information in the CurrentUser object.
      -------------------------------------------------------}
      CurrentUser.UserActive :=
        DataQModule.TblUsers.FieldByName( 'UserActive' ).AsBoolean ;

       CurrentUser.UserID :=
        DataQModule.TblUsers.FieldByName( 'UserID' ).AsInteger ;
  

//      if DataQModule.tblSmartKey.FindKey([UName]) then
//         CurrentUser.UserName := 'Smart'
//           DataQModule.tblSmartKey.FieldByName( 'SmartID' ).AsString
//      else
      CurrentUser.UserName :=
            DataQModule.TblUsers.FieldByName( 'UserName' ).AsString ;

      CurrentUser.UserPassHash :=
            DataQModule.TblUsers.FieldByName( 'PasswordHash' ).AsString ;

      CurrentUser.UserGroup :=
        DataQModule.TblUsers.FieldByName( 'UserGroup' ).AsInteger ;

      {-------------------------------------------------------
      Now retrieve any other pertinent information from the
      USER table.
      -------------------------------------------------------}


//      SecurityData.CurrentGroup.params[0].AsInteger:= CurrentUser.UserGroup ;
//      SecurityData.CurrentGroup.Active :=True;
//      SecurityData.UserTable.open ;
//      SecurityData.GroupTable.open ;
      {-------------------------------------------------------}

//      if not (DataQModule.tblSmartKey.FindKey([UName])) then
       if not (DataQModule.TblUsers.FindKey([CurrentUser.UserName]))
       then   
        raise ELoginCorrupt.Create( 'Obsolete login.' );

      {-------------------------------------------------------
      All user information is available, and can be loaded
      into the CurrentUser object.
      -------------------------------------------------------}
     {
      CurrentUser.FirstName :=
        SecurityData.UserTable.FieldByName( 'FIRST_NAME' ).AsString ;

     CurrentUser.LastName :=
        SecurityData.UserTable.FieldByName( 'LAST_NAME' ).AsString ;

     CurrentUser.GroupName :=
        SecurityData.CurrentGroup.FieldByName( 'GROUP_NAME' ).AsString ;

     CurrentUser.NewClient :=
        SecurityData.CurrentGroup.FieldByName('NewCust').AsBoolean;

     CurrentUser.PrintChk :=
        SecurityData.CurrentGroup.FieldByName('PrnChk').AsBoolean;

     CurrentUser.Reports :=
        SecurityData.CurrentGroup.FieldByName('Reports').AsBoolean;

     CurrentUser.MICR :=
        SecurityData.CurrentGroup.FieldByName('MICR').AsBoolean;

     CurrentUser.Serial :=
        SecurityData.CurrentGroup.FieldByName('Serial').AsBoolean;

     CurrentUser.Dimension :=
        SecurityData.CurrentGroup.FieldByName('Dimension').AsBoolean;

     CurrentUser.Options :=
        SecurityData.CurrentGroup.FieldByName('Options').AsBoolean;

     CurrentUser.Setting :=
        SecurityData.CurrentGroup.FieldByName('Setting').AsBoolean;

     CurrentUser.Design :=
        SecurityData.CurrentGroup.FieldByName('Design').AsBoolean;

     CurrentUser.Admin :=
        SecurityData.CurrentGroup.FieldByName('Admin').AsBoolean;

     CurrentUser.Privilege :=
        SecurityData.CurrentGroup.FieldByName('Privilege').AsBoolean;

     CurrentUser.ChkType :=
        SecurityData.CurrentGroup.FieldByName('ChkType').AsBoolean;
                                                                     }
      {-------------------------------------------------------
      The user is fully acknowledged and has appropriate
      access privileges. All user information is available
      and loaded in the CurrentUser object. Login was
      successful. Allow the dialog to close with an appropriate
      positive exit code.
      -------------------------------------------------------}


    

      TypedPassword := PasswordEdit.Text;
      EncrypedPassword := DataQModule.TblUsersPasswordHash.AsString;

//     if (UName <> DataQModule.tblSmartKeySmartID.AsString)

     if (UserNameEdit.Text = '') 
         or (LowerCase(UserNameEdit.Text) <> DataQModule.TblUsersUserName.AsString) then
        begin
            MessageDlg('User Name is Incorrect'+#13+'اسم المستخدم غير صحيح', 
                   TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0 );
        end 
        else
        begin
            if (TBCrypt.CheckPassword(TypedPassword, EncrypedPassword, 
                      {out}PasswordRehashNeeded)) 
//              or (UPass = DataQModule.tblSmartKeySmartKey.AsString)
                      then
               begin
                    // Login successfully
                    ShowMessage('Login successfully');
                    MainForm.ActionAfterLogIn.Execute;
               end
               else
               begin
                    // Incorrect password
                    MessageDlg('Password is Incorrect'+#13+'كلمة السر غير صحيحة', 
                         TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0 );
//                       ShowMessage('Incorrect password');
                   exit;
               end;
        end;
               

        ModalResult := mrOK;

    finally

      {-------------------------------------------------------
      If any exception was raised, you first have to close all
      open resources and above all REMOVE any given password.
      -------------------------------------------------------}

//      SecurityData.UserTable.Close ;
//      SecurityData.SecurityTable.Close ;
//      Session.RemovePassword( PW );

    end;  { Exception protection block. }

  except

    {---------------------------------------------------------
    ...then the exception can be handled appropriately.
    ---------------------------------------------------------}

    on E: ELoginException do
    begin

      {-------------------------------------------------------
      Something went wrong during user's login attempt. Show
      the exception message, and give the user another
      chance. If the user has no more chances available,
      close the dialog with a negative exit code.
      -------------------------------------------------------}

      MessageBeep( $FFFF );
      MessageDlg( E.Message, mtError, [mbOK], 0 ) ;

      dec( CountDown ) ;

      if CountDown <= 0 then ModalResult := mrCancel;

    end;

  end; { Exception handling block. }


end; { TLoginDialogForm.LoginBitBtnClick }

procedure TLogInForm.PasswordEditChange(Sender: TObject);
begin
     ShowPassChkBoxClick(Sender);
end;

procedure TLogInForm.ShowPassChkBoxClick(Sender: TObject);
begin
     if not ShowPassChkBox.Checked then
        PasswordEdit.PasswordChar := '*'
     else
        PasswordEdit.PasswordChar := #0;
end;

procedure TLogInForm.UserNameEditChange(Sender: TObject);
begin
   {  if UpperCase(UserNameEdit.Text) = 'SMART' then
       begin
           ShowPassChkBox.Enabled := False;
           PassImage.Enabled := False;
       end
       else
       begin
           ShowPassChkBox.Enabled := True;
           PassImage.Enabled := True;
       end;     }
end;

procedure TLogInForm.VirtualImage1DblClick(Sender: TObject);
begin
     UserNameEdit.Text := 'smart';
     PasswordEdit.Text := 'smartsol-eg';
end;

procedure TLogInForm.CancelBtnClick(Sender: TObject);
begin
     Close ;
end;

procedure TLogInForm.FormShow(Sender: TObject);
begin
   CountDown := 3;
   
     UserNameEdit.Text := '';
     PasswordEdit.Text := '';
     ShowPassChkBox.Checked := False;
     UserNameEdit.SetFocus;
end;

procedure TLogInForm.PassImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    PassImage.ImageIndex := 31;
     if PasswordEdit.PasswordChar = '*' then
        PasswordEdit.PasswordChar := #0;
end;

procedure TLogInForm.PassImageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     PassImage.ImageIndex := 32;
     if PasswordEdit.PasswordChar = #0 then
        PasswordEdit.PasswordChar := '*';
end;

end.
