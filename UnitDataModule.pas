unit UnitDataModule;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase, FireDAC.VCLUI.Error, FireDAC.VCLUI.Login;

  
type
  TDataQModule = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    TblCustomer: TFDTable;
    TblBranches: TFDTable;
    TblLogging: TFDTable;
    TblUsers: TFDTable;
    TblUserGroups: TFDTable;
    FDConnectionSQL: TFDConnection;
    tblBrachGroups: TFDTable;
    TblQueFiles: TFDTable;
    tblQueTicketDetails: TFDTable;
    tblTickets: TFDTable;
    tblCounters: TFDTable;
    tblPrinters: TFDTable;
    tblServices: TFDTable;
    TblUserGroupsUserGroupID: TIntegerField;
    TblUserGroupsUserGroupName: TWideStringField;
    TblUserGroupsUserInfo: TBooleanField;
    TblUserGroupsAddUser: TBooleanField;
    TblUserGroupsDelUser: TBooleanField;
    TblUserGroupsModUser: TBooleanField;
    TblUserGroupsGetFile: TBooleanField;
    TblUserGroupsGetReport: TBooleanField;
    TblUserGroupsCounterInfo: TBooleanField;
    TblUserGroupsFunctionInfo: TBooleanField;
    TblUserGroupsActionInfo: TBooleanField;
    TblUserGroupsCustomerInfo: TBooleanField;
    TblUserGroupsBranchInfo: TBooleanField;
    TblQueFilesQFileMD5Hash: TWideStringField;
    TblQueFilesBranchID: TSmallintField;
    TblQueFilesGroupID: TSmallintField;
    TblQueFilesQLogName: TWideStringField;
    TblQueFilesLogDate: TSQLTimeStampField;
    TblQueFilesUserID: TSmallintField;
    TblQueFilesUserName: TWideStringField;
    tblSystemInfo: TFDTable;
    tblSystemInfoMajor_Ver: TIntegerField;
    tblSystemInfoMinor_Ver: TIntegerField;
    tblSystemInfoRelease_Ver: TIntegerField;
    tblSystemInfoBuild_Ver: TIntegerField;
    tblSystemInfoDate_Ver: TWideStringField;
    tblSystemInfoProductName: TWideStringField;
    tblSystemInfoOrganisation: TWideStringField;
    TblLoggingLogingDate: TDateField;
    TblLoggingLogingTime: TTimeField;
    TblLoggingLogUserID: TIntegerField;
    TblLoggingLogingUser: TWideStringField;
    TblLoggingLogUserAction: TWideStringField;
    TblCustomerCustomerID: TSmallintField;
    TblCustomerCustomerName: TWideStringField;
    TblCustomerCustomerEnName: TWideStringField;
    TblCustomerLocation: TWideStringField;
    TblCustomerCustomerLogo: TBlobField;
    TblUsersUserID: TIntegerField;
    TblUsersUserName: TWideStringField;
    TblUsersPasswordHash: TWideStringField;
    TblUsersPasswordHint: TWideStringField;
    TblUsersUserGroup: TIntegerField;
    TblUsersUserDate: TSQLTimeStampField;
    TblUsersUserActive: TBooleanField;
    tblQueCounters: TFDTable;
    tblQuePrinters: TFDTable;
    tblQueServices: TFDTable;
    tblQuePrintersMyPrinterID: TWideStringField;
    tblQuePrintersPrinterID: TSmallintField;
    tblQuePrintersPrinterName: TWideStringField;
    tblQuePrintersBranchPrinterID: TSmallintField;
    tblQueServicesMyInitServiceID: TWideStringField;
    tblQueServicesServiceID: TSmallintField;
    tblQueServicesServiceName: TWideStringField;
    tblQueServicesBranchServiceID: TSmallintField;
    tblQueCountersMyCounterID: TWideStringField;
    tblQueCountersCounterID: TSmallintField;
    tblQueCountersCounterName: TWideStringField;
    tblQueCountersBranchCounterID: TSmallintField;
    tblCountersCounterID: TSmallintField;
    tblCountersCounterName: TWideStringField;
    tblPrintersPrinterID: TSmallintField;
    tblPrintersPrinterName: TWideStringField;
    tblServicesServiceID: TSmallintField;
    tblServicesServiceName: TWideStringField;
    tblBranchRelation: TFDTable;
    tblBrachGroupsGroupID: TSmallintField;
    tblBrachGroupsGroupName: TWideStringField;
    tblBranchRelationBranchRelationID: TWideStringField;
    tblBranchRelationBranchID: TSmallintField;
    tblBranchRelationGroupID: TSmallintField;
    tblRelationView: TFDTable;
    tblRelationViewBranchRelationID: TWideStringField;
    tblRelationViewBranchID: TSmallintField;
    tblRelationViewGroupID: TSmallintField;
    tblRelationViewBranchName: TWideStringField;
    tblRelationViewGroupName: TWideStringField;
    tblTicketsTicketID: TWideStringField;
    tblTicketsTicketNo: TSmallintField;
    tblTicketsShiftID: TSmallintField;
    tblTicketsIssuedServiceID: TSmallintField;
    tblTicketsIssuerID: TSmallintField;
    tblTicketsTicketDate: TDateField;
    tblTicketsTicketTime: TTimeField;
    tblTicketsCurrentServiceID: TSmallintField;
    tblTicketsCounterID: TSmallintField;
    tblTicketsBranchID: TSmallintField;
    tblTicketsGroupID: TSmallintField;
    tblTicketsGroupName: TWideStringField;
    tblTicketsBranchName: TWideStringField;
    TblBranchesBranchID: TSmallintField;
    TblBranchesBranchName: TWideStringField;
    tblQueTicketDetailsTicketLineHashID: TWideStringField;
    tblQueTicketDetailsTicketID: TWideStringField;
    tblQueTicketDetailsUserID: TSmallintField;
    tblQueTicketDetailsBranchID: TSmallintField;
    tblQueTicketDetailsGroupID: TSmallintField;
    tblQueTicketDetailsTicketDate: TDateField;
    tblQueTicketDetailsTicketTime: TTimeField;
    tblQueTicketDetailsShiftID: TSmallintField;
    tblQueTicketDetailsIssuedServiceID: TSmallintField;
    tblQueTicketDetailsIssuerID: TSmallintField;
    tblQueTicketDetailsTicketNo: TSmallintField;
    tblQueTicketDetailsWaitingNo: TSmallintField;
    tblQueTicketDetailsActionDate: TDateField;
    tblQueTicketDetailsActionTime: TTimeField;
    tblQueTicketDetailsActionName: TWideStringField;
    tblQueTicketDetailsCurrentServiceID: TSmallintField;
    tblQueTicketDetailsCounterID: TSmallintField;
    tblQueTicketDetailsWaitingTime: TTimeField;
    tblQueTicketDetailsServiceTime: TTimeField;
    tblQueTicketDetailsWaitingSeconds: TIntegerField;
    tblQueTicketDetailsServiceSeconds: TIntegerField;
    tblQueTicketDetailsIsComplete: TBooleanField;
    procedure FDConnectionSQLAfterConnect(Sender: TObject);
    procedure FDConnectionSQLAfterDisconnect(Sender: TObject);
    procedure FDConnectionSQLBeforeDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataQModule: TDataQModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Uses MainUnit, UnitGlobal, UnitSQLSetting ;

