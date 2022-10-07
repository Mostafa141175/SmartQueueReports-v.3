unit Unit1;

interface

implementation


procedure ImportSmartQLogFiles;
{
var
  CRC: Dword;

  FIDx, CustID, TotalLines,
  CountLn, MaxLn : Integer;

  F_Name, TempStr, QLogID,
  QDate, QTime, QActn, QFn, 
  QCntr, QTkt, QWit, StrCRC,
  F_NameID, QLogIDsrc, StrLine : String;

  }
begin
{
    TotalLines := 0;
    CountLn := 0;
    MaxLn := 0;
    
    For FIDx := 0 To (FileCount-1) Do
      begin
           F_Name := '';
           StrCRC := '';
           CRC := 0;
           TempFile := '';
           
           TempFile := MainForm.OpenDlg.Files.KeyNames[FIDx] ;

//           FileCalcCRC32(TempFile, CRC);
//           if CRC <> 0 then 
//              StrCRC := IntToHex(CRC, 6);

            StrCRC := IntToHex(LongWord(CalcFileCRC(TempFile)));


              
            CheckValidate := False;

//          Insert Log file to with CRC to Database

               AssignFile(TxtF, TempFile);
               Reset(TxtF);
               MaxLn := LineCount(TempFile);
               TotalLines := TotalLines + MaxLn;

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
               
               F_Name := ExtractFileName(TempFile);
               
                if CheckValidate then
                begin
                    DataQModule.FDConnectionSQL.StartTransaction;

                    Try
                       MainForm.qryInsertCRCLoFile.Params[0].AsString := StrCRC;
                       MainForm.qryInsertCRCLoFile.Params[1].AsInteger := BranchID;
                       MainForm.qryInsertCRCLoFile.Params[2].AsString := F_Name;
                       MainForm.qryInsertCRCLoFile.Params[3].AsDateTime := Now;
                       MainForm.qryInsertCRCLoFile.Params[4].AsInteger := CurrentUser.UserID;
                       MainForm.qryInsertCRCLoFile.Params[5].AsString := UpperCase(CurrentUser.UserName);
                       MainForm.qryInsertCRCLoFile.ExecSQL;


                       try
                           // insert DATA from Log File
                           //  LogID := CustomerID + BranchID + CRC Code + FileName"Date" + Line + LineNo;
                           CountLn := 0;
                           CustID := 0;
                           QLogID := '';
                           QDate := '';
                           QTime := '';
                           QActn := '';
                           QFn := '';
                           QCntr := '';
                           QTkt := '';
                           QWit := '';
                           F_NameID := '';
                       
                           CustID := DataQModule.TblCustomerCustomerID.Value;
                           F_Name := ExtractFileName(TempFile);
                           F_NameID := Copy(F_Name, 1, Pos('.', F_Name)-1 );
                           F_NameID := ClearIntergerNumber(F_Name);

                           QLogIDsrc := MainForm.AddZero(CustID, 3)
                                        + MainForm.AddZero(BranchID, 3)
                                        + StrCRC
                                        + F_NameID
                                        + 'Line';

                           Reset(TxtF);
                             While not EOF(TxtF) do
                                 Begin
                                  //  repeat
                                      Readln (TxtF, StrLine);
                                      CountLn := CountLn + 1;
                                      TempStr := '';


                                      QLogID := QLogIDsrc  + MainForm.AddZero(CountLn, 5);
                                  
                                      if Length(StrLine) = 48 then
                                         begin
                                              TempStr := Copy(StrLine, 0, 10);
                                              QDate := Trim(TempStr);
                                          
                                              TempStr := Copy(StrLine, 12, 8);
                                              QTime := Trim(TempStr);

                                              TempStr := Copy(StrLine, 21, 12);
                                              QActn := Trim(TempStr);

                                              TempStr := Copy(StrLine, 34, 2);
                                              QFn := Trim(TempStr);

                                              TempStr := Copy(StrLine, 37, 2);
                                              QCntr := Trim(TempStr);

                                              TempStr := Copy(StrLine, 40, 4);
                                              QTkt := Trim(TempStr);

                                              TempStr := Copy(StrLine, 45, 4);
                                              QWit := Trim(TempStr);
                                         end;

                                            MainForm.qryInsertQLogData.Params[0].AsString  := QLogID;
                                            MainForm.qryInsertQLogData.Params[1].AsInteger := CurrentUser.UserID;
                                            MainForm.qryInsertQLogData.Params[2].AsInteger := BranchID;
                                            MainForm.qryInsertQLogData.Params[3].AsString  := QDAte;
                                            MainForm.qryInsertQLogData.Params[4].AsTime    := StrToTime(QTime);
                                            MainForm.qryInsertQLogData.Params[5].AsString  := QActn;
                                            MainForm.qryInsertQLogData.Params[6].AsInteger := StrToInt(QFn);
                                            MainForm.qryInsertQLogData.Params[7].AsInteger := StrToInt(QCntr);
                                            MainForm.qryInsertQLogData.Params[8].AsInteger := StrToInt(QTkt);
                                            MainForm.qryInsertQLogData.Params[9].AsInteger := StrToInt(QWit);
                                        
                                            MainForm.qryInsertQLogData.ExecSQL;
                                     
                                     
                                 End; // End While
                                     CloseFile(TxtF);
                           
//                       finally
                       except
                            raise Exception.Create('Error Inserting Q Log Data');

                       end;

                         DataQModule.FDConnectionSQL.Commit;
//                         ShowMessage('Insertion Success');
                       
                    Except
                        DataQModule.FDConnectionSQL.Rollback;

                        DataQModule.TblLogging.InsertRecord([Date, Time, 
                                                            CurrentUser.UserID, 
                                                            UpperCase(CurrentUser.UserName), 
                                                            'Error Importing QLog File...!, File maybe imported,'
                                                            + ' for Branch ID: ' + IntToStr(BranchID)
                                                            + ' , The QLog File Name is: ' + F_Name]);
                        DataQModule.TblLogging.Refresh;

                        Raise Exception.Create('Error Importing File...!, File maybe imported before ' 
                              +#13+ TempFile);

                              
                        MessageDlg('Error Inserting Files ...!' +#13+ 'Seystem is Rolled Back', 
                                   TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
                    End;

                       DataQModule.TblLogging.InsertRecord([Date, Time, 
                                                           CurrentUser.UserID, 
                                                           UpperCase(CurrentUser.UserName), 
                                                           'User has Imported the QLog File'
                                                           + ' for Branch ID: ' + IntToStr(BranchID)
                                                           + ' , The QLog File Name is: ' + F_Name]);
                       DataQModule.TblLogging.Refresh;

                       MainForm.qryCRCLoFile.Close;
                       MainForm.qryCRCLoFile.Open;
                       MainForm.qryCRCLoFile.Refresh;  
                       MainForm.qryQLogData.Close;
                       MainForm.qryQLogData.Open;
                       MainForm.qryQLogData.Refresh;

                end;
              
                  
      end;  // End For
      
//               ShowAllValueOnScreen ;
      
      MessageDlg('Import Complete '+ #13+ 'Total Files:    '+
                  IntToStr(FileCount)+#13+'Total Lines:    '+
                  IntToStr(TotalLines) , mtConfirmation,[mbOK],0) ;

      }
end;



end.
