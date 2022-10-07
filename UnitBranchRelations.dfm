object FormBranchRelations: TFormBranchRelations
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
  object MyRelationDBGrid: TDBGrid
    Left = 0
    Top = 255
    Width = 714
    Height = 446
    Align = alClient
    DataSource = srcMyRelations
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
    OnCellClick = MyRelationDBGridCellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BranchRelationID'
        Title.Alignment = taCenter
        Title.Caption = 'My ID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BranchID'
        Title.Alignment = taCenter
        Title.Caption = 'Branch ID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BranchName'
        Title.Caption = 'Branch Name'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GroupID'
        Title.Alignment = taCenter
        Title.Caption = 'Group ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupName'
        Title.Caption = 'Group Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
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
      Left = 210
      Top = 26
      Width = 114
      Height = 21
      Caption = '2- '#1575#1582#1578#1575#1585' '#1575#1604#1605#1580#1605#1608#1593#1577
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
    object CmBoxGroups: TComboBox
      Left = 36
      Top = 53
      Width = 288
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnSelect = CmBoxGroupsSelect
    end
  end
  object srcMyRelations: TDataSource
    DataSet = qryMyRelations
    Left = 152
    Top = 312
  end
  object qryBranches: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [Branches]')
    Left = 640
    Top = 115
  end
  object qryGroups: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [BranchGroups]')
    Left = 104
    Top = 115
  end
  object qryMyRelations: TFDQuery
    MasterSource = srcGroups
    MasterFields = 'GroupID'
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [BranchRelationView]'
      'WHERE [GroupID] = :GroupID'
      '--ORDER BY [CounterID]')
    Left = 64
    Top = 312
    ParamData = <
      item
        Name = 'GROUPID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
  object srcGroups: TDataSource
    DataSet = qryGroups
    Left = 184
    Top = 155
  end
  object qryInsertID: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'INSERT INTO [BranchRelationship]'
      'VALUES (:xBranchRelationID, :BranchID, :GroupID)')
    Left = 184
    Top = 400
    ParamData = <
      item
        Name = 'XBRANCHRELATIONID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BRANCHID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GROUPID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryDeleteID: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'DELETE FROM [BranchRelationship]'
      '      WHERE [BranchRelationID] = :xMyRelationID')
    Left = 296
    Top = 408
    ParamData = <
      item
        Name = 'XMYRELATIONID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryUpdateID: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'UPDATE [BranchRelationship]'
      '   SET [BranchRelationID] = :xBranchRelationID'
      '      ,[BranchID] = :xBranchID'
      '      ,[GroupID] = :xGroupID'
      ''
      ' WHERE [BranchRelationID] = :xMyRelationID')
    Left = 400
    Top = 416
    ParamData = <
      item
        Name = 'XBRANCHRELATIONID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XBRANCHID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XGROUPID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XMYRELATIONID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
