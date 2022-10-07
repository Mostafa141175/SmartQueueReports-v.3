unit UnitQuePrinters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormQuePrinters = class(TForm)
    srcMyPrinters: TDataSource;
    MyPrinterDBGrid: TDBGrid;
    Panel1: TPanel;
    DeleteBtn: TButton;
    AddBtn: TButton;
    EditBtn: TButton;
    CloseBtn: TButton;
    Panel2: TPanel;
    qryBranches: TFDQuery;
    CmBoxBranches: TComboBox;
    CmBoxPrinters: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    qryPrinters: TFDQuery;
    PrinterNumberEdit: TEdit;
    Label3: TLabel;
    qryMyPrinter: TFDQuery;
    srcBranches: TDataSource;
    qryInsertPrinter: TFDQuery;
    qryDeleteID: TFDQuery;
    SaveBtn: TButton;
    CancelBtn: TButton;
    qryUpdateID: TFDQuery;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmBoxBranchesSelect(Sender: TObject);
    procedure CmBoxPrintersSelect(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure MyPrinterDBGridCellClick(Column: TColumn);
    procedure DeleteBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormQuePrinters: TFormQuePrinters;

  MyBranchID, MyPrinterID, InitPrinter : Integer;
  MyBranchName, MyPrinterName, BranchPrinterID, MySelectID : String;
  MyBranchSelect, MyPrinterSelect : Boolean;

implementation

{$R *.dfm}

uses MainUnit, UnitDataModule, UnitGlobal;

procedure TFormQuePrinters.AddBtnClick(Sender: TObject);
begin
    if (PrinterNumberEdit.Text <> '') 
   { or (MyServiceSelect)} then
    begin
       AddBtn.Enabled := False;
       InitPrinter := StrToInt(PrinterNumberEdit.Text);
       BranchPrinterID := '3000_'+  MyBranchID.ToString +'_'+ MyPrinterID.ToString;

       qryInsertPrinter.Params.ClearValues;
       qryInsertPrinter.Params[0].AsString := BranchPrinterID;
       qryInsertPrinter.Params[1].AsInteger := InitPrinter;
       qryInsertPrinter.Params[2].AsString := MyPrinterName;
       qryInsertPrinter.Params[3].AsInteger := MyBranchID;
       qryInsertPrinter.ExecSQL;
       DataQModule.tblQueServices.Refresh;
       qryMyPrinter.Refresh;

       PrinterNumberEdit.Text := '';
       CmBoxPrinters.ItemIndex := -1;
       MyPrinterSelect := False;
       MyBranchSelect := False;
    end
    else
    begin
       ShowMessage('يجب إدخال رقم الخدمة أولاً');
       Exit;
    end;
end;

procedure TFormQuePrinters.CancelBtnClick(Sender: TObject);
begin
    MyBranchSelect := False;
    MyPrinterSelect := False;
    EditBtn.Enabled := False;
    SaveBtn.Enabled := False;
    DeleteBtn.Enabled := False;
    AddBtn.Enabled := False;
    CmBoxBranches.Enabled := True;
    
    PrinterNumberEdit.Text := '';
    CmBoxPrinters.ItemIndex := -1;

    qryMyPrinter.Refresh;
end;

procedure TFormQuePrinters.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TFormQuePrinters.CmBoxBranchesSelect(Sender: TObject);
begin
     MyBranchSelect := False;
     MyPrinterDBGrid.Enabled := True;
     
    var SS := CmBoxBranches.Text;
    if qryBranches.Locate('BranchName', SS, [loCaseInsensitive, loPartialKey]) then
    begin
        MyBranchSelect := True;
        MyBranchID:= qryBranches.FieldByName('BranchID').Value;
        MyBranchName := qryBranches.FieldByName('BranchName').Value;
        qryMyPrinter.Open;
    end;
end;

procedure TFormQuePrinters.CmBoxPrintersSelect(Sender: TObject);
begin
     MyPrinterSelect := False;

    var SS := CmBoxPrinters.Text;
    if qryPrinters.Locate('PrinterName', SS, [loCaseInsensitive, loPartialKey]) then
    begin
        MyPrinterSelect := True;
        MyPrinterID:= qryPrinters.FieldByName('PrinterID').Value;
        MyPrinterName := qryPrinters.FieldByName('PrinterName').Value;
    end;

    AddBtn.Enabled := True;
    PrinterNumberEdit.Text := '';
end;

procedure TFormQuePrinters.DeleteBtnClick(Sender: TObject);
begin
     if MessageDlg('Are you sure you want to DELETE it...?!',
                TMsgDlgType.mtWarning, mbYesNo, 0) = mrYes then
     begin
        with qryDeleteID do
        begin
           Params[0].AsString := MySelectID ;
           ExecSQL;
        end;
         CmBoxPrinters.ItemIndex := -1;
         DeleteBtn.Enabled := False;
         EditBtn.Enabled := False;

         qryMyPrinter.Open;
         DataQModule.tblQueServices.Refresh;
         qryMyPrinter.Refresh;
     end;
end;

procedure TFormQuePrinters.EditBtnClick(Sender: TObject);
begin
     SaveBtn.Enabled := True;
     CancelBtn.Enabled := True;

     AddBtn.Enabled := False;
     CmBoxBranches.Enabled := False;
end;

procedure TFormQuePrinters.FormShow(Sender: TObject);
begin
    MyBranchSelect := False;
    MyPrinterSelect := False;
    EditBtn.Enabled := False;
    SaveBtn.Enabled := False;
    DeleteBtn.Enabled := False;
    AddBtn.Enabled := False;
    CmBoxBranches.Enabled := True;
    
    PrinterNumberEdit.Text := '';
    MyPrinterDBGrid.Enabled := False;
    
    CmBoxBranches.Clear;
    qryBranches.Open;
    qryBranches.First;
    if qryBranches.RecordCount <> 0 then
      begin
           while NOT qryBranches.Eof do
              begin
                  CmBoxBranches.Items.Add(qryBranches.FieldByName('BranchName').AsString);
                  qryBranches.Next;
              end;
      end;
         CmBoxBranches.ItemIndex := -1;


    CmBoxPrinters.Clear;
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
         CmBoxPrinters.ItemIndex := -1;
end;

procedure TFormQuePrinters.MyPrinterDBGridCellClick(Column: TColumn);
begin
   if MyPrinterDBGrid.Fields[0].Value <> NULL then
     begin
       MySelectID := MyPrinterDBGrid.Fields[0].Value;
       DeleteBtn.Enabled := True;
       EditBtn.Enabled := True;
     end;
end;

procedure TFormQuePrinters.SaveBtnClick(Sender: TObject);
begin
    if PrinterNumberEdit.Text <> '' then
    begin
       AddBtn.Enabled := False;
       InitPrinter := StrToInt(PrinterNumberEdit.Text);
       BranchPrinterID := '3000_'+  MyBranchID.ToString +'_'+ MyPrinterID.ToString;

       qryUpdateID.Params.ClearValues;
       qryUpdateID.Params[0].AsString := BranchPrinterID;
       qryUpdateID.Params[1].AsInteger := InitPrinter;
       qryUpdateID.Params[2].AsString := MyPrinterName;
       qryUpdateID.Params[3].AsString := MySelectID;
       qryUpdateID.ExecSQL;

       DataQModule.tblQuePrinters.Refresh;
       qryMyPrinter.Refresh;

       PrinterNumberEdit.Text := '';
       EditBtn.Enabled := True;
       DeleteBtn.Enabled := False;
       SaveBtn.Enabled := False;
       CmBoxBranches.Enabled := True;
       CmBoxPrinters.ItemIndex := -1;
//       MyServiceSelect := False;
//       MyBranchSelect := False;
    end
    else
    begin
       ShowMessage('يجب إدخال رقم الخدمة أولاً');
       Exit;
    end;
end;

end.
