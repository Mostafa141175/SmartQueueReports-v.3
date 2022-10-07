object FormServices: TFormServices
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1573#1593#1583#1575#1583#1575#1578' '#1575#1604#1582#1583#1605#1575#1578
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
  DesignSize = (
    594
    751)
  TextHeight = 15
  object Label2: TLabel
    Left = 440
    Top = 68
    Width = 73
    Height = 21
    Caption = #1575#1587#1605' '#1575#1604#1582#1583#1605#1577
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
    DataField = 'ServiceName'
    DataSource = SrcService
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
    DataSource = SrcService
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object CloseBtn: TButton
    AlignWithMargins = True
    Left = 430
    Top = 9
    Width = 122
    Height = 52
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 5
    Margins.Bottom = 4
    Anchors = [akTop, akRight]
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
    TabOrder = 2
    OnClick = CloseBtnClick
    ExplicitLeft = 426
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
    TabOrder = 3
    AlternateRow = False
    SelectionStyle = scstStyled
    TransparentEditor = False
    WallpaperIndex = -1
    BackgroundStyle = scgbColor
    ShowFocusRect = True
    LinesColor = clNone
    CustomBackgroundImageIndex = -1
    CustomOverContentImageIndex = -1
    DataSource = SrcService
    Options = [scdgTitles, scdgIndicator, scdgColumnResize, scdgColLines, scdgRowLines, scdgTabs, scdgRowSelect, scdgAlwaysShowSelection, scdgConfirmDelete, scdgCancelOnExit, scdgTitleClick, scdgTitleHotTrack]
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 8
    Width = 300
    Height = 68
    Caption = #1578#1581#1583#1610#1583' '#1575#1604#1582#1583#1605#1575#1578' '#1604#1604#1601#1585#1608#1593
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object SrcService: TDataSource
    DataSet = DataQModule.tblServices
    Left = 296
    Top = 16
  end
end
