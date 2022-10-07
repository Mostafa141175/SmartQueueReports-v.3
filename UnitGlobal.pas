unit UnitGlobal;

interface

uses system.Classes, Vcl.Forms, System.Sysutils,
     DECCipherBase, DECCipherModes, DECCipherFormats, DECCiphers, DECHash;

type

  TApplicationUser = class( TComponent )
  private
    FUserActive: Boolean;
    FUserID    : Integer;
    FUserName  : string;
    FUserPass  : String;
    FUserGroup : Integer;

    
//    FFirstName: string;
//    FLastName: string;
//    FGroupName: string;
{    
    FNewClient : Boolean;
    FPrintChk  : Boolean;
    FReports   : Boolean;
    FMICR      : Boolean;
    FSerial    : Boolean;
    FDimension : Boolean;
    FOptions   : Boolean;
    FSetting   : Boolean;
    FDesign    : Boolean;
    FAdmin     : Boolean;
    FPrivilege : Boolean;
    FChkType   : Boolean;   }

  Public
    property UserID: Integer read FUserID write FUserID;
    property UserName: string read FUserName write FUserName;
    property UserPassHash: string read FUserPass write FUserPass;
    property UserGroup: Integer read FUserGroup write FUserGroup;
    property UserActive: Boolean read FUserActive write FUserActive;  

//    property FirstName: string read FFirstName write FFirstName;
//    property LastName: string read FLastName write FLastName;
//    property GroupName: string read FGroupName write FGroupName;

    {
    property NewClient : Boolean read FNewClient write FNewClient;
    property PrintChk  : Boolean read FPrintChk write FPrintChk;
    property Reports   : Boolean read FReports write FReports;
    property MICR      : Boolean read FMICR write FMICR;
    property Serial    : Boolean read FSerial write FSerial;
    property Dimension : Boolean read FDimension write FDimension;
    property Options   : Boolean read FOptions write FOptions;
    property Setting   : Boolean read FSetting write FSetting;
    property Design    : Boolean read FDesign write FDesign;
    property Admin     : Boolean read FAdmin write FAdmin;
    property Privilege : Boolean read FPrivilege write FPrivilege;
    property ChkType   : Boolean read FChkType write FChkType;

                                                             }

  End;
  { Generic application exception. }
  EApplicationException = class( Exception );

  { Login exceptions. }
  ELoginException = class( EApplicationException);
  ELoginInvalidInfo = class( ELoginException );
  ELoginCorrupt = class( ELoginException );
  ELoginMissingGroup = class( ELoginException );
//  EDataBaseError = class( ELoginException );

 Var
  CurrentUser: TApplicationUser;

  DBMajor, DBMinor, DBRelease, DBBuild : Integer;

  DBDateVer, DBEver, GUIver, KEY,
  SQLMajor, SQLMainor, SQLRelease, SQLVersion,
  GUIMajor, GUIMainor, GUIRelease, GUIVersion, aMessage,
  ServerName, DatabaseName, LoginName, LoginPassword, LoginOSAuthent : String;

 Const 
   PW ='FaaF030265';

   MainFormCaption = 'SmartQueue Reports';
//   DatabaseName = 'SmartQueue';
   SQLUserName = 'SQLAdmin';
   SQLPassword = 'SQLadmin';

//   SmartID = '50C9BDA3D3';   //Smart
//   SmartKey = 'FEC79FD10D08E8B03F376C3D814F65917D916BFC986B4217AD149821D7B7CA3B'; //Be$mart
   SmartUserName = 'smart' ; // smart
   SmartPassword = '39B6434CA1B5262FF1B101B738AA5C9E4EB8958AC1CB454E2A0722811FB8B7F8'; // 'smartsol-eg';


   MAJ_VER  = 03; // Major version nr.
   MIN_VER  = 00; // Minor version nr.
   REL_VER  = 00; // Release nr.
   BLD_VER  = 03; // Build nr.
   DATE_VER = 'August 2022'; // Month version

   RepVersion = '02.02.00.01';
   
   
   CipherKey = 'Smart_Solutions';
   Seed = 'SaltValueForThePasswordIsSmartSolutions';
   IV = #77#111#115#116#97#102#97#33; // = Mostafa!

   SpecialChar = ('!#$%&*+,-.:;<=>?@_');
   PassCharUp  = ('ABCDEFGHIJKLMNOPQRSTUVWXYZ');
   PassCharLo  = ('abcdefghijklmnopqrstuvwxyz');
   PassNumr    = ('1234567890');                               
    
   Function ChkPwd(S :String):Boolean;
   Function ValidatePassword(aPassword: String):Boolean;
   Function ValidateSQLDBandSoftwareVersions(aSQLver, aSWver: String; var ErrorMessage: String): Boolean;
   Function Hex2Int(HexNum: string): LongInt;
   Function XOR16Byte(StrByte : String; StrKey : String) : String;
   Function HexToString(H: String): String;
   Function StringToHex(S: String): String;
   Function EncryptAndDecrypt(AText: String): String;
  
  
