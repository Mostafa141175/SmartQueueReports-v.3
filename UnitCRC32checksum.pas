unit UnitCRC32checksum;

interface

Uses 
  Winapi.Windows, System.Classes, System.SysUtils, System.Variants, Vcl.Dialogs, 
  System.UITypes, Winapi.Messages, Vcl.Graphics, Vcl.Controls, Vcl.StdCtrls,

  IdHashMessageDigest, IdHashCRC;
  
const CRCTable: Array[0..255] of DWord =
     ($00000000, $77073096, $EE0E612C, $990951BA,
      $076DC419, $706AF48F, $E963A535, $9E6495A3,
      $0EDB8832, $79DCB8A4, $E0D5E91E, $97D2D988,
      $09B64C2B, $7EB17CBD, $E7B82D07, $90BF1D91,
      $1DB71064, $6AB020F2, $F3B97148, $84BE41DE,
      $1ADAD47D, $6DDDE4EB, $F4D4B551, $83D385C7,
      $136C9856, $646BA8C0, $FD62F97A, $8A65C9EC,
      $14015C4F, $63066CD9, $FA0F3D63, $8D080DF5,
      $3B6E20C8, $4C69105E, $D56041E4, $A2677172,
      $3C03E4D1, $4B04D447, $D20D85FD, $A50AB56B,
      $35B5A8FA, $42B2986C, $DBBBC9D6, $ACBCF940,
      $32D86CE3, $45DF5C75, $DCD60DCF, $ABD13D59,
      $26D930AC, $51DE003A, $C8D75180, $BFD06116,
      $21B4F4B5, $56B3C423, $CFBA9599, $B8BDA50F,
      $2802B89E, $5F058808, $C60CD9B2, $B10BE924,
      $2F6F7C87, $58684C11, $C1611DAB, $B6662D3D,
      $76DC4190, $01DB7106, $98D220BC, $EFD5102A,
      $71B18589, $06B6B51F, $9FBFE4A5, $E8B8D433,
      $7807C9A2, $0F00F934, $9609A88E, $E10E9818,
      $7F6A0DBB, $086D3D2D, $91646C97, $E6635C01,
      $6B6B51F4, $1C6C6162, $856530D8, $F262004E,
      $6C0695ED, $1B01A57B, $8208F4C1, $F50FC457,
      $65B0D9C6, $12B7E950, $8BBEB8EA, $FCB9887C,
      $62DD1DDF, $15DA2D49, $8CD37CF3, $FBD44C65,
      $4DB26158, $3AB551CE, $A3BC0074, $D4BB30E2,
      $4ADFA541, $3DD895D7, $A4D1C46D, $D3D6F4FB,
      $4369E96A, $346ED9FC, $AD678846, $DA60B8D0,
      $44042D73, $33031DE5, $AA0A4C5F, $DD0D7CC9,
      $5005713C, $270241AA, $BE0B1010, $C90C2086,
      $5768B525, $206F85B3, $B966D409, $CE61E49F,
      $5EDEF90E, $29D9C998, $B0D09822, $C7D7A8B4,
      $59B33D17, $2EB40D81, $B7BD5C3B, $C0BA6CAD,
      $EDB88320, $9ABFB3B6, $03B6E20C, $74B1D29A,
      $EAD54739, $9DD277AF, $04DB2615, $73DC1683,
      $E3630B12, $94643B84, $0D6D6A3E, $7A6A5AA8,
      $E40ECF0B, $9309FF9D, $0A00AE27, $7D079EB1,
      $F00F9344, $8708A3D2, $1E01F268, $6906C2FE,
      $F762575D, $806567CB, $196C3671, $6E6B06E7,
      $FED41B76, $89D32BE0, $10DA7A5A, $67DD4ACC,
      $F9B9DF6F, $8EBEEFF9, $17B7BE43, $60B08ED5,
      $D6D6A3E8, $A1D1937E, $38D8C2C4, $4FDFF252,
      $D1BB67F1, $A6BC5767, $3FB506DD, $48B2364B,
      $D80D2BDA, $AF0A1B4C, $36034AF6, $41047A60,
      $DF60EFC3, $A867DF55, $316E8EEF, $4669BE79,
      $CB61B38C, $BC66831A, $256FD2A0, $5268E236,
      $CC0C7795, $BB0B4703, $220216B9, $5505262F,
      $C5BA3BBE, $B2BD0B28, $2BB45A92, $5CB36A04,
      $C2D7FFA7, $B5D0CF31, $2CD99E8B, $5BDEAE1D,
      $9B64C2B0, $EC63F226, $756AA39C, $026D930A,
      $9C0906A9, $EB0E363F, $72076785, $05005713,
      $95BF4A82, $E2B87A14, $7BB12BAE, $0CB61B38,
      $92D28E9B, $E5D5BE0D, $7CDCEFB7, $0BDBDF21,
      $86D3D2D4, $F1D4E242, $68DDB3F8, $1FDA836E,
      $81BE16CD, $F6B9265B, $6FB077E1, $18B74777,
      $88085AE6, $FF0F6A70, $66063BCA, $11010B5C,
      $8F659EFF, $F862AE69, $616BFFD3, $166CCF45,
      $A00AE278, $D70DD2EE, $4E048354, $3903B3C2,
      $A7672661, $D06016F7, $4969474D, $3E6E77DB,
      $AED16A4A, $D9D65ADC, $40DF0B66, $37D83BF0,
      $A9BCAE53, $DEBB9EC5, $47B2CF7F, $30B5FFE9,
      $BDBDF21C, $CABAC28A, $53B39330, $24B4A3A6,
      $BAD03605, $CDD70693, $54DE5729, $23D967BF,
      $B3667A2E, $C4614AB8, $5D681B02, $2A6F2B94,
      $B40BBE37, $C30C8EA1, $5A05DF1B, $2D02EF8D);


   procedure FileCalcCRC32(AFileName: String; var CRC32: DWORD);
   function CalcFileCRC(FileName: string): Integer;
   function GetFileMD5(const iFileName: string): String;
   function GetStringMD5(const AText : string) : string;
  
  
