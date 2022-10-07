object FormQuePrinters: TFormQuePrinters
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = 'My Printers Form'
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
  object MyPrinterDBGrid: TDBGrid
    Left = 0
    Top = 255
    Width = 714
    Height = 446
    Align = alClient
    DataSource = srcMyPrinters
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
    OnCellClick = MyPrinterDBGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'MyPrinterID'
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
        FieldName = 'PrinterID'
        Title.Alignment = taCenter
        Title.Caption = 'Issuer ID'
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
        FieldName = 'PrinterName'
        Title.Caption = 'Printer Name'
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
        FieldName = 'BranchPrinterID'
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
      Left = 585
      Top = 98
      Width = 99
      Height = 21
      Caption = '2- '#1575#1582#1578#1575#1585' '#1575#1604#1591#1575#1576#1593#1577
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 66
      Top = 26
      Width = 230
      Height = 21
      Caption = '3- '#1575#1603#1578#1576' '#1585#1602#1605' '#1575#1604#1591#1575#1576#1593#1577' '#1575#1604#1601#1593#1604#1609' '#1604#1607#1584#1575' '#1575#1604#1601#1585#1593' '
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
    object CmBoxPrinters: TComboBox
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
      OnSelect = CmBoxPrintersSelect
    end
    object PrinterNumberEdit: TEdit
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
  object srcMyPrinters: TDataSource
    DataSet = qryMyPrinter
    Left = 56
    Top = 160
  end
  object qryBranches: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [Branches]')
    Left = 640
    Top = 115
  end
  object qryPrinters: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [Printers]')
    Left = 640
    Top = 187
  end
  object qryMyPrinter: TFDQuery
    MasterSource = srcBranches
    MasterFields = 'BranchID'
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [QuePrinters]'
      'WHERE [BranchPrinterID] = :BranchID'
      'ORDER BY [PrinterID]')
    Left = 96
    Top = 344
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
    Left = 552
    Top = 115
  end
  object qryInsertPrinter: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'INSERT INTO [QuePrinters]'
      
        'VALUES (:BranchPrinterID, :InitPrinter,  N'#39#39'+:MyPrinterName,  :M' +
        'yBranchID)')
    Left = 184
    Top = 368
    ParamData = <
      item
        Name = 'BRANCHPRINTERID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'INITPRINTER'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MYPRINTERNAME'
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
      'DELETE FROM [QuePrinters]'
      '      WHERE [MyPrinterID] = :xMyPrinterID')
    Left = 296
    Top = 376
    ParamData = <
      item
        Name = 'XMYPRINTERID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryUpdateID: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'UPDATE [QuePrinters]'
      '   SET [BranchPrinterID] = :xBranchPrinterID'
      '      ,[PrinterID] = :xPrinterID'
      '      ,[PrinterName] = :xPrinterName'
      ''
      ' WHERE [MyPrinterID] = :xMyPrinterID')
    Left = 400
    Top = 384
    ParamData = <
      item
        Name = 'XBRANCHPRINTERID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XPRINTERID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XPRINTERNAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XMYPRINTERID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
