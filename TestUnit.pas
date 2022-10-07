unit TestUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.Bind.Components, Data.Bind.DBScope, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Vcl.ExtCtrls, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCBase,
  System.Hash, Vcl.CheckLst, Vcl.WinXCalendars, Vcl.WinXPickers, Vcl.ComCtrls,
  Vcl.ControlList, System.Rtti, Vcl.Imaging.pngimage, Vcl.VirtualImage, sPanel,
  sMonthCalendar, Vcl.Mask, scControls, scCalendar, AdvDateTimePicker,
  sMaskEdit, sCustomComboEdit, sToolEdit;

type
  TTestForm = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    CloseBtn: TButton;
    MoveToTableBtn: TButton;
    MoveToTxtBtn: TButton;
    MoveToSQLBtn: TButton;
    fdSQLConn: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    CalendarPicker1: TCalendarPicker;
    TimePicker1: TTimePicker;
    TreeView1: TTreeView;
    FDBatchMove1: TFDBatchMove;
    FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader;
    FDBatchMoveTextWriter1: TFDBatchMoveTextWriter;
    PassEdit: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    MemoLog: TMemo;
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
    scDateEdit1: TscDateEdit;
    sDateEdit1: TsDateEdit;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MoveToSQLBtnClick(Sender: TObject);
    procedure MoveToTxtBtnClick(Sender: TObject);
    procedure MoveToTableBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PassEditChange(Sender: TObject);
    procedure CalendarPicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Log( const Line: string );
    procedure LogFmt( const Line: string; const Args: array of const );
  end;

var
  TestForm: TTestForm;


const
  GLUE = '::';
  cPASSWORD = 'myownpassword';

  
implementation

{$R *.dfm}


uses
  DECCipherBase,
  DECCipherModes,
  DECCipherFormats,
  DECCiphers,
  DECHash,
  CryptoUtils,

  MainUnit, UnitGlobal;


procedure TTestForm.Button1Click(Sender: TObject);
var
   HexOut : String;
  Cipher     : TCipher_TwoFish;
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
 
//    var SpecialChar := ('!#$%&()*+,-./:;<=>?@[\]^_{}~');
//    var PassCharUp  := ('ABCDEFGHIJKLMNOPQRSTUVWXYZ');
//    var PassCharLo  := ('abcdefghijklmnopqrstuvwxyz');
//    var PassNumr    := ('1234567890');                               

   MemoLog.Lines.Clear;
//   var ST := '2021-10-31 11:26:25, 0007, 01, 00, 0101, 0000, 2021-10-31 11:26:25, PRINT     , 01, 00, 00000000, 00000000, 0';
   var ST :=  PassEdit.Text;
//         MemoLog.Lines.Add(UpperCase(System.Hash.THashFNV1a32.GetHashString(ST)));
         MemoLog.Lines.Add(UpperCase(System.Hash.THashMD5.GetHashString(ST)));
         MemoLog.Lines.Add(UpperCase(System.Hash.THashSHA1.GetHashString(ST)));
         MemoLog.Lines.Add(UpperCase(System.Hash.THashSHA2.GetHashString(ST)));
         MemoLog.Lines.Add('');
         MemoLog.Lines.Add(UpperCase(AES128_Encrypt('Mostafa' ,PassEdit.Text)));
//         MemoLog.Lines.Add(UpperCase(AES128_Decrypt('Mostafa' ,'P5VGXNX9Y0/PG2UXFHBIFW==')));
         MemoLog.Lines.Add('');
         
         

//     working good
//    Edit2.Text := GetStringMD5(edtHashSource.Text);

