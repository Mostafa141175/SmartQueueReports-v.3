object FormQueServices: TFormQueServices
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = 'My Services Form'
  ClientHeight = 701
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object MyServicesDBGrid: TDBGrid
    Left = 0
    Top = 255
    Width = 713
    Height = 446
    Align = alClient
    DataSource = srcMySerices
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = MyServicesDBGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'MyInitServiceID'
        Title.Caption = 'My Service ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ServiceID'
        Title.Alignment = taCenter
        Title.Caption = 'Service ID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiceName'
        Title.Caption = 'Service Name'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BranchServiceID'
        Title.Alignment = taCenter
        Title.Caption = 'Branch ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 65
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 709
    object DeleteBtn: TButton
      Left = 365
      Top = 8
      Width = 100
      Height = 48
      Caption = #1605#1587#1581
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 61
      ImageName = 'icons8_minus_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 0
      OnClick = DeleteBtnClick
    end
    object AddBtn: TButton
      Left = 599
      Top = 8
      Width = 100
      Height = 48
      Caption = #1573#1590#1575#1601#1577
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 63
      ImageName = 'icons8_add_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 1
      OnClick = AddBtnClick
    end
    object EditBtn: TButton
      Left = 482
      Top = 8
      Width = 100
      Height = 48
      Caption = #1578#1593#1583#1610#1604
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 59
      ImageName = 'icons8_edit_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 2
      OnClick = EditBtnClick
    end
    object CloseBtn: TButton
      AlignWithMargins = True
      Left = 14
      Top = 8
      Width = 100
      Height = 48
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 4
      Caption = #1573#1594#1604#1575#1602
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 60
      ImageName = 'icons8_fire_exit_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 3
      OnClick = CloseBtnClick
    end
    object SaveBtn: TButton
      Left = 248
      Top = 8
      Width = 100
      Height = 48
      Caption = #1581#1601#1592
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 62
      ImageName = 'icons8_save_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 4
      OnClick = SaveBtnClick
    end
    object CancelBtn: TButton
      Left = 131
      Top = 8
      Width = 100
      Height = 48
      Caption = #1575#1604#1594#1575#1569
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 26
      ImageName = 'icons8_cancel_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 5
      OnClick = CancelBtnClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 713
    Height = 190
    Align = alTop
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
    ExplicitWidth = 709
    object Label1: TLabel
      Left = 596
      Top = 26
      Width = 89
      Height = 21
      Caption = '1- '#1575#1582#1578#1575#1585' '#1575#1604#1601#1585#1593
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 590
      Top = 98
      Width = 95
      Height = 21
      Caption = '2- '#1575#1582#1578#1575#1585' '#1575#1604#1582#1583#1605#1577
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 70
      Top = 26
      Width = 226
      Height = 21
      Caption = '3- '#1575#1603#1578#1576' '#1585#1602#1605' '#1575#1604#1582#1583#1605#1577' '#1575#1604#1601#1593#1604#1609' '#1604#1607#1584#1575' '#1575#1604#1601#1585#1593' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object CmBoxBranches: TComboBox
      Left = 397
      Top = 53
      Width = 288
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnSelect = CmBoxBranchesSelect
    end
    object CmBoxServices: TComboBox
      Left = 397
      Top = 125
      Width = 288
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnSelect = CmBoxServicesSelect
    end
    object ServiceNumberEdit: TEdit
      Left = 233
      Top = 53
      Width = 63
      Height = 40
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 2
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
    end
  end
  object srcMySerices: TDataSource
    DataSet = qryMyService
    Left = 56
    Top = 131
  end
  object qryBranches: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [Branches]')
    Left = 648
    Top = 115
  end
  object qryServices: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [Services]')
    Left = 648
    Top = 187
  end
  object qryMyService: TFDQuery
    MasterSource = srcBranches
    MasterFields = 'BranchID'
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [QueServices]'
      'WHERE [BranchServiceID] = :BranchID'
      'ORDER BY [ServiceID]')
    Left = 88
    Top = 392
    ParamData = <
      item
        Name = 'BRANCHID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object srcBranches: TDataSource
    DataSet = qryBranches
    Left = 576
    Top = 115
  end
  object qryInsertServices: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'INSERT INTO [QueServices] '
      
        'VALUES (:BranchServiceID, :InitService,  N'#39#39'+:MyServiceName,  :M' +
        'yBranchID)')
    Left = 208
    Top = 400
    ParamData = <
      item
        Name = 'BRANCHSERVICEID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'INITSERVICE'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MYSERVICENAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MYBRANCHID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryDeleteID: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'DELETE FROM [QueServices]'
      '      WHERE [MyInitServiceID] = :xMyServiceID')
    Left = 320
    Top = 400
    ParamData = <
      item
        Name = 'XMYSERVICEID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryUpdateID: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'UPDATE [QueServices]'
      '   SET [MyInitServiceID] = :xBranchServiceID'
      '      ,[ServiceID] = :xServiceID'
      '      ,[ServiceName] = :xServiceName'
      ''
      ' WHERE [MyInitServiceID] = :xMyServiceID')
    Left = 408
    Top = 400
    ParamData = <
      item
        Name = 'XBRANCHSERVICEID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XSERVICEID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XSERVICENAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XMYSERVICEID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
