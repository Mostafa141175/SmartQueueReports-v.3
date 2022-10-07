program SmartQueueReports_V03;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Controls,
  System.SysUtils,
  MainUnit in 'MainUnit.pas' {MainForm},
  UnitDataModule in 'UnitDataModule.pas' {DataQModule: TDataModule},
  UnitBranches in 'UnitBranches.pas' {FormBranches},
  UnitLogIn in 'UnitLogIn.pas' {LogInForm},
  UnitBcrypt in 'UnitBcrypt.pas',
  UnitSplash in 'UnitSplash.pas' {FormSplash},
  UnitSQLSetting in 'UnitSQLSetting.pas' {FormSQLSetting},
  UnitUsers in 'UnitUsers.pas' {UsersForm},
  UnitGlobal in 'UnitGlobal.pas',
  UnitReports in 'UnitReports.pas' {FormReport},
  UnitDMReports in 'UnitDMReports.pas' {DMReports: TDataModule},
  UnitCounters in 'UnitCounters.pas' {FormCounters},
  UnitServices in 'UnitServices.pas' {FormServices},
  UnitPrinters in 'UnitPrinters.pas' {FormPrinters},
  CryptoUtils in 'CryptoUtils.pas',
  uEncrypt in 'uEncrypt.pas',
  UnitCustomer in 'UnitCustomer.pas' {FormCustomer},
  UnitBranchGroup in 'UnitBranchGroup.pas' {FormBranchGroup},
  UnitGroupPrivilege in 'UnitGroupPrivilege.pas' {FormPrivilege},
  UnitBranchSelect in 'UnitBranchSelect.pas' {SelectForm},
  UnitQuePrinters in 'UnitQuePrinters.pas' {FormQuePrinters},
  UnitQueServices in 'UnitQueServices.pas' {FormQueServices},
  UnitQueCounters in 'UnitQueCounters.pas' {FormQueCounters},
  UnitHelp in 'UnitHelp.pas' {HelpForm},
  UnitBranchRelations in 'UnitBranchRelations.pas' {FormBranchRelations};

{$R *.res}

begin

   FormSplash := TFormSplash.Create(Application);
   Application.Initialize;

   with FormSplash do
   try      
      
//      TFormSplash.Create(nil);
      FormSplash.Show;
      FormSplash.Update;

//      Application.Initialize;
      Application.MainFormOnTaskbar := True;
//      Application.CreateForm(TFormSplash, FormSplash);  

      Application.Title := 'Smart Queue Report';
      TStyleManager.TrySetStyle('Onyx Blue');
//      TStyleManager.TrySetStyle('Glow');

//      TStyleManager.TrySetStyle('Onyx Blue');
//      TStyleManager.TrySetStyle('Windows10 Blue');
//      TStyleManager.TrySetStyle('Cyan Night');
//      TStyleManager.TrySetStyle('Onyx Blue');
//      TStyleManager.TrySetStyle('Auric');

      Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataQModule, DataQModule);
  Application.CreateForm(TFormBranches, FormBranches);
  Application.CreateForm(TLogInForm, LogInForm);
  Application.CreateForm(TFormSQLSetting, FormSQLSetting);
  Application.CreateForm(TUsersForm, UsersForm);
  Application.CreateForm(TFormReport, FormReport);
  Application.CreateForm(TDMReports, DMReports);
  Application.CreateForm(TFormCounters, FormCounters);
  Application.CreateForm(TFormServices, FormServices);
  Application.CreateForm(TFormPrinters, FormPrinters);
  Application.CreateForm(TFormCustomer, FormCustomer);
  Application.CreateForm(TFormBranchGroup, FormBranchGroup);
  Application.CreateForm(TFormPrivilege, FormPrivilege);
  Application.CreateForm(TSelectForm, SelectForm);
  Application.CreateForm(TFormQueServices, FormQueServices);
  Application.CreateForm(TFormQuePrinters, FormQuePrinters);
  Application.CreateForm(TFormQueCounters, FormQueCounters);
  Application.CreateForm(THelpForm, HelpForm);
  Application.CreateForm(TFormBranchRelations, FormBranchRelations);
  Sleep(3000);
//      FormSplash.Hide;
   finally
      FormSplash.Free;
//      FormSplash.Destroy;
//      FormSplash.Close;
   end;
 



 { If LogInForm.ShowModal = mrOK then
  Begin
       FormSplash.Hide;
       FormSplash.Free;
       LogInForm.Free;
       Application.Run;
  End
  Else
  Begin
    Application.Terminate;
  End;  }

  
  Application.Run;
end.
