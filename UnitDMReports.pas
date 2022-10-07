unit UnitDMReports;

interface

uses
  System.SysUtils, System.Classes, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.ODBCBase, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  frxExportPDF, frxExportXLS, frxClass, frxExportBaseDialog,
  frxDBSet, FireDAC.Comp.DataSet, frxExportXLSX, frxExportDOCX, frxExportCSV;

type
  TDMReports = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDConnectionReports: TFDConnection;
    frxRepLogFiles: TfrxReport;
    frxDSLogFiles: TfrxDBDataset;
    qryQueFiles: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxRepLogging: TfrxReport;
    frxDBLogging: TfrxDBDataset;
    qryLogging: TFDQuery;
    qryCustomer: TFDQuery;
    qryBranches: TFDQuery;
    qryBranchGroupes: TFDQuery;
    frxCustomer: TfrxDBDataset;
    frxBranch: TfrxDBDataset;
    frxBranchGroup: TfrxDBDataset;
    qryGetTickets: TFDQuery;
    SrcGetTickets: TDataSource;
    frxDsGetTicket: TfrxDBDataset;
    frxGetTicketsReport: TfrxReport;
    qryGetTicketView: TFDQuery;
    frxDsGetTicketsView: TfrxDBDataset;
    qryGetAllDetails: TFDQuery;
    frxXLSXExport1: TfrxXLSXExport;
    frxDOCXExport1: TfrxDOCXExport;
    frxDsGetAllDetails: TfrxDBDataset;
    frxRepExportAllDetails: TfrxReport;
    qryGetCurrentServiceID: TFDQuery;
    qryGetPrinterID: TFDQuery;
    qryGetCounterID: TFDQuery;
    frxDsGetPrinterID: TfrxDBDataset;
    frxDsGetServiceTypeID: TfrxDBDataset;
    frxDsGetCounterID: TfrxDBDataset;
    frxCurrentServiceIDReport: TfrxReport;
    frxCounterIDReport: TfrxReport;
    frxPrinterIDReport: TfrxReport;
    qryAllCounters: TFDQuery;
    SrcAllCounters: TDataSource;
    frxDsAllCounters: TfrxDBDataset;
    frxCSVExport1: TfrxCSVExport;
    qryAllServices: TFDQuery;
    frxDsAllServices: TfrxDBDataset;
    SrcAllServices: TDataSource;
    qryAllPrinters: TFDQuery;
    srcAllPrinters: TDataSource;
    frxDsAllPrinters: TfrxDBDataset;
    procedure frxCounterIDReportGetValue(const VarName: string;
      var Value: Variant);
    procedure frxPrinterIDReportGetValue(const VarName: string;
      var Value: Variant);
    procedure frxCurrentServiceIDReportGetValue(const VarName: string;
      var Value: Variant);
    procedure frxGetTicketsReportGetValue(const VarName: string;
      var Value: Variant);
    procedure frxRepExportAllDetailsGetValue(const VarName: string;
      var Value: Variant);
    procedure frxRepLogFilesGetValue(const VarName: string; var Value: Variant);
    procedure frxRepLoggingGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMReports: TDMReports;

implementation

Uses
  MainUnit, UnitReports ;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMReports.frxCounterIDReportGetValue(const VarName: string;
  var Value: Variant);
begin
   if VarName = 'StartDate' then  value := RepFromDate;
   if VarName = 'EndDate' then  value := RepToDate;
   if VarName = 'StartTime' then  value := RepFromTime;
   if VarName = 'EndTime' then  value := RepToTime;
end;

procedure TDMReports.frxGetTicketsReportGetValue(const VarName: string;
  var Value: Variant);
begin
   if VarName = 'StartDate' then  value := RepFromDate;
   if VarName = 'EndDate' then  value := RepToDate;
   if VarName = 'StartTime' then  value := RepFromTime;
   if VarName = 'EndTime' then  value := RepToTime;
end;

procedure TDMReports.frxPrinterIDReportGetValue(const VarName: string;
  var Value: Variant);
begin
   if VarName = 'StartDate' then  value := RepFromDate;
   if VarName = 'EndDate' then  value := RepToDate;
   if VarName = 'StartTime' then  value := RepFromTime;
   if VarName = 'EndTime' then  value := RepToTime;
end;

procedure TDMReports.frxRepExportAllDetailsGetValue(const VarName: string;
  var Value: Variant);
begin
   if VarName = 'StartDate' then  value := RepFromDate;
   if VarName = 'EndDate' then  value := RepToDate;
   if VarName = 'StartTime' then  value := RepFromTime;
   if VarName = 'EndTime' then  value := RepToTime;
end;

procedure TDMReports.frxRepLogFilesGetValue(const VarName: string;
  var Value: Variant);
begin
   if VarName = 'StartDate' then  value := RepFromDate;
   if VarName = 'EndDate' then  value := RepToDate;
   if VarName = 'StartTime' then  value := RepFromTime;
   if VarName = 'EndTime' then  value := RepToTime;
end;

procedure TDMReports.frxRepLoggingGetValue(const VarName: string;
  var Value: Variant);
begin
   if VarName = 'StartDate' then  value := RepFromDate;
   if VarName = 'EndDate' then  value := RepToDate;
   if VarName = 'StartTime' then  value := RepFromTime;
   if VarName = 'EndTime' then  value := RepToTime;
end;

procedure TDMReports.frxCurrentServiceIDReportGetValue(const VarName: string;
  var Value: Variant);
begin
   if VarName = 'StartDate' then  value := RepFromDate;
   if VarName = 'EndDate' then  value := RepToDate;
   if VarName = 'StartTime' then  value := RepFromTime;
   if VarName = 'EndTime' then  value := RepToTime;
end;

end.