implementation

(*
procedure CalcCRC32(FileName: String; var CRC32: dword);
var F: file;
    BytesRead: dword;
    Buffer: Array[1..65521] of byte;
    I: Word;
begin
    FileMode := 0;
    CRC32 := $ffffffff;
//    {$I-}
        AssignFile(F, FileName);
        Reset(F, 1);
//        Reset(F);
        if IOResult = 0 then
           begin
             repeat
                 BlockRead(F, Buffer, SizeOf(Buffer), BytesRead);
                 for I := 1 to BytesRead do 
                     CRC32 := (CRC32 shr 8) xor Table[Buffer[I] xor (CRC32 and $000000FF)];
             until BytesRead = 0;
           end;
        CloseFile(F);
//    {$I+}
    CRC32 := not CRC32;
end;
 *)

function CalcCRC32(AStream: TStream): Cardinal;
// const CRCTable: array[0..255] of DWord =
     //Put your large const array here;
var
  LBytesRead: Integer;
  LBuffer: array[1..65521] of byte;
  LLoopI: Word;
begin
  Result := $ffffffff;

  repeat
    LBytesRead := AStream.Read(LBuffer, SizeOf(LBuffer));
    for LLoopI := 1 to LBytesRead do
    begin
      Result := (Result shr 8) xor CRCTable[LBuffer[LLoopI] xor (Result and $000000FF)];
    end;
  until LBytesRead = 0;

  Result := not Result;
end;


procedure FileCalcCRC32(AFileName: String; var CRC32: DWORD);
var
  LStream: TStream;
begin
  LStream := TFileStream.Create(AFileName, fmOpenRead, fmShareDenyNone);
  try
    CRC32 := CalcCRC32(LStream);
  finally
    LStream.Free;
  end;
end;


{

procedure TForm1.Button1Click(Sender: TObject);
var OpenDialog: TOpenDialog;
    CRC: Dword;
begin
  OpenDialog := TOpenDialog.Create(nil);
  if OpenDialog.Execute then
  begin
  CalcCRC32(OpenDialog.FileName, crc);
  if crc<>0 then ShowMessage(IntToHex(crc,6));
  end;
  OpenDialog.Free;
end;

}


 
 
 
{Admission document MD5 code from another blog}
function GetFileMD5(const iFileName: string): String;
var
  MemSteam: TMemoryStream;
  MyMD5   : TIdHashMessageDigest5;
begin
  MemSteam := TMemoryStream.Create;
  MemSteam.LoadFromFile(iFileName);
  MyMD5  := TIdHashMessageDigest5.Create;
  Result := MyMD5.HashStreamAsHex(MemSteam);
  MyMD5.Free;
  MemSteam.Free;
end;


 //returns MD5 has for a file
function GetStringMD5(const AText : string) : string;
// var
//   idmd5 : TIdHashMessageDigest5;
//   ts : TStringStream;
//   hash : T4x4LongWordRecord;
 begin
   var idmd5 := TIdHashMessageDigest5.Create;
//   ts := TStringStream.Create(SText) ;
   try
//     result := idmd5.HashStreamAsHex(ts) ;
     result := idmd5.HashStringAsHex(AText) ;
   finally
//     ts.Free;
     idmd5.Free;
   end;
 end;

 
 // calculate file CRC, slightly modified a bit.
function CalcFileCRC(FileName: string): Integer;
var
  MemSteam: TMemoryStream;
  MyCRC   : TIdHashCRC32;
  sCrc:string;
begin
  MemSteam := TMemoryStream.Create;
  MemSteam.LoadFromFile(FileName);
  MyCRC  := TIdHashCRC32.Create;
  sCrc := MyCRC.HashStreamAsHex(MemSteam);
  Val('$' + sCrc, Result, Result);
  MyCRC.Free;
  MemSteam.Free;
end;
 
 
 // direct path to the incoming file
 
// example:
//Memo1.Lines.Add(Format('%s'#9'%s'#9'%u', [ExtractFileName(Filename), GetFileMD5(Filename), LongWord(CalcFileCRC(Filename))]));





(*
Delphi
program CalcCRC32;
 
{$APPTYPE CONSOLE}
 
uses
  System.SysUtils, System.ZLib;
 
var
  Data: AnsiString = 'The quick brown fox jumps over the lazy dog';
  CRC: UInt32;
 
begin
  CRC := crc32(0, @Data[1], Length(Data));
  WriteLn(Format('CRC32 = %8.8X', [CRC]));
end.



Output:
CRC32 = 414FA339

*)


 
end.
