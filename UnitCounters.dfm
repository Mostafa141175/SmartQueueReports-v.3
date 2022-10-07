object FormCounters: TFormCounters
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1573#1593#1583#1575#1583#1575#1578' '#1575#1604#1588#1576#1575#1576#1610#1603
  ClientHeight = 751
  ClientWidth = 594
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
  object Label2: TLabel
    Left = 440
    Top = 67
    Width = 74
    Height = 21
    Caption = #1575#1587#1605' '#1575#1604#1588#1576#1575#1603
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit2: TDBEdit
    Left = 17
    Top = 95
    Width = 560
    Height = 29
    BiDiMode = bdRightToLeft
    DataField = 'CounterName'
    DataSource = SrcCounters
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 17
    Top = 135
    Width = 558
    Height = 70
    DataSource = SrcCounters
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object scDBGrid1: TscDBGrid
    Left = 17
    Top = 221
    Width = 560
    Height = 510
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 2
    AlternateRow = False
    SelectionStyle = scstStyled
    TransparentEditor = False
    WallpaperIndex = -1
    BackgroundStyle = scgbColor
    ShowFocusRect = True
    LinesColor = clNone
    CustomBackgroundImageIndex = -1
    CustomOverContentImageIndex = -1
    DataSource = SrcCounters
    Options = [scdgTitles, scdgIndicator, scdgColumnResize, scdgColLines, scdgRowLines, scdgTabs, scdgRowSelect, scdgAlwaysShowSelection, scdgConfirmDelete, scdgCancelOnExit, scdgTitleClick, scdgTitleHotTrack]
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 64
    Top = 61
    Width = 300
    Height = 68
    Caption = #1578#1581#1583#1610#1583' '#1575#1604#1588#1576#1575#1576#1610#1603' '#1604#1604#1601#1585#1608#1593
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 65
    Align = alTop
    TabOrder = 4
    ExplicitLeft = -19
    ExplicitTop = 32
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
  object SrcCounters: TDataSource
    DataSet = DataQModule.tblCounters
    Left = 272
    Top = 296
  end
end
