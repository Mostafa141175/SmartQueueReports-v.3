unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, System.UITypes,
  Data.DB, FireDAC.Stan.Intf, Vcl.WinXCalendars, System.IOUtils, System.Win.Registry,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, Vcl.Grids, Vcl.DBGrids, Vcl.VirtualImage,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.Imaging.jpeg, 
  System.Hash, System.DateUtils, acPNG;

type
  TMainForm = class(TForm)
    MainImage: TImage;
    SplitView: TSplitView;
    NavPanel: TPanel;
    SideImage: TImage;
    DBConnectBtn: TButton;
    ImportBtn: TButton;
    CountersBtn: TButton;
    BranchesBtn: TButton;
    LoginBtn: TButton;
    CloseBtn: TButton;
    UsersBtn: TButton;
    pnlToolbar: TPanel;
    lblTitle: TLabel;
    MenuVirtualImage: TVirtualImage;
    ReportsBtn: TButton;
    ServiceBtn: TButton;
    OpenDlg: TOpenDialog;
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    ActionList1: TActionList;
    ActionAfterConnect: TAction;
    ActionAfterDisconnect: TAction;
    ActionAfterLogIn: TAction;
    ActionAfterLogOut: TAction;
    ActionEnableAllBtns: TAction;
    ActionDisableAllBtns: TAction;
    qryInsertFileHash: TFDQuery;
    qryInsertQueTicketDetails: TFDQuery;
    qryInsertTickets: TFDQuery;
    PrintersBtn: TButton;
    LogoImage: TImage;
    Button1: TButton;
    qryInsertIsComplete: TFDQuery;
    CustomerBtn: TButton;
    BranchGroupBtn: TButton;
    UserGroupBtn: TButton;
    StatusInfoBar: TStatusBar;
    procedure CalendarView1DrawDayItem(Sender: TObject;
      DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
    procedure DBConnectBtnClick(Sender: TObject);
    procedure MenuVirtualImageClick(Sender: TObject);
    procedure LoginBtnClick(Sender: TObject);
    procedure ImportBtnClick(Sender: TObject);
    procedure CountersBtnClick(Sender: TObject);
    procedure UsersBtnClick(Sender: TObject);
    procedure BranchesBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SplitViewClosing(Sender: TObject);
    procedure SplitViewOpening(Sender: TObject);
    procedure ActionAfterConnectExecute(Sender: TObject);
    procedure ActionAfterDisconnectExecute(Sender: TObject);
    procedure ActionAfterLogInExecute(Sender: TObject);
    procedure ActionAfterLogOutExecute(Sender: TObject);
    procedure ActionEnableAllBtnsExecute(Sender: TObject);
    procedure ActionDisableAllBtnsExecute(Sender: TObject);
    Procedure ImportSmartQLogFiles ;
    procedure ReportsBtnClick(Sender: TObject);
    procedure ServiceBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PrintersBtnClick(Sender: TObject);
    procedure SideImageDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetRegistry(Reg: TRegistry; Key: string; Name: string);
  
    Function AddZero(TStr, DigCount: Integer): String;
    Function AddStrCountBefore(YourStr, SStr :String; DigCount: Integer): String;
    procedure FormActivate(Sender: TObject);
    procedure CustomerBtnClick(Sender: TObject);
    procedure BranchGroupBtnClick(Sender: TObject);
    procedure UserGroupBtnClick(Sender: TObject);
    procedure LogoImageDblClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;


Const
//   MainFormCaption = 'SmartQueue Report System';

  SecPerDay = 86400;
  SecPerHour = 3600;
  SecPerMinute = 60;
    
var
  MainForm: TMainForm;

  reg : TRegistry ;
  TxtF : TextFile;
  
  TempFile, BranchName, GroupName  : String;

  FileCount, BranchID, BranchGroup, Ln, NoDays : Integer;
  
  
  
  CheckValidate, BranchSelected : Boolean;



implementation

{$R *.dfm}

uses UnitDataModule, UnitSQLSetting, UnitGlobal, UnitLogIn, 
  UnitUsers, UnitCustomer, UnitBranches, {UnitCRC32checksum,} UnitReports, TestUnit,
  UnitCounters, UnitServices, UnitPrinters, UnitSplash, UnitBranchGroup, UnitGroupPrivilege,
  unitBranchSelect, UnitHelp;


(*
    procedure TFormMain.UpdateNavButtons;
    var
      LStyle: Dword;
    begin
      LStyle := GetWindowLong(DBConnectBtn.Handle, GWL_STYLE);
      SetWindowLong(DBConnectBtn.Handle, GWL_STYLE, LStyle or BS_LEFT);
      DBConnectBtn.Caption   := '          '+DBConnectBtn.Hint;
      SetWindowLong(ImportBtn.Handle, GWL_STYLE, LStyle or BS_LEFT);
      ImportBtn.Caption      := '          '+ImportBtn.Hint;
      SetWindowLong(LoginBtn.Handle, GWL_STYLE, LStyle or BS_LEFT);
      LoginBtn.Caption       := '          '+LoginBtn.Hint;
      SetWindowLong(SettingBtn.Handle, GWL_STYLE, LStyle or BS_LEFT);
      SettingBtn.Caption     := '          '+SettingBtn.Hint;
      SetWindowLong(CountersBtn.Handle, GWL_STYLE, LStyle or BS_LEFT);
      CountersBtn.Caption    := '          '+CountersBtn.Hint;
      SetWindowLong(CalendarButton.Handle, GWL_STYLE, LStyle or BS_LEFT);
      CalendarButton.Caption := '          '+CalendarButton.Hint;
      SetWindowLong(UsersBtn.Handle, GWL_STYLE, LStyle or BS_LEFT);
      UsersBtn.Caption       := '          '+UsersBtn.Hint;
      SetWindowLong(ReportsBtn.Handle, GWL_STYLE, LStyle or BS_LEFT);
      ReportsBtn.Caption     := '          '+ReportsBtn.Hint;
      SetWindowLong(ActionBtn.Handle, GWL_STYLE, LStyle or BS_LEFT);
      ActionBtn.Caption      := '          '+ActionBtn.Hint;
    end;    
*)

procedure TMainForm.SetRegistry(Reg: TRegistry; Key: string; Name: string);
var
  I: Integer;
  Temp: string;
begin
  I := Pos('\', Key);
  if I > 0 then
  begin
    Temp := Copy(Key, 1, I - 1);
    if UpperCase(Temp) = 'HKEY_LOCAL_MACHINE' then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      if UpperCase(Temp) = 'HKEY_CURRENT_USER' then
        Reg.RootKey := HKEY_CURRENT_USER;
    Key := Copy(Key, I + 1, Length(Key) - I);
    if Key[Length(Key)] <> '\' then
      Key := Key + '\';
    Key := Key + Name;
    Reg.OpenKey(Key, True);
  end;
end;

procedure TMainForm.CalendarView1DrawDayItem(Sender: TObject;
  DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
begin
  if DayOfWeek(CalendarViewViewInfo.Date) in [1, 7] then
  begin
    DrawParams.Font.Style := [fsBold];
  end;
end;


function LineCount(FileName: String): Integer;
var 
  St : String;
begin
     AssignFile(TxtF, FileName);
     Reset(TxtF);
     Result := 0;
     Ln := 0;
     while not EOF(TxtF) do
     begin
        Readln(TxtF, St);
        if St <> '' then
        begin
          if Length(St) <> 109 then
            begin
              Ln := Ln + 1;
//              MainForm.ErrorLineMemo.Lines.Add('Error Line: '+ IntToStr(Result + 1)); 
            end;
              Inc(Result);
        end;
             
     end;
//        CloseFile(TxtF);
        LineCount := Result ;
//        MainForm.ErrorLineMemo.Lines.Add('Total Errors '+ IntToStr(Ln)); 
end;

function GetLineCount(textFilePath: string): integer;
var
  list: tstringlist;
begin
  list := tstringlist.Create;
  try
    list.LoadFromFile(textFilePath);
    result := list.Count;
  finally
     list.free;
  end;
end;

Function ClearIntergerNumber(Data :String):String;
var I : Integer;
begin
   for I :=  1 to length(Data) do
     If Pos(Data[I], '0123456789') <> 0 then
       Result := Result + Data[I];
end;

Function TMainForm.AddStrCountBefore(YourStr, SStr: String;
  DigCount: Integer): String;
Var St : String;
   L,J : Integer;
Begin
   St := (YourStr);
    L := Length(St);
      If L < DigCount Then
        For J := DigCount DownTo L + 1 Do
          St := SStr + St ;
   AddStrCountBefore := St;
end;

Function TMainForm.AddZero(TStr, DigCount: Integer): String;
Var St : String;
    L,J : Integer;
Begin
      St := IntToStr(TStr);
      L  := Length(St);
      If L < DigCount Then
          For J := DigCount DownTo L + 1 Do
          St := '0' + St ;
   AddZero := St;
end;

// 4x faster than dateutils version
function UNIXTimeToDateTimeFAST(UnixTime: LongWord): TDateTime;
begin
     Result := (UnixTime / 86400); //  + 25569;
end;

// 10x faster than dateutils version
function DateTimeToUNIXTimeFAST(DelphiTime : TDateTime): LongWord;
begin
//     Result := Round((DelphiTime - 25569) * 86400);
     Result := Round(DelphiTime * 86400);
end;


//function SecondToTime(const Seconds: Cardinal): Double;
function SecondToTime(const Seconds: Cardinal): String;
var
  {zzz,} ss, mm, hh, dd: Cardinal;
begin
  dd := Seconds div SecPerDay;
  hh := (Seconds mod SecPerDay) div SecPerHour;
  mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMinute;
  ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMinute;
//  zzz := 000;
//  Result := dd + EncodeTime(hh, mm, ss, zzz);
//    Result := EncodeTime(hh, mm, ss, zzz);
  if dd > 0 then
    begin
       Result := IntToStr(dd)+'.'+ IntToStr(hh)+':'+IntToStr(mm)+':'+IntToStr(ss);
       NoDays := DD;
    end
  else
     Result := IntToStr(hh)+':'+IntToStr(mm)+':'+IntToStr(ss);
end;

//function SecondToTime(const Seconds: Cardinal): Double;
function SecondToStrTime(const Seconds: Cardinal): String;
var
  zzz, ss, mm, hh, dd: Cardinal;
begin
    dd := Seconds div SecPerDay;
    hh := (Seconds mod SecPerDay) div SecPerHour;
    mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMinute;
    ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMinute;
    zzz := 000;
//  Result := dd + EncodeTime(hh, mm, ss, zzz);
//    Result := EncodeTime(hh, mm, ss, zzz);
    if dd > 0 then
      begin
         Result := TimeToStr(EncodeTime(hh, mm, ss, zzz));
//         Result := IntToStr(dd) +'.'+ AddZero(hh, 2)+':'+ AddZero(mm, 2)+':'+ AddZero(ss, 2);
         NoDays := DD;
      end
    else
//       Result := AddZero(hh, 2)+':'+ AddZero(mm, 2)+':'+ AddZero(ss, 2);
       Result := TimeToStr(EncodeTime(hh, mm, ss, zzz));
end;



procedure TMainForm.SplitViewClosing(Sender: TObject);
begin
    DBConnectBtn.Caption := '';
    ImportBtn.Caption    := '';
    LoginBtn.Caption     := '';
    BranchesBtn.Caption  := '';
    BranchGroupBtn.Caption := '';
    CustomerBtn.Caption  := '';
    CountersBtn.Caption  := '';
    CloseBtn.Caption     := '';
    UsersBtn.Caption     := '';
    UserGroupBtn.Caption := '';
    ReportsBtn.Caption   := '';
    ServiceBtn.Caption   := '';
    PrintersBtn.Caption  := '';

//    LogoImage.Left := MainForm.ClientWidth - (SplitView.Width + 80) ; 

//    MenuVirtualImage.Left := 155;

end;

procedure TMainForm.SplitViewOpening(Sender: TObject);
begin
    DBConnectBtn.Caption := DBConnectBtn.Hint;
    ImportBtn.Caption    := ImportBtn.Hint;
    LoginBtn.Caption     := LoginBtn.Hint;
    BranchesBtn.Caption  := BranchesBtn.Hint;
    BranchGroupBtn.Caption := BranchGroupBtn.Hint;
    CustomerBtn.Caption  := CustomerBtn.Hint;
    CountersBtn.Caption  := CountersBtn.Hint;
    CloseBtn.Caption     := CloseBtn.Hint;
    UsersBtn.Caption     := UsersBtn.Hint;
    UserGroupBtn.Caption := UserGroupBtn.Hint;
    ReportsBtn.Caption   := ReportsBtn.Hint;
    ServiceBtn.Caption   := ServiceBtn.Hint;
    PrintersBtn.Caption  := PrintersBtn.Hint;

//    LogoImage.Left :=  MainForm.ClientWidth -  435; 

//    MenuVirtualImage.Left := 3;

end;

procedure TMainForm.SideImageDblClick(Sender: TObject);
begin
    try
       FormSplash := TFormSplash.Create(Application);
       FormSplash.ShowModal;
    finally
       FormSplash.Free;
    end;
end;

procedure TMainForm.ImportBtnClick(Sender: TObject);
begin
     BranchSelected := False;
      
    with SelectForm do
     if ShowModal = mrOk then
       begin
           BranchSelected := False;
           MainForm.OpenDlg.InitialDir := (Application.ExeName);
           MainForm.OpenDlg.Title := 'Select ALL Q Log files';
           FileCount := 0;

           IF MainForm.OpenDlg.Execute Then
           Begin
              FileCount := MainForm.OpenDlg.Files.Count;
              ImportSmartQLogFiles;
           End;
       end;


 {    CmBoxBranches.ItemIndex := -1;
     if BranchSelected then
       begin
          BranchSelected := False;
//          ImportAllFiles;
          MainForm.OpenDlg.InitialDir := (Application.ExeName);
          MainForm.OpenDlg.Title := 'Select ALL Q Log files';

          FileCount := 0;

         IF MainForm.OpenDlg.Execute Then
            Begin
                FileCount := MainForm.OpenDlg.Files.Count;
                    
                ImportSmartQLogFiles;
                
            End;
                CmBoxBranches.ItemIndex := -1;
       end
       else
          ShowMessage('Please Select the Branch First and press Import again...!'
                 +#13+ 'من فضلك اختار الفرع أولا');      }
end;


procedure TMainForm.ImportSmartQLogFiles;
var
  FIDx, TotalLines,
  MaxLn, WaitSeconds, ServSeconds : Integer;

  Ftxt_Name, TempStr, StrLine, StrFileHash, 

  TicketID, TicketLineHashID,
  TktShiftID, WaitTime, ServTime,
  TktServiceID, TktIssuerID,
  TicketNo, TktWaitingNo,
  TktActionDateTime, TktActionName,
  
  TktServiceTypeID, TktCounterID,
  TktWaitingTime, TktServiceTime,  TktIsComplete,

  TktDateTime : String;

  SQLDateFormat : TFormatSettings;

begin
    SQLDateFormat := TFormatSettings.Create;
    SQLDateFormat.DateSeparator := '-';
    SQLDateFormat.ShortDateFormat := 'yyyy-MM-dd';
    SQLDateFormat.TimeSeparator := ':';
    SQLDateFormat.ShortTimeFormat := 'hh:mm';
    SQLDateFormat.LongTimeFormat := 'hh:mm:ss';

    TotalLines := 0;

    Application.ProcessMessages;
    
    For FIDx := 0 To (FileCount-1) Do
      begin
           Ftxt_Name := '';
           StrFileHash := '';
           TempFile := '';
           TicketLineHashID := '';

           Screen.Cursor := crSQLWait;
           
           TempFile := MainForm.OpenDlg.Files.KeyNames[FIDx] ;

//            StrCRC := IntToHex(LongWord(CalcFileCRC(TempFile)));
            StrFileHash := UpperCase(System.Hash.THashMD5.GetHashStringFromFile(TempFile));
            Ftxt_Name := ExtractFileName(TempFile);
            
//            Locate('Company;Contact;Phone', VarArrayOf(['Sight Diver','P']), loPartialKey); 
            if DataQModule.TblQueFiles.Locate('BranchID;GroupID;QLogName',
               VarArrayOf([BranchID, BranchGroup, Ftxt_Name]), [loPartialKey]) then
            if MessageDlg('This File has imported before for the same Branch..!'+#13+ 
                   'Are you sure you want Import it again...?!' +#13#13+
                   'File Name: ' + Ftxt_Name +#13+ 
                   'Branch ID: ' + BranchName +#13+
                   'File Hash: ' + StrFileHash, TMsgDlgType.mtWarning,
                    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrNo then
                    exit;
//            begin   



              
            CheckValidate := False;

//          Insert Log file to with CRC to Database

//               AssignFile(TxtF, TempFile);
//               Reset(TxtF);
//               MaxLn := LineCount(TempFile);
               MaxLn := GetLineCount(TempFile);
               TotalLines := TotalLines + MaxLn;
//               CloseFile(TxtF);

                if Ln <> 0 then
                  begin
                     CheckValidate := False;
                     MessageDlg('Validation Error'+#13#13+
                             'This file '+#13+ TempFile +#13+  'has a ' + IntToStr(Ln) +' bad Lines',
                             TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
                      Exit;
                  end
                  else
                  begin
                     CheckValidate := True;
//                     ShowMessage('Validation Success');
                  end;
               
               Ftxt_Name := ExtractFileName(TempFile);
               
                if CheckValidate then
                begin
                    DataQModule.FDConnectionSQL.StartTransaction;
                    Try
                        try
                        // start first Try to add file name
                          MainForm.qryInsertFileHash.Params.ClearValues();
                          MainForm.qryInsertFileHash.Params[0].AsString := StrFileHash;
                          MainForm.qryInsertFileHash.Params[1].AsInteger := BranchID;
                          MainForm.qryInsertFileHash.Params[2].AsInteger := BranchGroup;
                          MainForm.qryInsertFileHash.Params[3].AsString := Ftxt_Name;
                          MainForm.qryInsertFileHash.Params[4].AsDateTime := Now;
                          MainForm.qryInsertFileHash.Params[5].AsInteger := CurrentUser.UserID;
                          MainForm.qryInsertFileHash.Params[6].AsString := UpperCase(CurrentUser.UserName);
                          MainForm.qryInsertFileHash.ExecSQL;
//                            if (StrFileHash <> '') and 
//                               (DataQModule.TblQueFiles.Locate('QFileMD5Hash', StrFileHash,
//                               [loCaseInsensitive, loPartialKey]) = False)
//                         then
//                                MainForm.qryInsertFileHash.ExecSQL
                        except
                           on E : Exception do
                              begin
                                DataQModule.FDConnectionSQL.Rollback;
                                DataQModule.TblLogging.InsertRecord([Date, Time, 
                                                                CurrentUser.UserID, 
                                                                UpperCase(CurrentUser.UserName), 
                                                                'Error Importing QLog File...!, File maybe imported,'
                                                                + ' for Branch ID: ' + IntToStr(BranchID)
                                                                + ' , The QLog File Name is: ' + Ftxt_Name]);
                                DataQModule.TblLogging.Refresh;
                                raise Exception.Create(E.Message  +#13#13+ 'Error Importing File...!, File maybe imported before' +#13+ 
                                         'File Name: ' + Ftxt_Name +#13+ 
                                         'File Hash: ' + StrFileHash);
                                exit;
                              end;  // End first add the File name
                        end;  // End first add the File name


                       
                       try
                           // insert Ticket Details from QLog File
                          DataQModule.tblQueTicketDetails.Open;   
                          AssignFile(TxtF, TempFile);
                          Reset(TxtF);
                         While not EOF(TxtF) do
                           Begin // Read File
                             StrLine := '';
                             TempStr := '';

                             TicketLineHashID := '';
                             TicketID := '';

                             TktShiftID := '';
                             TktServiceID := '';
                             TktIssuerID := '';
                             TicketNo := '';
                             TktWaitingNo := '';
                             TktDateTime := '';
                             TktActionDateTime := '';
                             TktActionName := '';

                             TktServiceTypeID := '';
                             TktCounterID := '';
                             TktWaitingTime := '';
                             TktServiceTime := '';
                             TktIsComplete := '';
                           
                             Readln (TxtF, StrLine);
//                             TktHash := THashBobJenkins.GetHashString(StrLine);
                             TicketLineHashID := UpperCase(System.Hash.THashSHA2.GetHashString(StrLine));

                             TempStr := Copy(StrLine, 0, 46);
                             TicketID := ClearIntergerNumber(TempStr);

                             if Length(StrLine) = 109 then
                               begin // Read Line
                                  TempStr := Copy(StrLine, 0, 19);
                                  TktDateTime := Trim(TempStr);

                                  TempStr := Copy(StrLine, 22, 4);
                                  TktShiftID := Trim(TempStr);

                                  TempStr := Copy(StrLine, 28, 2);
                                  TktServiceID := Trim(TempStr);

                                  TempStr := Copy(StrLine, 32, 2);
                                  TktIssuerID := Trim(TempStr);

                                  TempStr := Copy(StrLine, 36, 4);
                                  TicketNo := Trim(TempStr);

                                  TempStr := Copy(StrLine, 42, 4);
                                  TktWaitingNo := Trim(TempStr);

                                  TempStr := Copy(StrLine, 48, 19);
                                  TktActionDateTime := Trim(TempStr);

                                  TempStr := Copy(StrLine, 69, 10);
                                  TktActionName := Trim(TempStr);
                                 
                                  TempStr := Copy(StrLine, 81, 2);
                                  TktServiceTypeID := Trim(TempStr);

                                  TempStr := Copy(StrLine, 85, 2);
                                  TktCounterID := Trim(TempStr);

                                  TempStr := Copy(StrLine, 89, 8);
                                  TktWaitingTime := Trim(TempStr);
                                  WaitSeconds := StrToInt(TktWaitingTime);
                                  WaitTime := SecondToTime(WaitSeconds);

                                  TempStr := Copy(StrLine, 99, 8);
                                  TktServiceTime := Trim(TempStr);
                                  ServSeconds := StrToInt(TktServiceTime);
                                  ServTime := SecondToTime(ServSeconds);

                                  TempStr := Copy(StrLine, 109, 1);
                                  TktIsComplete := Trim(TempStr);

                                  MainForm.qryInsertQueTicketDetails.Params.ClearValues;
                                  MainForm.qryInsertQueTicketDetails.Params[0].AsString   := TicketLineHashID;
                                  MainForm.qryInsertQueTicketDetails.Params[1].AsString   := TicketID;
                                  MainForm.qryInsertQueTicketDetails.Params[2].AsInteger  := CurrentUser.UserID;
                                  MainForm.qryInsertQueTicketDetails.Params[3].AsInteger  := BranchID;
                                  MainForm.qryInsertQueTicketDetails.Params[4].AsInteger  := BranchGroup;

                                  MainForm.qryInsertQueTicketDetails.Params[5].AsDate     := StrToDateTime(TktDateTime, SQLDateFormat);
                                  MainForm.qryInsertQueTicketDetails.Params[6].AsTime     := StrToDateTime(TktDateTime, SQLDateFormat);
                                  MainForm.qryInsertQueTicketDetails.Params[7].AsInteger  := StrToInt(TktShiftID);
                                  MainForm.qryInsertQueTicketDetails.Params[8].AsInteger  := StrToInt(TktServiceID);
                                  MainForm.qryInsertQueTicketDetails.Params[9].AsInteger  := StrToInt(TktIssuerID);
                                  MainForm.qryInsertQueTicketDetails.Params[10].AsInteger := StrToInt(TicketNo);
                                  MainForm.qryInsertQueTicketDetails.Params[11].AsInteger := StrToInt(TktWaitingNo);

                                  MainForm.qryInsertQueTicketDetails.Params[12].AsDate    := StrToDateTime(TktActionDateTime, SQLDateFormat);
                                  MainForm.qryInsertQueTicketDetails.Params[13].AsTime    := StrToDateTime(TktActionDateTime, SQLDateFormat);
                                  MainForm.qryInsertQueTicketDetails.Params[14].AsString  := TktActionName;
                                  MainForm.qryInsertQueTicketDetails.Params[15].AsInteger := StrToInt(TktServiceTypeID);
                                  MainForm.qryInsertQueTicketDetails.Params[16].AsInteger := StrToInt(TktCounterID);
                                  MainForm.qryInsertQueTicketDetails.Params[17].AsTime    := StrToDateTime(WaitTime, SQLDateFormat);
                                  MainForm.qryInsertQueTicketDetails.Params[18].AsTime    := StrToDateTime(ServTime, SQLDateFormat);
                                  MainForm.qryInsertQueTicketDetails.Params[19].AsInteger := WaitSeconds;
                                  MainForm.qryInsertQueTicketDetails.Params[20].AsInteger := ServSeconds;
                                  MainForm.qryInsertQueTicketDetails.Params[21].AsBoolean := StrToBool(TktIsComplete);
                                

                                
                                 // Add Insert Query for Tickets Table
                                  IF (TktActionName = 'PRINT') OR (TktActionName = 'SELECT') THEN
                                    BEGIN // Get Ticket ID
//                                       TRY
                                          MainForm.qryInsertTickets.Params.ClearValues;
                                          MainForm.qryInsertTickets.Params[0].AsString  := TicketID;
                                          MainForm.qryInsertTickets.Params[1].AsInteger := StrToInt(TicketNo);
                                          MainForm.qryInsertTickets.Params[2].AsInteger := StrToInt(TktShiftID);

                                          MainForm.qryInsertTickets.Params[3].AsInteger := StrToInt(TktServiceID);
                                          MainForm.qryInsertTickets.Params[4].AsInteger := StrToInt(TktIssuerID);
                                          
                                          MainForm.qryInsertTickets.Params[5].AsDate    := StrToDateTime(TktDateTime, SQLDateFormat);
                                          MainForm.qryInsertTickets.Params[6].AsTime    := StrToDateTime(TktDateTime, SQLDateFormat);

                                          MainForm.qryInsertTickets.Params[7].AsInteger := StrToInt(TktServiceTypeID);
                                          MainForm.qryInsertTickets.Params[8].AsInteger := StrToInt(TktCounterID);

                                          MainForm.qryInsertTickets.Params[9].AsInteger  := BranchID;
                                          MainForm.qryInsertTickets.Params[10].AsInteger := BranchGroup;
                                          MainForm.qryInsertTickets.Params[11].AsString  := GroupName;
                                          MainForm.qryInsertTickets.Params[12].AsString  := BranchName;

                                          if (TicketID <> '') and 
                                             (DataQModule.tblTickets.Locate('TicketID', TicketID,
                                             [loCaseInsensitive, loPartialKey]) = False)
                                          then
                                              MainForm.qryInsertTickets.ExecSQL;
                                             
                                           
//                                       EXCEPT
//                                          on E : Exception do
//                                             begin
//                                                 raise Exception.Create(E.Message +#13#13+ 'Error Inserting Tickets ID');
//                                             end;
//                                       END; // end Try
                                    END; // Get Ticket ID

                               end; // Read Line

                                       if (StrLine <> '') and 
                                          (DataQModule.tblQueTicketDetails.Locate('TicketLineHashID', TicketLineHashID,
                                          [loCaseInsensitive, loPartialKey]) = False) 
                                       then
                                          MainForm.qryInsertQueTicketDetails.ExecSQL;

                           End; // End While Read File
                              CloseFile(TxtF);
                              DataQModule.tblQueTicketDetails.Close;   
                           
                       except
                            on E : Exception do
                            begin
                                 DataQModule.FDConnectionSQL.Rollback;
                                 Raise Exception.Create(E.Message +#13#13+ 'Error Inserting Ticket Details Data');
                            end;
                       end;

                          DataQModule.FDConnectionSQL.Commit;
//                         ShowMessage('Insertion Success');
                    Except
                        on E : Exception do
                            begin
                              DataQModule.FDConnectionSQL.Rollback;

                              DataQModule.TblLogging.InsertRecord([Date, Time, 
                                                                CurrentUser.UserID, 
                                                                UpperCase(CurrentUser.UserName), 
                                                                'Error Importing QLog File...!, File maybe imported,'
                                                                + ' for Branch ID: ' + IntToStr(BranchID)
                                                                + ' , The QLog File Name is: ' + Ftxt_Name]);
                              DataQModule.TblLogging.Refresh;

                            Raise Exception.Create(E.Message +#13#13+ 'Error Importing File...!, File maybe imported before ' 
                                  +#13+ TempFile);

                              
                             MessageDlg('Error Inserting Files ...!' +#13+ 'Seystem is Rolled Back', 
                                       TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
                            end;
                    End;
                       Screen.Cursor := crDefault;
                       DataQModule.TblLogging.InsertRecord([Date, Time, 
                                                           CurrentUser.UserID, 
                                                           UpperCase(CurrentUser.UserName), 
                                                           'User has Imported the QLog File'
                                                           + ' for Branch ID: ' + IntToStr(BranchID)
                                                           + ' , The QLog File Name is: ' + Ftxt_Name]);
                       DataQModule.TblLogging.Close;
                       DataQModule.TblLogging.Open;
                       DataQModule.TblLogging.Refresh;

                       DataQModule.TblQueFiles.Refresh;
                end;
                
//            end;

            
      end;  // End For
         MessageDlg('Import Complete '+ #13+ 'Total Files:    '+
                  IntToStr(FileCount)+#13+'Total Lines:    '+
                  IntToStr(TotalLines) , mtConfirmation,[mbOK],0) ;
//    {$I+}
end;

procedure TMainForm.ActionAfterConnectExecute(Sender: TObject);
begin
     DataQModule.TblUsers.Open;
 {    if DataQModule.TblUsers.RecordCount < 1 then
     begin
         ShowMessage('Please you have to add a USER first ...!');

//         UsersForm.ShowModal;
     end;   }

// Auto logout option
     if DataQModule.TblUsers.Locate('UserActive', 1,
        [LoCaseInsensitive,loPartialKey]) = True then 
     begin
        ShowMessage('There a User is not yet logged OFF...!'
                     +#13+ 'He is:   ' +UpperCase(DataQModule.TblUsersUserName.AsString)
                     +#13#13+ 'Will Log hem OFF now ');
        DataQModule.TblUsers.Edit;
        DataQModule.TblUsers.FieldByName('UserActive').AsBoolean := False;
        DataQModule.TblUsers.Refresh;

        DataQModule.TblLogging.Open;
        DataQModule.TblLogging.InsertRecord([Date, Time, DataQModule.TblUsersUserID.AsInteger, 
                                           UpperCase(DataQModule.TblUsersUserName.AsString), 'Automatic Logged Out']);
        DataQModule.TblLogging.Refresh;
     end;
     
      ActionAfterLogOut.Execute();
      LoginBtn.Enabled := True;
//      DBConnectBtn.Caption := 'Disconnect';
    
end;

procedure TMainForm.ActionAfterDisconnectExecute(Sender: TObject);
begin
     LoginBtn.Enabled := False;
     ActionAfterLogOut.Execute();
end;

procedure TMainForm.ActionAfterLogInExecute(Sender: TObject);
begin
     LoginBtn.Caption := 'تسجيل الخروج';
     LoginBtn.Hint := 'تسجيل الخروج';

//     LblCurrentUser.Caption := 'Current User is:  ' + UpperCase(CurrentUser.UserName);
     StatusInfoBar.Panels[1].Text := ' User:  ' + LowerCase(CurrentUser.UserName);
     CurrentUser.UserActive := True;

//     if (CurrentUser.UserName <> 'smart') and (CurrentUser.up ) then
     if (CurrentUser.UserName <> SmartUserName) and (CurrentUser.UserPassHash <> SmartPassword) then
       begin
            DataQModule.TblUsers.Locate ('UserName', CurrentUser.UserName, [loCaseInsensitive, loPartialKey]);
            DataQModule.TblUsers.Edit;
            DataQModule.TblUsers.FieldByName('UserActive').AsBoolean := CurrentUser.UserActive;
            DataQModule.TblUsers.Post;
            DataQModule.TblUsers.Refresh;
       end;


     // Save the LogIn Data to the Loging Table
     if DataQModule.FDConnectionSQL.Connected then
       begin
            DataQModule.TblLogging.InsertRecord([Date, Time, CurrentUser.UserID, UpperCase(CurrentUser.UserName), 'Logged In']);
            DataQModule.TblLogging.Refresh;
       end;

       ActionEnableAllBtns.Execute;
end;

procedure TMainForm.ActionAfterLogOutExecute(Sender: TObject);
begin

//     DBConnectBtn.Caption := 'Disconnect';

     LoginBtn.Caption := 'تسجيل الدخول';
     LoginBtn.Hint := 'تسجيل الدخول';

//     LblCurrentUser.Caption := 'User is not Logged in...!';
     StatusInfoBar.Panels[1].Text := ' User not logged in...!' ;
     CurrentUser.UserActive := False;

     ActionDisableAllBtns.Execute;
//     DBConnectBtn.Enabled := True;
end;

procedure TMainForm.ServiceBtnClick(Sender: TObject);
begin
    FormServices.ShowModal;
end;

procedure TMainForm.ActionDisableAllBtnsExecute(Sender: TObject);
begin
     LoginBtn.Enabled := False;
     ImportBtn.Enabled := False;
     CountersBtn.Enabled := False;
     ReportsBtn.Enabled := False;
//     CloseBtn.Enabled := False;
     UsersBtn.Enabled := False;
     UserGroupBtn.Enabled := False;
     ServiceBtn.Enabled := False;
     BranchesBtn.Enabled := False;
     BranchGroupBtn.Enabled := False;
     CustomerBtn.Enabled := False;
     PrintersBtn.Enabled := False;
end;

procedure TMainForm.ActionEnableAllBtnsExecute(Sender: TObject);
begin
     ImportBtn.Enabled := True;
     CountersBtn.Enabled := True;
     ReportsBtn.Enabled := True;
     CloseBtn.Enabled := True;
     UsersBtn.Enabled := True;
     UserGroupBtn.Enabled := True;
     ServiceBtn.Enabled := True;
     BranchesBtn.Enabled := True;
     BranchGroupBtn.Enabled := True;
     CustomerBtn.Enabled := True;
     PrintersBtn.Enabled := True;
end;

procedure TMainForm.BranchesBtnClick(Sender: TObject);
begin
//     if SplitView.Opened then
//        SplitView.Close;
    FormBranches.ShowModal;
end;


procedure TMainForm.BranchGroupBtnClick(Sender: TObject);
begin
     FormBranchGroup.ShowModal;
end;

procedure TMainForm.UserGroupBtnClick(Sender: TObject);
begin
     FormPrivilege.ShowModal;
//     DataQModule.TblUserGroups.Close;
end;

procedure TMainForm.UsersBtnClick(Sender: TObject);
begin
//     if SplitView.Opened then
//        SplitView.Close;
     UsersForm.ShowModal;
end;

procedure TMainForm.MenuVirtualImageClick(Sender: TObject);
begin
    SplitView.Opened := not SplitView.Opened;
end;

procedure TMainForm.PrintersBtnClick(Sender: TObject);
begin
    FormPrinters.ShowModal;
end;

procedure TMainForm.ReportsBtnClick(Sender: TObject);
begin
    FormReport.ShowModal;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
 
{    ShowMessage(
            'Date Time of 86399' +#13#13+
//             FormatDateTime('dd, hh:mm:ss',
//             UnixToDateTime(86399)) +#13#13+

//             FormatDateTime('dd, hh:mm:ss',
//             UNIXTimeToDateTimeFAST(86399)) +#13#13+

             SecondToTime(86399)
             ); }

    TestForm.ShowModal ;
end;

procedure TMainForm.CloseBtnClick(Sender: TObject);
begin
//     if SplitView.Opened then
//        SplitView.Close;
    Close;
end;


procedure TMainForm.DBConnectBtnClick(Sender: TObject);
begin
//     if SplitView.Opened then
//        SplitView.Close;

//    if DataQModule.FDConnectionSQL.Connected then
//       begin
//            DataQModule.FDConnectionSQL.Connected := False;
//       end
//       else
//       begin
            FormSQLSetting.ShowModal;
//       end;

end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
     reg := TRegistry.Create;
     with reg do
     try 
         RootKey := HKEY_CURRENT_USER;
        if KeyExists('Software\SmartQueue_V03') then
          begin
               reg.CreateKey ('Software\SmartQueue_V03') ;
               Key := 'HKEY_CURRENT_USER\Software\SmartQueue_V03' ;
               SetRegistry(Reg, Key, 'Connection Setting');
               ServerName := Reg.GetDataAsString('Server', False);
               DatabaseName := Reg.GetDataAsString('Database', False) ;
               LoginOSAuthent := Reg.GetDataAsString ('OSAuthent', False) ;

               LoginName := Reg.GetDataAsString ('UserName', False) ;
               if LoginName <> '' then
                  LoginName :=  XOR16Byte(LoginName, StringToHex(CipherKey));
               if Pos('20', LoginName) <> 0 then
                  LoginName := Trim(HexToString(LoginName));
               
               LoginPassword := Reg.GetDataAsString ('Password', False) ;
               if LoginPassword <> '' then
                  LoginPassword :=  XOR16Byte(LoginPassword, StringToHex(CipherKey));
               if Pos('20', LoginPassword) <> 0 then
                  LoginPassword := Trim(HexToString(LoginPassword));

              FormSQLSetting.DoSQLConnection;
          end;
    finally
        reg.Free;
    end;

    if ServerName <> '' then
    begin
        if LoginOSAuthent = 'Yes' then
        begin
           FormSQLSetting.OSAuthentCheckBox.Checked := True;
           FormSQLSetting.SQLUserEdit.Text := '';
           FormSQLSetting.SQLUserEdit.Enabled := False;
           FormSQLSetting.SQLPasswordEdit.Text := '';
           FormSQLSetting.SQLPasswordEdit.Enabled := False;
        end;

        if LoginOSAuthent = 'No' then
         begin
           FormSQLSetting.OSAuthentCheckBox.Checked := False;
           FormSQLSetting.SQLUserEdit.Text := LoginName;
           FormSQLSetting.SQLUserEdit.Enabled := True;
           FormSQLSetting.SQLPasswordEdit.Text := LoginPassword;
           FormSQLSetting.SQLPasswordEdit.Enabled := True;
        end;
    end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if NOT DataQModule.FDConnectionSQL.Connected then
    begin
        Application.Terminate;
    end
    else
    begin
       if CurrentUser.UserActive then
         begin
            if MessageDlg('Are you sure you want EXIT ..?!'+#13#13+
                    'It will Automatically logged you OUT...?!', TMsgDlgType.mtWarning,
                    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
            begin             
              ActionAfterLogOut.Execute();
              LoginBtn.Enabled := True;
          
              if (CurrentUser.UserName <> SmartUserName) and (CurrentUser.UserPassHash <> SmartPassword) then
                begin
              // Save the LogOut Data to the Loging Table
                   DataQModule.TblUsers.Locate ('UserName', CurrentUser.UserName, [loCaseInsensitive, loPartialKey]);
                   CurrentUser.UserActive := False;
                   DataQModule.TblUsers.Edit;
                   DataQModule.TblUsers.FieldByName('UserActive').AsBoolean := CurrentUser.UserActive;
                   DataQModule.TblUsers.Post;
                   DataQModule.TblUsers.Refresh;
                end;

              DataQModule.TblLogging.InsertRecord([Date, Time, CurrentUser.UserID, UpperCase(CurrentUser.UserName), 'Logged Out']);
              DataQModule.TblLogging.Refresh;
              Application.Terminate;
            end
            else      
                Abort;
         end
         else
             Application.Terminate;
    end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
    Caption := MainFormCaption ;

     ActionAfterDisconnect.Execute;
     ActionAfterLogOut.Execute;
     ActionDisableAllBtns.Execute;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
//   GUIver = 'GUI: ' + '02.01.05.01';
   GUIver := 'GUI: ' + AddZero(MAJ_VER, 2) +'.'+ AddZero(MIN_VER, 2) +'.'+ AddZero(REL_VER, 2) +'.'+ AddZero(BLD_VER, 2) +' '+ DATE_VER;
//   LblGUIver.Caption := GUIver;
   StatusInfoBar.Panels[2].Text := GUIver;
   StatusInfoBar.Panels[4].Text := ' Reports version:  ' + RepVersion;
end;

procedure TMainForm.CountersBtnClick(Sender: TObject);
begin
//     if SplitView.Opened then
//        SplitView.Close;

    FormCounters.ShowModal;
end;

procedure TMainForm.CustomerBtnClick(Sender: TObject);
begin
//     DataQModule.TblCustomer.Open;
     FormCustomer.ShowModal;
end;

procedure TMainForm.LoginBtnClick(Sender: TObject);
begin
//     if SplitView.Opened then
//        SplitView.Close;
    if CurrentUser.UserActive then
    begin
         if MessageDlg('Are you sure you want Log OUT..?!', TMsgDlgType.mtWarning,
                       [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
          begin
              ActionAfterLogOut.Execute();
              LoginBtn.Enabled := True;
          
              // Save the LogOut Data to the Loging Table
              DataQModule.TblUsers.Locate ('UserName', CurrentUser.UserName, [loCaseInsensitive, loPartialKey]);
              CurrentUser.UserActive := False;
              DataQModule.TblUsers.Edit;
              DataQModule.TblUsers.FieldByName('UserActive').AsBoolean := CurrentUser.UserActive;
              DataQModule.TblUsers.Refresh;

              DataQModule.TblLogging.InsertRecord([Date, Time, CurrentUser.UserID, UpperCase(CurrentUser.UserName), 'Logged Out']);
              DataQModule.TblLogging.Refresh;
          end;
    end
    else
    begin
         with LogInForm do
        if ShowModal = mrOk then
        begin
//            DBConnectBtn.Enabled := False;
        end;
    end;



 {   begin
        with LogInForm do
        if ShowModal = mrOk then
        begin
           CmBoxBranches.Clear;
           qryBranches.Open;
           qryBranches.First;
           if qryBranches.RecordCount <> 0 then
             begin
              while NOT qryBranches.Eof do
                begin
                  var BName := qryBranches.FieldByName('BranchName').AsString;
//                  GName := qryBranches.FieldByName('GroupName').AsString;
                    CmBoxBranches.Items.Add(BName);// +'  -  '+ GName);
                    qryBranches.Next;
                end;
             end;
            CmBoxBranches.ItemIndex := -1;
           DBConnectBtn.Enabled := False;
        end;
    end;      }


//    qryBranches.Open;
end;


procedure TMainForm.LogoImageDblClick(Sender: TObject);
begin
     HelpForm.ShowModal;
end;

end.