{

procedure TDataModuleCobra.OpenMsSqlDb(const ServerName, ServerPort, Database,
  UserName, Password: String);
var
  S, Server: string;
const
  ConnectionString =
    'Provider=SQLOLEDB.1;Persist Security Info=False;Initial Catalog=;Data Source=';
  ServerText = ';Data Source=';
  UserIdText = ';User ID=';
  PasswordText = ';Password=';
  DatabaseText = ';Initial Catalog=';
  IntegratedSecurityText = ';Integrated Security=SSPI';
begin
  if (not ADOConn.Connected) then
  begin
    Server := ServerName;
    if Trim(ServerPort) > '' then Server := Server + ',' + ServerPort;

    S := ConnectionString;
    S := StringReplace(S, DatabaseText, DatabaseText + Database, []);
    S := StringReplace(S, ServerText, ServerText + Server, []);
    if UserName > '' then
    begin
      S := S + UserIdText + UserName;
      S := S + PasswordText + password;
    end
    else
      S := S + IntegratedSecurityText;
    ADOConn.ConnectionString := S;
    try
      ADOConn.Open;
    except
      on E: Exception do 
             MainForm.bsSkinMessage1.MessageDlg(e.Message,mtError, [mbOK],0);
    end;   
  end;
end;

}

procedure TDataQModule.FDConnectionSQLAfterConnect(Sender: TObject);
begin

     MainForm.StatusInfoBar.Panels[0].Text := ' Connected to server: ' + ServerName ;

     tblSystemInfo.Open;

     DBMajor := tblSystemInfoMajor_Ver.AsInteger;
     DBMinor := DataQModule.tblSystemInfoMinor_Ver.AsInteger;
     DBRelease := DataQModule.tblSystemInfoRelease_Ver.AsInteger;
     DBBuild  := DataQModule.tblSystemInfoBuild_Ver.AsInteger;
     DBDateVer := DataQModule.tblSystemInfoDate_Ver.AsString;
     DBEver := ' DBE: ' + MainForm.AddZero(DBMajor, 2) +'.'+ MainForm.AddZero(DBMinor, 2) +'.'+ MainForm.AddZero(DBRelease, 2) +'.'+ MainForm.AddZero(DBBuild, 2) +' '+ DBDateVer;

     SQLMajor := MainForm.AddZero(DBMajor, 2);
     SQLMainor :=  MainForm.AddZero(DBMinor, 2);
     SQLRelease := MainForm.AddZero(DBRelease, 2);
     SQLVersion :=  SQLMajor +'.'+ SQLMainor +'.'+ SQLRelease +'.'+ MainForm.AddZero(DBBuild, 2);

     GUIMajor := MainForm.AddZero(MAJ_VER, 2);
     GUIMainor :=  MainForm.AddZero(MIN_VER, 2);
     GUIRelease := MainForm.AddZero(REL_VER, 2);
     GUIVersion :=  GUIMajor +'.'+ GUIMainor +'.'+ GUIRelease +'.'+ MainForm.AddZero(BLD_VER, 2);


     //     MainForm.LblDBEver.Caption := DBEver;
     MainForm.StatusInfoBar.Panels[3].Text := DBEver;

     
     if not ValidateSQLDBandSoftwareVersions(SQLVersion, GUIVersion, aMessage) then
        begin
           ShowMessage(aMessage +#13#13+ 'Please select the correct Database...!!!');
           Exit;
        end;


       MainForm.ActionAfterConnect.Execute;


       MainForm.LoginBtn.SetFocus;
       FormSQLSetting.DBConnectBtn.Enabled := False;
       FormSQLSetting.DisconnectBtn.Enabled := True;
       
     TblBranches.Open;
     TblCustomer.Open;
     TblLogging.Open;
     TblQueFiles.Open;
     TblUsers.Open;
     tblBrachGroups.Open;
     tblCounters.Open;
     tblPrinters.Open;
     tblServices.Open;
     tblTickets.Open;
     tblSystemInfo.Open;

     tblQueServices.Open;
     tblQueCounters.Open;
     tblQuePrinters.Open;
     tblBranchRelation.Open;

end;

procedure TDataQModule.FDConnectionSQLAfterDisconnect(Sender: TObject);
begin
//     MainForm.Caption := MainFormCaption +  '   ... Database not Connected ...!';
     MainForm.StatusInfoBar.Panels[0].Text := ' Database not Connected ...!';
     MessageDlg('SQL Server Connection Lost...!', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);

     MainForm.ActionAfterDisconnect.Execute;

//     MainForm.DBConnectBtn.Caption := 'أتصل بالبيانات';
//     MainForm.DBConnectBtn.Hint := 'اتصل بالبيانات';
//     MainForm.DBConnectBtn.Enabled := True;

     FormSQLSetting.DBConnectBtn.Enabled := True;
     FormSQLSetting.DisconnectBtn.Enabled := False;
end;

procedure TDataQModule.FDConnectionSQLBeforeDisconnect(Sender: TObject);
begin
     TblBranches.Close;
     TblCustomer.Close;
     TblLogging.Close;
     TblQueFiles.Close;
     TblUsers.Close;
     tblCounters.Close;
     tblPrinters.Close;
     tblServices.Close;
     tblTickets.Close;
     tblSystemInfo.Close;
     
     tblQueServices.Close;
     tblQueCounters.Close;
     tblQuePrinters.Close;
     tblBranchRelation.Close;
     

     

  {    if CurrentUser.UserActive then
        begin
            DataQModule.TblUsers.Edit;
            DataQModule.TblUsers.FieldByName('UserActive').AsBoolean := False;
            DataQModule.TblUsers.Refresh;

            DataQModule.TblLogging.Open;
            DataQModule.TblLogging.InsertRecord([Date, Time, DataQModule.TblUsersUserID.AsInteger, 
                                           UpperCase(DataQModule.TblUsersUserName.AsString), 'Automatic Logged Out']);
            DataQModule.TblLogging.Refresh;
        end; }
        
end;

end.
