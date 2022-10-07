unit UnitReports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXCalendars, Vcl.Samples.Calendar, Vcl.ComCtrls, frxClass,
  frxPreview, Vcl.ExtCtrls, Vcl.WinXPickers, Vcl.Mask, sMaskEdit,
  sCustomComboEdit, sToolEdit, scControls, scExtControls, Vcl.NumberBox;

type
  TFormReport = class(TForm)
    qryBranchesMOS: TFDQuery;
    Panel1: TPanel;
    CmBoxBranches: TComboBox;
    LblServices: TLabel;
    CloseBtn: TButton;
    CmBoxGroups: TComboBox;
    LblTickets: TLabel;
    CmBoxTickets: TComboBox;
    LblBraches: TLabel;
    CmBoxService: TComboBox;
    LblFromDate: TLabel;
    LblToDate: TLabel;
    LblCounters: TLabel;
    CmBoxCounters: TComboBox;
    qryTickets: TFDQuery;
    qryGroups: TFDQuery;
    qryServices: TFDQuery;
    qryCounters: TFDQuery;
    LblPrinters: TLabel;
    CmBoxPrinters: TComboBox;
    qryPrinters: TFDQuery;
    TicketsRepBtn: TButton;
    CountersRepBtn: TButton;
    ServicesRepBtn: TButton;
    PrintersRepBtn: TButton;
    LoggingRepBtn: TButton;
    ToDateEdit: TsDateEdit;
    FromDateEdit: TsDateEdit;
    FilesRepBtn: TButton;
    FromTimeEdit: TscTimeEdit;
    ToTimeEdit: TscTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    SrcGroup: TDataSource;
    qryBranches: TFDQuery;
    TicketNumberBox: TNumberBox;
    Label3: TLabel;
    FDQuery1: TFDQuery;
    procedure TicketsRepBtnClick(Sender: TObject);
    procedure CountersRepBtnClick(Sender: TObject);
    procedure ServicesRepBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrintersRepBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure ReportSearchParameters ;
    procedure LoggingRepBtnClick(Sender: TObject);
    procedure FromDateEditChange(Sender: TObject);
    procedure ToDateEditChange(Sender: TObject);
    procedure FilesRepBtnClick(Sender: TObject);
    procedure FromTimeEditChange(Sender: TObject);
    procedure ToTimeEditChange(Sender: TObject);
    procedure CmBoxGroupsSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReport: TFormReport;

  xDates, xTimes, xGroup, xBranch, xService, xCounter, xTicket, xPrinter,
  RepFromDate, RepToDate, RepFromTime, RepToTime : String; 

//  BranchIDSelected : Boolean;

  RepQrySerchParams : String;

implementation

{$R *.dfm}

uses UnitDMReports, MainUnit;


procedure TFormReport.ReportSearchParameters;
begin
     RepQrySerchParams := '';
     xDates := '';
     xTimes := '';
     xGroup := '';
     xBranch := '';
     xService := '';
     xCounter := '';
     xTicket := '';
     xPrinter := '';

//   Date section
    xDates :=
    ' AND [TicketDate] >= ' + #39+  RepFromDate  +#39+
    ' AND [TicketDate] <= ' + #39+  RepToDate  +#39+' ';

//   Time section
    xTimes :=
    ' AND [TicketTime] >= ' + #39+  RepFromTime  +#39+
    ' AND [TicketTime] <= ' + #39+  RepToTime  +#39+' ';

//   Groups section
    if CmBoxGroups.Text <> 'ALL ...!' then
    xGroup := ' AND [GroupName] = ' + #39+  CmBoxGroups.Text  +#39+' ';


//   Branch section
    if CmBoxBranches.Text <> 'ALL ...!' then
    xBranch := ' AND [BranchName] = ' + #39+  CmBoxBranches.Text  +#39+' ';

//   Tickets No section
//    if CmBoxTickets.Text <> 'ALL ...!' then
//    xTicket := ' AND [TicketNo] = ' + #39+  CmBoxTickets.Text  +#39+' ';
    if TicketNumberBox.Value <> 0 then
    xTicket := ' AND [TicketNo] = ' + #39+  TicketNumberBox.Value.ToString  +#39+' ';

//   Service Name section
    if CmBoxService.Text <> 'ALL ...!' then
    xService := ' AND [ServiceName] = ' + #39+  CmBoxService.Text  +#39+' ';

//   Counter Name section
    if CmBoxCounters.Text <> 'ALL ...!' then
    xCounter := ' AND [CounterName] = ' + #39+  CmBoxCounters.Text  +#39+' ';

//   Counter Name section
    if CmBoxPrinters.Text <> 'ALL ...!' then
    xPrinter := ' AND [PrinterName] = ' + #39+  CmBoxPrinters.Text  +#39+' ';
       
    RepQrySerchParams := xDates + xTimes + xGroup + xBranch + xService + xCounter + xTicket + xPrinter ; 
end;


procedure TFormReport.FromTimeEditChange(Sender: TObject);
begin
     RepFromTime := FromTimeEdit.Time;
end;