//     working good
//    Edit2.Text := UpperCase(System.Hash.THashMD5.GetHashString(edtHashSource.Text));



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
      SourceText := PassEdit.Text;
      Input := System.SysUtils.BytesOf(SourceText);

      // Encrypt
      Output := Cipher.EncodeBytes(Input);
      // clean up inside the cipher instance, which also removes the key from RAM
      Cipher.Done;

      for i := 0 to high(Output) do
         HexOut := HexOut + IntToHex(Output[i], 2);

         Edit2.Text := HexOut;

      // Decrypt
      Cipher.Init(RawByteString(StringOf(KeyKDF)), IV, 0);
      Output := Cipher.DecodeBytes(Output);
      // clean up inside the cipher instance, which also removes the key from RAM
      Cipher.Done;

      
      HexOut := '';
      for i := 0 to high(Output) do
         HexOut := HexOut + IntToHex(Output[i], 2);
        MemoLog.Lines.Add(HexOut);
      
      SourceText := RawByteString(System.SysUtils.StringOf(Output));

      MemoLog.Lines.Add('Decrypted data: ' + SourceText);
    except
      on E: Exception do
        raise Exception.Create(E.ClassName + ': ' + E.Message);
    end;

  finally
    Cipher.Free;
  end;


end;

procedure TTestForm.PassEditChange(Sender: TObject);
begin
   var PassLenChars := False;
   var PassUpChars := False;
   var PassLoChars := False; 
   var PassNmrChars := False; 
   var PassSpecialChars := False;
   var aPassword := PassEdit.Text ;
   
   If Length(aPassword) >= 6 then PassLenChars := True;
     For var I := 1 to Length(aPassword) Do
       Begin
         var TempChr := Copy(aPassword, I, 1);
          If Pos(TempChr, PassNumr) <> 0 then  PassNmrChars := True;
           If Pos(TempChr, PassCharUp) <> 0 Then  PassUpChars := True;
          If Pos(TempChr, PassCharLo) <> 0 Then  PassLoChars := True;
         If Pos(TempChr, SpecialChar) <> 0 Then  PassSpecialChars := True;
       End;

     
     if PassUpChars = True then ImgUpChar.ImageIndex := 51
     else ImgUpChar.ImageIndex := 50;

     if PassLoChars = True then ImgLoChar.ImageIndex := 51
     else ImgLoChar.ImageIndex := 50;

     if PassNmrChars = True then ImgNmrChar.ImageIndex := 51
     else ImgNmrChar.ImageIndex := 50;

     if PassSpecialChars = True then ImgSpecialChar.ImageIndex := 51
     else ImgSpecialChar.ImageIndex := 50;

     if PassLenChars = True then ImgLengthChar.ImageIndex := 51
     else ImgLengthChar.ImageIndex := 50;
end;

procedure TTestForm.CalendarPicker1Change(Sender: TObject);
begin
     ShowMessage('Selected Date is:  ' + FormatDateTime('yyyy-MM-dd', CalendarPicker1.Date));
end;

procedure TTestForm.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TTestForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     fdSQLConn.Connected := False;
end;

procedure TTestForm.FormShow(Sender: TObject);
begin
     try
         fdSQLConn.Connected := True;
     finally
         
     end;
end;

procedure TTestForm.Log(const Line: string);
begin
    MemoLog.Lines.Add( Line )
end;

procedure TTestForm.LogFmt(const Line: string; const Args: array of const);
begin
     Log( Format( Line, Args ) );
end;

function FindRootNode(ACaption: String; ATreeView: TTreeView): TTreeNode;
var LCount: Integer;
begin
  result := nil;
  LCount := 0;
  while (LCount < ATreeView.Items.Count) and (result = nil) do
  begin
    if (ATreeView.Items.Item[LCount].Text = ACaption) and (ATreeView.Items.Item[LCount].Parent = nil) then
      result := ATreeView.Items.Item[LCount];
    inc(LCount);
  end;
end;

procedure TTestForm.MoveToSQLBtnClick(Sender: TObject);
Var
  Node : TTreeNode;
//  i    : Integer;
begin
     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('SELECT GroupID, GroupName FROM BranchGroups');
     FDQuery1.SQL.Add('ORDER BY GroupID');
     FDQuery1.Open;
     FDQuery1.First;

      TreeView1.Items.Clear;
     TreeView1.Items.BeginUpdate;
     try
       if FDQuery1.RecordCount <> 0 then
        begin
          while NOT FDQuery1.Eof do
            begin
               Node := TreeView1.Items.Add(nil , FDQuery1.FieldByName('GroupName').AsString);
               Node.ImageIndex:=0;
               FDQuery1.Next;
            end;
        end;
     finally
         TreeView1.Items.EndUpdate;
         TreeView1.FullExpand;
     end;

end;

