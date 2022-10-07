object FormBranchGroup: TFormBranchGroup
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1573#1593#1583#1575#1583#1575#1578' '#1575#1604#1605#1580#1605#1608#1593#1577
  ClientHeight = 702
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  ShowHint = True
  TextHeight = 15
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 5
    Top = 249
    Width = 591
    Height = 407
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    DataSource = srcBranchGroups
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GroupID'
        Title.Alignment = taCenter
        Title.Caption = 'Group ID'
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'GroupName'
        Title.Caption = 'Group Name'
        Visible = True
      end>
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 68
    Width = 595
    Height = 173
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 486
      Top = 20
      Width = 75
      Height = 19
      Caption = #1585#1602#1605' '#1575#1604#1605#1580#1605#1608#1593#1577
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 484
      Top = 89
      Width = 77
      Height = 19
      Caption = #1575#1587#1605' '#1575#1604#1605#1580#1605#1608#1593#1577
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupIDEdit: TEdit
      Left = 480
      Top = 45
      Width = 81
      Height = 27
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object GroupNameEdit: TEdit
      Left = 120
      Top = 114
      Width = 441
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 661
    Width = 601
    Height = 41
    Align = alBottom
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    ExplicitTop = 656
    ExplicitWidth = 682
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 65
    Align = alTop
    TabOrder = 3
    ExplicitLeft = -25
    ExplicitTop = -7
    ExplicitWidth = 686
    object DeleteBtn: TButton
      Left = 303
      Top = 8
      Width = 90
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
    end
    object AddBtn: TButton
      Left = 495
      Top = 8
      Width = 90
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
    end
    object EditBtn: TButton
      Left = 399
      Top = 8
      Width = 90
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
    end
    object CloseBtn: TButton
      AlignWithMargins = True
      Left = 13
      Top = 8
      Width = 90
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
      Left = 207
      Top = 8
      Width = 90
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
    end
    object CancelBtn: TButton
      Left = 111
      Top = 8
      Width = 90
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
    end
  end
  object srcBranchGroups: TDataSource
    DataSet = DataQModule.tblBrachGroups
    Left = 304
    Top = 432
  end
end