procedure TFormReport.TicketsRepBtnClick(Sender: TObject);
begin
    ReportSearchParameters ;

    DMReports.qryGetTicketView.SQL.Clear;
    With DMReports.qryGetTicketView.Params do
    begin
         Add( 'TicketID', ftWideString, ptInput);
    end;

    DMReports.qryGetTicketView.SQL.Text := (
    ' SELECT * FROM [GetTicketDetailsView] ' +
    ' WHERE [TicketID] = :TicketID ' +

     RepQrySerchParams +
    
    ' ORDER BY [TicketDate] DESC,  [GroupID], [BranchID],  [ActionTime] ');

     DMReports.frxGetTicketsReport.ShowReport(False);
end;

procedure TFormReport.ToDateEditChange(Sender: TObject);
begin
     RepToDate :=  FormatDateTime('yyyy-MM-dd', ToDateEdit.Date);
end;

procedure TFormReport.ToTimeEditChange(Sender: TObject);
begin
     RepToTime := ToTimeEdit.Time;
end;

procedure TFormReport.CmBoxGroupsSelect(Sender: TObject);
begin
  if CmBoxGroups.Text <> 'ALL ...!' then
    begin
     var BGroup := CmBoxGroups.Text;
     if qryGroups.Locate('GroupName', BGroup, [loCaseInsensitive, loPartialKey]) then
        BranchGroup := qryGroups.FieldByName('GroupID').Value;

        FDQuery1.Params[0].Value := BranchGroup;
   
        CmBoxBranches.Clear;
        CmBoxBranches.Items.Add('ALL ...!');
        FDQuery1.Open;
        FDQuery1.First;
        if FDQuery1.RecordCount <> 0 then
          begin
            while NOT FDQuery1.Eof do
            begin
              CmBoxBranches.Items.Add(FDQuery1.FieldByName('BranchName').AsString);
              FDQuery1.Next;
            end;
          end;
       CmBoxBranches.ItemIndex := 0;
    end
    else
    begin
       CmBoxBranches.Clear;
       CmBoxBranches.Items.Add('ALL ...!');
       qryBranchesMOS.Open;
       qryBranchesMOS.First;
       if qryBranchesMOS.RecordCount <> 0 then
         begin
           while NOT qryBranchesMOS.Eof do
           begin
             CmBoxBranches.Items.Add(qryBranchesMOS.FieldByName('BranchName').AsString);
             qryBranchesMOS.Next;
           end;
         end;
       CmBoxBranches.ItemIndex := 0;
    end;
end;

procedure TFormReport.CountersRepBtnClick(Sender: TObject);
begin
    ReportSearchParameters ;

    DMReports.qryGetCounterID.SQL.Clear;

    With DMReports.qryGetCounterID.Params do
    begin
         Add( 'COUNTERID', ftSmallint, ptInput);
    end;

    DMReports.qryGetCounterID.SQL.Text := (
    ' SELECT *  FROM [IsCompleteTicketsView] ' +
    ' WHERE [CounterID] = :CounterID ' +

    RepQrySerchParams +
    
    ' ORDER BY  [TicketDate] DESC, [GroupID], [BranchID], [ActionTime] ');

    DMReports.frxCounterIDReport.ShowReport(False);
end;

procedure TFormReport.PrintersRepBtnClick(Sender: TObject);
begin
    ReportSearchParameters ;

    DMReports.qryGetPrinterID.SQL.Clear;

    With DMReports.qryGetPrinterID.Params do
    begin
         Add( 'PrinterID', ftSmallint, ptInput);
    end;

    DMReports.qryGetPrinterID.SQL.Text := (
    ' SELECT *  FROM [GetTicketDetailsView] ' +
    ' WHERE ([IssuerID] = :PrinterID) ' +
    ' AND ([ActionName] = ' + #39+  'PRINT' + #39+  ' OR [ActionName] = ' + #39+  'SELECT' + #39+  ') '+

    RepQrySerchParams +
    
    ' ORDER BY [TicketDate] DESC, [IssuerID], [TicketTime] ');

    DMReports.frxPrinterIDReport.ShowReport(True);
end;

procedure TFormReport.ServicesRepBtnClick(Sender: TObject);
begin
    ReportSearchParameters ;

    DMReports.qryGetCurrentServiceID.SQL.Clear;

    With DMReports.qryGetCurrentServiceID.Params do
    begin
         Add( 'CurrentServiceID', ftSmallint, ptInput);
    end;

    DMReports.qryGetCurrentServiceID.SQL.Text := (
    ' SELECT *  FROM [IsCompleteTicketsView] ' +
    ' WHERE [CurrentServiceID] = :CurrentServiceID ' +

    RepQrySerchParams +
    
    ' ORDER BY  [TicketDate] DESC, [CurrentServiceID], [ActionTime] ');
    
     DMReports.frxCurrentServiceIDReport.ShowReport(False);
end;