Implementation


Function HexToString(H: String): String;
begin
  Result:= '';
  for var I := 1 to length (H) div 2 do
    Result:= Result+Char(StrToInt('$'+Copy(H,(I-1)*2+1,2)));
end;

Function StringToHex(S: String): String;
begin
  Result:= '';
  for var I := 1 to Length (S) do
    Result := Result + IntToHex(Ord(S[I]),2);
end;


Function Hex2Int(HexNum: string): LongInt;
begin
   Result := StrToInt('$' + HexNum) ;
end;


Function XOR16Byte(StrByte : String; StrKey : String) : String;
var I, SRInt, PosByte : Integer ;
    TempByte, TempKey : String ;
begin
     Result := '';
     TempByte := StrByte;
     TempKey := StrKey;
     PosByte := 1 ;

     for I := 1 to Length(CipherKey) do
//     for I := 1 to Length(StrByte) do
       begin
            TempByte := Copy(StrByte, PosByte, 2);
            TempKey := Copy(StrKey, PosByte, 2);
//            I := I + 2 ;
            if TempByte <> '' then
            begin
                 SRInt :=  (Hex2Int(TempByte)) XOR (Hex2Int(TempKey)) ;
                 PosByte := PosByte + 2 ;
                 Result := Result + IntToHex(SRInt, 2);
            end;
       end;
end;
  


Function ChkPwd(S :String):Boolean;
Var 
  X{, Y, Z} :Boolean;
  I :Integer;
  Temp1, Temp2, TempA :String;
Begin
    Temp1 := ''; 
    Temp2 := ''; 
    TempA := '';

    X := False; 
