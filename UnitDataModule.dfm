object DataQModule: TDataQModule
  Height = 592
  Width = 986
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 896
    Top = 160
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 896
    Top = 88
  end
  object TblCustomer: TFDTable
    IndexFieldNames = 'CustomerID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'Customers'
    Left = 64
    Top = 48
    object TblCustomerCustomerID: TSmallintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CustomerID'
      Origin = 'CustomerID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TblCustomerCustomerName: TWideStringField
      FieldName = 'CustomerName'
      Origin = 'CustomerName'
      Size = 100
    end
    object TblCustomerCustomerEnName: TWideStringField
      FieldName = 'CustomerEnName'
      Origin = 'CustomerEnName'
      Size = 100
    end
    object TblCustomerLocation: TWideStringField
      FieldName = 'Location'
      Origin = 'Location'
      Size = 50
    end
    object TblCustomerCustomerLogo: TBlobField
      FieldName = 'CustomerLogo'
      Origin = 'CustomerLogo'
    end
  end
  object TblBranches: TFDTable
    IndexFieldNames = 'BranchID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'Branches'
    Left = 64
    Top = 112
    object TblBranchesBranchID: TSmallintField
      FieldName = 'BranchID'
      Origin = 'BranchID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblBranchesBranchName: TWideStringField
      FieldName = 'BranchName'
      Origin = 'BranchName'
      Required = True
      Size = 100
    end
  end
  object TblLogging: TFDTable
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'Logging'
    Left = 168
    Top = 184
    object TblLoggingLogingDate: TDateField
      FieldName = 'LogingDate'
      Origin = 'LogingDate'
      Required = True
    end
    object TblLoggingLogingTime: TTimeField
      FieldName = 'LogingTime'
      Origin = 'LogingTime'
      Required = True
    end
    object TblLoggingLogUserID: TIntegerField
      FieldName = 'LogUserID'
      Origin = 'LogUserID'
      Required = True
    end
    object TblLoggingLogingUser: TWideStringField
      FieldName = 'LogingUser'
      Origin = 'LogingUser'
      Required = True
      Size = 50
    end
    object TblLoggingLogUserAction: TWideStringField
      FieldName = 'LogUserAction'
      Origin = 'LogUserAction'
      Required = True
      Size = 120
    end
  end
  object TblUsers: TFDTable
    IndexFieldNames = 'UserName'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'Users'
    Left = 168
    Top = 48
    object TblUsersUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblUsersUserName: TWideStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Required = True
      Size = 50
    end
    object TblUsersPasswordHash: TWideStringField
      FieldName = 'PasswordHash'
      Origin = 'PasswordHash'
      Required = True
      Size = 64
    end
    object TblUsersPasswordHint: TWideStringField
      FieldName = 'PasswordHint'
      Origin = 'PasswordHint'
      Size = 60
    end
    object TblUsersUserGroup: TIntegerField
      FieldName = 'UserGroup'
      Origin = 'UserGroup'
      Required = True
    end
    object TblUsersUserDate: TSQLTimeStampField
      FieldName = 'UserDate'
      Origin = 'UserDate'
      Required = True
    end
    object TblUsersUserActive: TBooleanField
      FieldName = 'UserActive'
      Origin = 'UserActive'
      Required = True
    end
  end
  object TblUserGroups: TFDTable
    IndexFieldNames = 'UserGroupID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'UserGroups'
    Left = 168
    Top = 112
    object TblUserGroupsUserGroupID: TIntegerField
      FieldName = 'UserGroupID'
      Origin = 'UserGroupID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblUserGroupsUserGroupName: TWideStringField
      FieldName = 'UserGroupName'
      Origin = 'UserGroupName'
      Required = True
      Size = 50
    end
    object TblUserGroupsUserInfo: TBooleanField
      FieldName = 'UserInfo'
      Origin = 'UserInfo'
      Required = True
    end
    object TblUserGroupsAddUser: TBooleanField
      FieldName = 'AddUser'
      Origin = 'AddUser'
      Required = True
    end
    object TblUserGroupsDelUser: TBooleanField
      FieldName = 'DelUser'
      Origin = 'DelUser'
      Required = True
    end
    object TblUserGroupsModUser: TBooleanField
      FieldName = 'ModUser'
      Origin = 'ModUser'
      Required = True
    end
    object TblUserGroupsGetFile: TBooleanField
      FieldName = 'GetFile'
      Origin = 'GetFile'
      Required = True
    end
    object TblUserGroupsGetReport: TBooleanField
      FieldName = 'GetReport'
      Origin = 'GetReport'
      Required = True
    end
    object TblUserGroupsCounterInfo: TBooleanField
      FieldName = 'CounterInfo'
      Origin = 'CounterInfo'
      Required = True
    end
    object TblUserGroupsFunctionInfo: TBooleanField
      FieldName = 'FunctionInfo'
      Origin = 'FunctionInfo'
      Required = True
    end
    object TblUserGroupsActionInfo: TBooleanField
      FieldName = 'ActionInfo'
      Origin = 'ActionInfo'
      Required = True
    end
    object TblUserGroupsCustomerInfo: TBooleanField
      FieldName = 'CustomerInfo'
      Origin = 'CustomerInfo'
      Required = True
    end
    object TblUserGroupsBranchInfo: TBooleanField
      FieldName = 'BranchInfo'
      Origin = 'BranchInfo'
      Required = True
    end
  end
  object FDConnectionSQL: TFDConnection
    Params.Strings = (
      'ConnectionDef=SmartQueue_v03')
    FetchOptions.AssignedValues = [evMode]
    LoginPrompt = False
    AfterConnect = FDConnectionSQLAfterConnect
    AfterDisconnect = FDConnectionSQLAfterDisconnect
    BeforeDisconnect = FDConnectionSQLBeforeDisconnect
    Left = 896
    Top = 32
  end
  object tblBrachGroups: TFDTable
    IndexFieldNames = 'GroupID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'BranchGroups'
    Left = 64
    Top = 184
    object tblBrachGroupsGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'GroupID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblBrachGroupsGroupName: TWideStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      Required = True
      Size = 30
    end
  end
  object TblQueFiles: TFDTable
    IndexFieldNames = 'QFileMD5Hash'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'QueSysFiles'
    Left = 264
    Top = 48
    object TblQueFilesQFileMD5Hash: TWideStringField
      FieldName = 'QFileMD5Hash'
      Origin = 'QFileMD5Hash'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 32
    end
    object TblQueFilesBranchID: TSmallintField
      FieldName = 'BranchID'
      Origin = 'BranchID'
      Required = True
    end
    object TblQueFilesGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'GroupID'
      Required = True
    end
    object TblQueFilesQLogName: TWideStringField
      FieldName = 'QLogName'
      Origin = 'QLogName'
      Required = True
    end
    object TblQueFilesLogDate: TSQLTimeStampField
      FieldName = 'LogDate'
      Origin = 'LogDate'
      Required = True
    end
    object TblQueFilesUserID: TSmallintField
      FieldName = 'UserID'
      Origin = 'UserID'
      Required = True
    end
    object TblQueFilesUserName: TWideStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Required = True
    end
  end
  object tblQueTicketDetails: TFDTable
    IndexFieldNames = 'TicketLineHashID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'QueTicketDetails'
    Left = 264
    Top = 184
    object tblQueTicketDetailsTicketLineHashID: TWideStringField
      FieldName = 'TicketLineHashID'
      Origin = 'TicketLineHashID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 64
    end
    object tblQueTicketDetailsTicketID: TWideStringField
      FieldName = 'TicketID'
      Origin = 'TicketID'
      Required = True
      Size = 32
    end
    object tblQueTicketDetailsUserID: TSmallintField
      FieldName = 'UserID'
      Origin = 'UserID'
      Required = True
    end
    object tblQueTicketDetailsBranchID: TSmallintField
      FieldName = 'BranchID'
      Origin = 'BranchID'
      Required = True
    end
    object tblQueTicketDetailsGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'GroupID'
      Required = True
    end
    object tblQueTicketDetailsTicketDate: TDateField
      FieldName = 'TicketDate'
      Origin = 'TicketDate'
      Required = True
    end
    object tblQueTicketDetailsTicketTime: TTimeField
      FieldName = 'TicketTime'
      Origin = 'TicketTime'
      Required = True
    end
    object tblQueTicketDetailsShiftID: TSmallintField
      FieldName = 'ShiftID'
      Origin = 'ShiftID'
      Required = True
    end
    object tblQueTicketDetailsIssuedServiceID: TSmallintField
      FieldName = 'IssuedServiceID'
      Origin = 'IssuedServiceID'
      Required = True
    end
    object tblQueTicketDetailsIssuerID: TSmallintField
      FieldName = 'IssuerID'
      Origin = 'IssuerID'
      Required = True
    end
    object tblQueTicketDetailsTicketNo: TSmallintField
      FieldName = 'TicketNo'
      Origin = 'TicketNo'
      Required = True
    end
    object tblQueTicketDetailsWaitingNo: TSmallintField
      FieldName = 'WaitingNo'
      Origin = 'WaitingNo'
      Required = True
    end
    object tblQueTicketDetailsActionDate: TDateField
      FieldName = 'ActionDate'
      Origin = 'ActionDate'
      Required = True
    end
    object tblQueTicketDetailsActionTime: TTimeField
      FieldName = 'ActionTime'
      Origin = 'ActionTime'
      Required = True
    end
    object tblQueTicketDetailsActionName: TWideStringField
      FieldName = 'ActionName'
      Origin = 'ActionName'
      Required = True
    end
    object tblQueTicketDetailsCurrentServiceID: TSmallintField
      FieldName = 'CurrentServiceID'
      Origin = 'CurrentServiceID'
      Required = True
    end
    object tblQueTicketDetailsCounterID: TSmallintField
      FieldName = 'CounterID'
      Origin = 'CounterID'
      Required = True
    end
    object tblQueTicketDetailsWaitingTime: TTimeField
      FieldName = 'WaitingTime'
      Origin = 'WaitingTime'
      Required = True
    end
    object tblQueTicketDetailsServiceTime: TTimeField
      FieldName = 'ServiceTime'
      Origin = 'ServiceTime'
      Required = True
    end
    object tblQueTicketDetailsWaitingSeconds: TIntegerField
      FieldName = 'WaitingSeconds'
      Origin = 'WaitingSeconds'
      Required = True
    end
    object tblQueTicketDetailsServiceSeconds: TIntegerField
      FieldName = 'ServiceSeconds'
      Origin = 'ServiceSeconds'
      Required = True
    end
    object tblQueTicketDetailsIsComplete: TBooleanField
      FieldName = 'IsComplete'
      Origin = 'IsComplete'
      Required = True
    end
  end
  object tblTickets: TFDTable
    IndexFieldNames = 'TicketID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'Tickets'
    Left = 264
    Top = 112
    object tblTicketsTicketID: TWideStringField
      FieldName = 'TicketID'
      Origin = 'TicketID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 32
    end
    object tblTicketsTicketNo: TSmallintField
      FieldName = 'TicketNo'
      Origin = 'TicketNo'
      Required = True
    end
    object tblTicketsShiftID: TSmallintField
      FieldName = 'ShiftID'
      Origin = 'ShiftID'
      Required = True
    end
    object tblTicketsIssuedServiceID: TSmallintField
      FieldName = 'IssuedServiceID'
      Origin = 'IssuedServiceID'
      Required = True
    end
    object tblTicketsIssuerID: TSmallintField
      FieldName = 'IssuerID'
      Origin = 'IssuerID'
      Required = True
    end
    object tblTicketsTicketDate: TDateField
      FieldName = 'TicketDate'
      Origin = 'TicketDate'
      Required = True
    end
    object tblTicketsTicketTime: TTimeField
      FieldName = 'TicketTime'
      Origin = 'TicketTime'
      Required = True
    end
    object tblTicketsCurrentServiceID: TSmallintField
      FieldName = 'CurrentServiceID'
      Origin = 'CurrentServiceID'
      Required = True
    end
    object tblTicketsCounterID: TSmallintField
      FieldName = 'CounterID'
      Origin = 'CounterID'
      Required = True
    end
    object tblTicketsBranchID: TSmallintField
      FieldName = 'BranchID'
      Origin = 'BranchID'
      Required = True
    end
    object tblTicketsGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'GroupID'
      Required = True
    end
    object tblTicketsGroupName: TWideStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      Size = 30
    end
    object tblTicketsBranchName: TWideStringField
      FieldName = 'BranchName'
      Origin = 'BranchName'
      Size = 80
    end
  end
  object tblCounters: TFDTable
    IndexFieldNames = 'CounterID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'Counters'
    Left = 368
    Top = 48
    object tblCountersCounterID: TSmallintField
      FieldName = 'CounterID'
      Origin = 'CounterID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblCountersCounterName: TWideStringField
      FieldName = 'CounterName'
      Origin = 'CounterName'
      Size = 50
    end
  end
  object tblPrinters: TFDTable
    IndexFieldNames = 'PrinterID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'Printers'
    Left = 368
    Top = 120
    object tblPrintersPrinterID: TSmallintField
      FieldName = 'PrinterID'
      Origin = 'PrinterID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblPrintersPrinterName: TWideStringField
      FieldName = 'PrinterName'
      Origin = 'PrinterName'
      Size = 50
    end
  end
  object tblServices: TFDTable
    IndexFieldNames = 'ServiceID'
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'Services'
    Left = 368
    Top = 184
    object tblServicesServiceID: TSmallintField
      FieldName = 'ServiceID'
      Origin = 'ServiceID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblServicesServiceName: TWideStringField
      FieldName = 'ServiceName'
      Origin = 'ServiceName'
      Size = 50
    end
  end
  object tblSystemInfo: TFDTable
    Connection = FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    TableName = 'SystemInfo'
    Left = 896
    Top = 256
    object tblSystemInfoMajor_Ver: TIntegerField
      FieldName = 'Major_Ver'
      Origin = 'Major_Ver'
      Required = True
    end
    object tblSystemInfoMinor_Ver: TIntegerField
      FieldName = 'Minor_Ver'
      Origin = 'Minor_Ver'
      Required = True
    end
    object tblSystemInfoRelease_Ver: TIntegerField
      FieldName = 'Release_Ver'
      Origin = 'Release_Ver'
      Required = True
    end
    object tblSystemInfoBuild_Ver: TIntegerField
      FieldName = 'Build_Ver'
      Origin = 'Build_Ver'
    end
    object tblSystemInfoDate_Ver: TWideStringField
      FieldName = 'Date_Ver'
      Origin = 'Date_Ver'
      Required = True
      Size = 50
    end
    object tblSystemInfoProductName: TWideStringField
      FieldName = 'ProductName'
      Origin = 'ProductName'
      Size = 50
    end
    object tblSystemInfoOrganisation: TWideStringField
      FieldName = 'Organisation'
      Origin = 'Organisation'
      Size = 50
    end
  end
  object tblQueCounters: TFDTable
    IndexFieldNames = 'MyCounterID'
    Connection = FDConnectionSQL
    TableName = 'QueCounters'
    Left = 456
    Top = 48
    object tblQueCountersMyCounterID: TWideStringField
      FieldName = 'MyCounterID'
      Origin = 'MyCounterID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object tblQueCountersCounterID: TSmallintField
      FieldName = 'CounterID'
      Origin = 'CounterID'
      Required = True
    end
    object tblQueCountersCounterName: TWideStringField
      FieldName = 'CounterName'
      Origin = 'CounterName'
      Size = 50
    end
    object tblQueCountersBranchCounterID: TSmallintField
      FieldName = 'BranchCounterID'
      Origin = 'BranchCounterID'
      Required = True
    end
  end
  object tblQuePrinters: TFDTable
    IndexFieldNames = 'MyPrinterID'
    Connection = FDConnectionSQL
    TableName = 'QuePrinters'
    Left = 456
    Top = 120
    object tblQuePrintersMyPrinterID: TWideStringField
      FieldName = 'MyPrinterID'
      Origin = 'MyPrinterID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object tblQuePrintersPrinterID: TSmallintField
      FieldName = 'PrinterID'
      Origin = 'PrinterID'
      Required = True
    end
    object tblQuePrintersPrinterName: TWideStringField
      FieldName = 'PrinterName'
      Origin = 'PrinterName'
      Size = 50
    end
    object tblQuePrintersBranchPrinterID: TSmallintField
      FieldName = 'BranchPrinterID'
      Origin = 'BranchPrinterID'
      Required = True
    end
  end
  object tblQueServices: TFDTable
    IndexFieldNames = 'MyInitServiceID'
    Connection = FDConnectionSQL
    TableName = 'QueServices'
    Left = 456
    Top = 184
    object tblQueServicesMyInitServiceID: TWideStringField
      FieldName = 'MyInitServiceID'
      Origin = 'MyInitServiceID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object tblQueServicesServiceID: TSmallintField
      FieldName = 'ServiceID'
      Origin = 'ServiceID'
      Required = True
    end
    object tblQueServicesServiceName: TWideStringField
      FieldName = 'ServiceName'
      Origin = 'ServiceName'
      Size = 50
    end
    object tblQueServicesBranchServiceID: TSmallintField
      FieldName = 'BranchServiceID'
      Origin = 'BranchServiceID'
      Required = True
    end
  end
  object tblBranchRelation: TFDTable
    IndexFieldNames = 'BranchRelationID'
    Connection = FDConnectionSQL
    TableName = 'BranchRelationship'
    Left = 64
    Top = 248
    object tblBranchRelationBranchRelationID: TWideStringField
      FieldName = 'BranchRelationID'
      Origin = 'BranchRelationID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object tblBranchRelationBranchID: TSmallintField
      FieldName = 'BranchID'
      Origin = 'BranchID'
      Required = True
    end
    object tblBranchRelationGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'GroupID'
      Required = True
    end
  end
  object tblRelationView: TFDTable
    Connection = FDConnectionSQL
    TableName = 'BranchRelationView'
    Left = 184
    Top = 256
    object tblRelationViewBranchRelationID: TWideStringField
      FieldName = 'BranchRelationID'
      Origin = 'BranchRelationID'
      Required = True
      Size = 30
    end
    object tblRelationViewBranchID: TSmallintField
      FieldName = 'BranchID'
      Origin = 'BranchID'
      Required = True
    end
    object tblRelationViewGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'GroupID'
      Required = True
    end
    object tblRelationViewBranchName: TWideStringField
      FieldName = 'BranchName'
      Origin = 'BranchName'
      Required = True
      Size = 100
    end
    object tblRelationViewGroupName: TWideStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      Required = True
      Size = 30
    end
  end
end