procedure TTestForm.MoveToTableBtnClick(Sender: TObject);
var
  Node : TTreeNode;
  LDestNode: TTreeNode;
begin
     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('SELECT DISTINCT GroupID, GroupName, ShiftID, BranchName FROM GetTicketDetailsView');
     FDQuery1.SQL.Add('ORDER BY GroupID');
     FDQuery1.Open;
     FDQuery1.First;
//     TreeView1.Selected;
//      TreeView1.Items.Clear;

     TreeView1.Items.BeginUpdate;
     try
        for var I := 0 to  TreeView1.Items.Count do
           begin
              LDestNode := FindRootNode(FDQuery1.FieldByName('GroupName').AsString, TreeView1);
              Node := TreeView1.Items[I];
//              if LDestNode <> nil then
              if LDestNode = Node then
                begin
                    for var J := 0 to TreeView1.Items.Count do
                    begin
                        Node := TreeView1.Items[J];
                        Var ChNode := TreeView1.Items.Item[J].Text;
                        if ChNode = FDQuery1.FieldByName('BranchName').AsString then
                        begin
                            TreeView1.Items.AddChild(Node, FDQuery1.FieldByName('ShiftID').AsString);
                            Node.ImageIndex:=0;
                        end;
                    end;
                  FDQuery1.Next;
                end;
           end;
     finally
         TreeView1.Items.EndUpdate;
         TreeView1.FullExpand;
     end;





     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('SELECT DISTINCT GroupID, GroupName, ShiftID, BranchName, TicketDate FROM GetTicketDetailsView');
     FDQuery1.SQL.Add('ORDER BY GroupID');
     FDQuery1.Open;
     FDQuery1.First;
//     TreeView1.Selected;
//      TreeView1.Items.Clear;

     TreeView1.Items.BeginUpdate;
     try
        for var I := 0 to  TreeView1.Items.Count do
           begin
              LDestNode := FindRootNode(FDQuery1.FieldByName('GroupName').AsString, TreeView1);
              Node := TreeView1.Items[I];
//              if LDestNode <> nil then
              if LDestNode = Node then
                begin
                    for var J := 0 to TreeView1.Items.Count do
                    begin
                        Node := TreeView1.Items[J];
                        Var ChNode := TreeView1.Items.Item[J].Text;
                        if ChNode = FDQuery1.FieldByName('BranchName').AsString then
                        begin
                            for var X := 0 to TreeView1.Items.Count do
                            begin
                                 Node := TreeView1.Items[X];
                                 Var ShiftNode := TreeView1.Items.Item[X].Text;
                                 if ShiftNode = FDQuery1.FieldByName('ShiftID').AsString then
                                    begin
                                        TreeView1.Items.AddChild(Node, FDQuery1.FieldByName('TicketDate').AsString);
                                        Node.ImageIndex:=0;
                                    end;
                            end;
                        end;
                    end;
                  FDQuery1.Next;
                end;
           end;
     finally
         TreeView1.Items.EndUpdate;
         TreeView1.FullExpand;
     end;


end;

procedure TTestForm.MoveToTxtBtnClick(Sender: TObject);
var
  Node : TTreeNode;
  LDestNode: TTreeNode;
begin
     FDQuery1.Close;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Add('SELECT DISTINCT GroupID, GroupName, BranchName FROM GetTicketDetailsView');
     FDQuery1.SQL.Add('ORDER BY GroupID');
     FDQuery1.Open;
     FDQuery1.First;
//     TreeView1.Selected;
//      TreeView1.Items.Clear;

     TreeView1.Items.BeginUpdate;
     try
        for var I := 0 to  TreeView1.Items.Count do
           begin
              LDestNode := FindRootNode(FDQuery1.FieldByName('GroupName').AsString, TreeView1);
              Node := TreeView1.Items[I];
//              if LDestNode <> nil then
              if LDestNode = Node then
                begin
                  TreeView1.Items.AddChild(LDestNode, FDQuery1.FieldByName('BranchName').AsString);
                  Node.ImageIndex:=0;
                  FDQuery1.Next;
                end;
           end;
     finally
         TreeView1.Items.EndUpdate;
         TreeView1.FullExpand;
     end;
end;

end.