//    Y := False; 
//    Z := False;

    If Length(S) >= 4 then X := True;

    For I := 1 to Length(S) Do
    Begin
        Temp1 := Copy(S, I, 1);

        If Pos(Temp1, '0123456789') <> 0 then 
           Temp2 := Temp2 + Temp1;

        If Pos(Temp1, 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_')<> 0 Then
           TempA := TempA + Temp1;
    End;

    IF ((X = True) And (TempA <> '') And (Temp2 <> '') )Then 
       ChkPwd := True
    Else 
       ChkPwd := False;
End;


Function ValidatePassword(aPassword: String):Boolean;
Begin
//   Result := False;
   
   var pwdLen := False;
   var pwdNo := False;
   var pwdCh := False; 
   var pwdLo := False; 
   var pwdUp := False;

   If Length(aPassword) >= 6 then pwdLen := True;
     For var I := 1 to Length(aPassword) Do
       Begin
         var TempChr := Copy(aPassword, I, 1);
          If Pos(TempChr, PassNumr) <> 0 then  pwdNo := True;
           If Pos(TempChr, PassCharUp) <> 0 Then  pwdCh := True;
          If Pos(TempChr, PassCharLo) <> 0 Then  pwdLo := True;
         If Pos(TempChr, SpecialChar) <> 0 Then  pwdUp := True;
       End;

   IF ((pwdLen = True) And (pwdNo = True) And (pwdCh = True) And (PwdLo = True) And (pwdUp = True))Then 
      Result := True
   Else 
      Result := False;
End;


Function ValidateSQLDBandSoftwareVersions(aSQLver, aSWver: String; var ErrorMessage: String): Boolean;
begin
    Result := False;
    ErrorMessage := '';

    if SQLMajor <> GUIMajor then
    begin
      ErrorMessage := 'Database Major version is not compatable with Software Major version'+#13+
                      'SQL Major is: ' + SQLMajor +#13+  'Software Major is: ' + GUIMajor;
      exit;
    end;

    if SQLMainor <> GUIMainor then
    begin
      ErrorMessage := 'Database Mainor version is not compatable with Software Mainor version'+#13+
                      'SQL Mainor is: ' + SQLMainor +#13+  'Software Mainor is: ' + GUIMainor;
      exit;
    end;

    if SQLRelease <> GUIRelease then
    begin
      ErrorMessage := 'Database Release version is not compatable with Software Release version'+#13+
                      'SQL Mainor is: ' + SQLRelease +#13+  'Software Mainor is: ' + GUIRelease;
      exit;
    end;

    if SQLVersion <> GUIVersion then
    begin
      ErrorMessage := 'Database version is not compatable with Software version'+#13+
                      'SQL version is: ' + SQLVersion +#13+  'Software version is: ' + GUIVersion;
      exit;
    end;


    Result := True;
end;

Function EncryptAndDecrypt(AText: String): String;
var
   HexOut : String;
   Cipher : TCipher_TwoFish;
  // We use raw byte string here since Unicode handling of Windows console
  // is not given
   SourceText : RawByteString;
//  CipherKey  : RawByteString; // Key for the initialization of our encryption run
//  Seed       : RawByteString; // Seed for the key deviation function
//  IV         : RawByteString; // Initialization vector for the en/decryption
   Input,
   Output     : TBytes;
   KeyKDF     : TBytes; // Key after applying KDF to it
   i          : Integer;   
begin
   Cipher := TCipher_TwoFish.Create;

  try
    try
      // Init our encryption, note that this is the German spelling of Password
//      CipherKey := 'Passwort';
//      CipherKey := 'Smart_Solutions';
//      Seed      := 'SaltValueForThePasswordIsSmartSolutions';
      HexOut    := '';

//      var MosKey := BytesOf('Mostafa Rashwan');

      KeyKDF := THash_SHA256.KDF1(BytesOf(CipherKey), BytesOf(Seed), 16);

      // The IV should be different each time you encrypt/decrypt something. The
      // decrypting party needs to know the IV as well of course.
//      IV := #0#0#0#0#0#0#0#0;

      Cipher.Init(RawByteString(StringOf(KeyKDF)), IV, 0);
      Cipher.Mode := cmCBCx;

//      SourceText := 'Beispielklartext';
      SourceText := AText;
      Input := System.SysUtils.BytesOf(SourceText);

      // Encrypt
      Output := Cipher.EncodeBytes(Input);
      // clean up inside the cipher instance, which also removes the key from RAM
      Cipher.Done;

      for i := 0 to high(Output) do
         HexOut := HexOut + IntToHex(Output[i], 2);



      // Decrypt
      Cipher.Init(RawByteString(StringOf(KeyKDF)), IV, 0);
      Output := Cipher.DecodeBytes(Output);
      // clean up inside the cipher instance, which also removes the key from RAM
      Cipher.Done;

      SourceText := RawByteString(System.SysUtils.StringOf(Output));

//      MemoLog.Lines.Add('Decrypted data: ' + SourceText);
    except
      on E: Exception do
        raise Exception.Create(E.ClassName + ': ' + E.Message);
    end;

  finally
    Cipher.Free;
  end;

     Result := HexOut;
end;

(*
function ValidatePasswor(aPassword: String; var ErrorMessage: String): Boolean;
begin
  Result := false;
  ErrorMessage := '';

  if Length(aPassword) <> 9 then
  begin
    ErrorMessage := 'Password must be exactly 9 characters long';
    exit;
  end;

  if not TRegEx.IsMatch(aPassword, '[a-z]') then
  begin
    ErrorMessage := 'At least 1 character in the password must be lowercase';
    exit;
  end;

  if not TRegEx.IsMatch(aPassword, '[A-Z]') then
  begin
    ErrorMessage := 'At least 1 character in the password must be uppercase';
    exit;
  end;

  if not TRegEx.IsMatch(aPassword, '\d') then
  begin
    ErrorMessage := 'At least 1 character in the password must be a digit';
    exit;
  end;

  if not TRegEx.IsMatch(aPassword, '[!,#,%,&,*,@]') then
  begin
    ErrorMessage := 'At least 1 character in the password must be one of the following letters: !,#,%,&,*,@';
    exit;
  end;

  Result := True;
end;
   *)
    
{ TApplicationUser }

Initialization

  CurrentUser := TApplicationUser.Create( Application );
  
End.