procedure TFormReport.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TFormReport.FilesRepBtnClick(Sender: TObject);
begin
    DMReports.qryQueFiles.SQL.Clear;
   
    DMReports.qryQueFiles.SQL.Text := (
    ' SELECT [Branches].[BranchID] ,[BranchName] ,[GroupID] ,[QLogName] ,[LogDate] ,[UserID] ,[UserName] ' +
    ' FROM [QueSysFiles], [Branches] ' +
    ' WHERE [Branches].[BranchID] = [QueSysFiles].[BranchID] ' +
    ' AND [LogDate] >= ' + #39+  RepFromDate  +#39+
    ' AND [LogDate] <= ' + #39+  RepToDate  +#39+' ' +
//    ' AND [LogDate] >= ' + #39+  RepFromTime  +#39+
//    ' AND [LogDate] <= ' + #39+  RepToTime  +#39+' ' +
    ' ORDER BY LogDate ');

     DMReports.frxRepLogFiles.ShowReport(False);
end;

procedure TFormReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    qryBranches.Close;
end;

procedure TFormReport.FormShow(Sender: TObject);
begin
    FromDateEdit.Date := Date;
    ToDateEdit.Date := Date;
    RepFromDate := FormatDateTime('yyyy-MM-dd', FromDateEdit.Date);
    RepToDate := FormatDateTime('yyyy-MM-dd', ToDateEdit.Date);
    RepFromTime := FromTimeEdit.Time;
    RepToTime := ToTimeEdit.Time;
    

    DMReports.FDConnectionReports.Connected := False;
    DMReports.FDConnectionReports.Connected := True;

    CmBoxBranches.Clear;
    CmBoxBranches.Items.Add('ALL ...!');
    qryBranchesMOS.Open;
    qryBranchesMOS.First;
    if qryBranchesMOS.RecordCount <> 0 then
      begin
      while NOT qryBranchesMOS.Eof do
         begin
           CmBoxBranches.Items.Add(qryBranchesMOS.FieldByName('BranchName').AsString);
           qryBranchesMOS.Next;
         end;
      end;
         CmBoxBranches.ItemIndex := 0;


    CmBoxGroups.Clear;
    CmBoxGroups.Items.Add('ALL ...!');
    qryGroups.Open;
    qryGroups.First;
    if qryGroups.RecordCount <> 0 then
      begin
      while NOT qryGroups.Eof do
         begin
           CmBoxGroups.Items.Add(qryGroups.FieldByName('GroupName').AsString);
           qryGroups.Next;
         end;
      end;
         CmBoxGroups.ItemIndex := 0;

         
    CmBoxService.Clear;
    CmBoxService.Items.Add('ALL ...!');
    qryServices.Open;
    qryServices.First;
    if qryServices.RecordCount <> 0 then
      begin
      while NOT qryServices.Eof do
         begin
           CmBoxService.Items.Add(qryServices.FieldByName('ServiceName').AsString);
           qryServices.Next;
         end;
      end;
         CmBoxService.ItemIndex := 0;


    CmBoxCounters.Clear;
    CmBoxCounters.Items.Add('ALL ...!');
    qryCounters.Open;
    qryCounters.First;
    if qryCounters.RecordCount <> 0 then
      begin
      while NOT qryCounters.Eof do
         begin
           CmBoxCounters.Items.Add(qryCounters.FieldByName('CounterName').AsString);
           qryCounters.Next;
         end;
      end;
         CmBoxCounters.ItemIndex := 0;



    CmBoxTickets.Clear;
    CmBoxTickets.Items.Add('ALL ...!');
    qryTickets.Open;
    qryTickets.First;
    if qryTickets.RecordCount <> 0 then
      begin
      while NOT qryTickets.Eof do
         begin
           CmBoxTickets.Items.Add(qryTickets.FieldByName('TicketNo').AsString);
           qryTickets.Next;
         end;
      end;
         CmBoxTickets.ItemIndex := 0;


    CmBoxPrinters.Clear;
    CmBoxPrinters.Items.Add('ALL ...!');
    qryPrinters.Open;
    qryPrinters.First;
    if qryPrinters.RecordCount <> 0 then
      begin
      while NOT qryPrinters.Eof do
         begin
           CmBoxPrinters.Items.Add(qryPrinters.FieldByName('PrinterName').AsString);
           qryPrinters.Next;
         end;
      end;
         CmBoxPrinters.ItemIndex := 0;
end;

procedure TFormReport.FromDateEditChange(Sender: TObject);
begin
     RepFromDate := FormatDateTime('yyyy-MM-dd', FromDateEdit.Date);
end;

procedure TFormReport.LoggingRepBtnClick(Sender: TObject);
begin
    DMReports.qryLogging.SQL.Clear;
   
    DMReports.qryLogging.SQL.Text := (
    ' SELECT *  FROM Logging ' +
    ' WHERE [LogingDate] >= ' + #39+  RepFromDate  +#39+
    ' AND [LogingDate] <= ' + #39+  RepToDate  +#39+' ' +
    ' AND [LogingTime] >= ' + #39+  RepFromTime  +#39+
    ' AND [LogingTime] <= ' + #39+  RepToTime  +#39+' ' +
    ' ORDER BY LogingDate, LogingTime ');

     DMReports.frxRepLogging.ShowReport(False);
end;

end.
