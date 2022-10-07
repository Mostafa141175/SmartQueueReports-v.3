object FormQueCounters: TFormQueCounters
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = 'My Counters Form'
  ClientHeight = 701
  ClientWidth = 714
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
  object MyCounterDBGrid: TDBGrid
    Left = 0
    Top = 255
    Width = 714
    Height = 446
    Align = alClient
    DataSource = srcMyCounters
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
    OnCellClick = MyCounterDBGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'MyCounterID'
        Title.Caption = 'My Counter ID'
        Title.Font.Charset = ANSI_CHARSET
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
        FieldName = 'CounterID'
        Title.Alignment = taCenter
        Title.Caption = 'Counter ID'
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
        FieldName = 'CounterName'
        Title.Caption = 'Counter Name'
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
        FieldName = 'BranchCounterID'
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
    Width = 714
    Height = 65
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 710
    object DeleteBtn: TButton
      Left = 366
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
      TabOrder = 1
      OnClick = DeleteBtnClick
    end
    object AddBtn: TButton
      Left = 600
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
      TabOrder = 2
      OnClick = AddBtnClick
    end
    object EditBtn: TButton
      Left = 483
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
      TabOrder = 4
      OnClick = EditBtnClick
    end
    object CloseBtn: TButton
      AlignWithMargins = True
      Left = 15
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
      TabOrder = 5
      OnClick = CloseBtnClick
    end
    object SaveBtn: TButton
      Left = 249
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
      TabOrder = 0
      OnClick = SaveBtnClick
    end
    object CancelBtn: TButton
      Left = 132
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
      TabOrder = 3
      OnClick = CancelBtnClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 714
    Height = 190
    Align = alTop
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
    ExplicitWidth = 710
    object Label1: TLabel
      Left = 595
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
      Left = 589
      Top = 98
      Width = 95
      Height = 21
      Caption = '2- '#1575#1582#1578#1575#1585' '#1575#1604#1588#1576#1575#1603
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
      Caption = '3- '#1575#1603#1578#1576' '#1585#1602#1605' '#1575#1604#1588#1576#1575#1603' '#1575#1604#1601#1593#1604#1609' '#1604#1607#1584#1575' '#1575#1604#1601#1585#1593' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object CmBoxBranches: TComboBox
      Left = 396
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
    object CmBoxCounters: TComboBox
      Left = 396
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
      OnSelect = CmBoxCountersSelect
    end
    object CounterNumberEdit: TEdit
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
      MaxLength = 3
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
    end
  end
  object srcMyCounters: TDataSource
    DataSet = qryMyCounters
    Left = 72
    Top = 144
  end
  object qryBranches: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [Branches]')
    Left = 640
    Top = 115
  end
  object qryCounters: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [Counters]')
    Left = 640
    Top = 187
  end
  object qryMyCounters: TFDQuery
    MasterSource = srcBranches
    MasterFields = 'BranchID'
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [QueCounters]'
      'WHERE [BranchCounterID] = :BranchID'
      'ORDER BY [CounterID]')
    Left = 80
    Top = 376
    ParamData = <
      item
        Name = 'BRANCHID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
  object srcBranches: TDataSource
    DataSet = qryBranches
    Left = 560
    Top = 115
  end
  object qryInsertCounter: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'INSERT INTO [QueCounters] '
      
        'VALUES (:BranchCounterID, :InitCounter,  N'#39#39'+:MyCounterName,  :M' +
        'yBranchID)')
    Left = 184
    Top = 400
    ParamData = <
      item
        Name = 'BRANCHCOUNTERID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'INITCOUNTER'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MYCOUNTERNAME'
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
      'DELETE FROM [QueCounters]'
      '      WHERE [MyCounterID] = :xMyCounterID')
    Left = 296
    Top = 408
    ParamData = <
      item
        Name = 'XMYCOUNTERID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryUpdateID: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'UPDATE [QueCounters]'
      '   SET [BranchCounterID] = :xBranchCounterID'
      '      ,[CounterID] = :xCounterID'
      '      ,[CounterName] = :xCounterName'
      ''
      ' WHERE [MyCounterID] = :xMyCounterID')
    Left = 400
    Top = 416
    ParamData = <
      item
        Name = 'XBRANCHCOUNTERID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XCOUNTERID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XCOUNTERNAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XMYCOUNTERID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
