object FormReport: TFormReport
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  Caption = 'Report Setup'
  ClientHeight = 680
  ClientWidth = 1067
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object LblFromDate: TLabel
    Left = 63
    Top = 33
    Width = 110
    Height = 16
    Caption = 'Select From Date'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblToDate: TLabel
    Left = 303
    Top = 33
    Width = 94
    Height = 16
    Caption = 'Select To Date'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 63
    Top = 108
    Width = 108
    Height = 16
    Caption = 'Select From Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 303
    Top = 108
    Width = 92
    Height = 16
    Caption = 'Select To Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 820
    Top = 0
    Width = 247
    Height = 680
    Align = alRight
    TabOrder = 0
    ExplicitLeft = 816
    ExplicitHeight = 675
    DesignSize = (
      247
      680)
    object LblServices: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 130
      Width = 235
      Height = 13
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Select Service ID'
      Layout = tlCenter
      ExplicitWidth = 81
    end
    object LblTickets: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 316
      Width = 235
      Height = 13
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Select Ticket'
      Layout = tlCenter
      ExplicitWidth = 60
    end
    object LblBraches: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 68
      Width = 235
      Height = 13
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Select Branch'
      Layout = tlCenter
      ExplicitWidth = 65
    end
    object LblCounters: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 192
      Width = 235
      Height = 13
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Select Counter'
      Layout = tlCenter
      ExplicitWidth = 71
    end
    object LblPrinters: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 254
      Width = 235
      Height = 13
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Select Printer'
      Layout = tlCenter
      ExplicitWidth = 64
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 235
      Height = 13
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Select Group'
      Layout = tlCenter
      ExplicitWidth = 61
    end
    object CmBoxBranches: TComboBox
      AlignWithMargins = True
      Left = 6
      Top = 91
      Width = 235
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object CloseBtn: TButton
      AlignWithMargins = True
      Left = 80
      Top = 607
      Width = 111
      Height = 53
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 4
      Anchors = [akRight, akBottom]
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
      ExplicitTop = 602
    end
    object CmBoxGroups: TComboBox
      AlignWithMargins = True
      Left = 6
      Top = 29
      Width = 235
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnSelect = CmBoxGroupsSelect
    end
    object CmBoxTickets: TComboBox
      AlignWithMargins = True
      Left = 6
      Top = 378
      Width = 235
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object CmBoxService: TComboBox
      AlignWithMargins = True
      Left = 6
      Top = 153
      Width = 235
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object CmBoxCounters: TComboBox
      AlignWithMargins = True
      Left = 6
      Top = 215
      Width = 235
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
    end
    object CmBoxPrinters: TComboBox
      AlignWithMargins = True
      Left = 6
      Top = 277
      Width = 235
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
    end
    object TicketNumberBox: TNumberBox
      AlignWithMargins = True
      Left = 6
      Top = 339
      Width = 235
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object TicketsRepBtn: TButton
    Left = 543
    Top = 249
    Width = 185
    Height = 75
    Caption = 'Tickets Details Rport'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = TicketsRepBtnClick
  end
  object CountersRepBtn: TButton
    Left = 63
    Top = 249
    Width = 185
    Height = 75
    Caption = 'Counters Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = CountersRepBtnClick
  end
  object ServicesRepBtn: TButton
    Left = 303
    Top = 249
    Width = 185
    Height = 75
    Caption = 'Services Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = ServicesRepBtnClick
  end
  object PrintersRepBtn: TButton
    Left = 543
    Top = 359
    Width = 185
    Height = 75
    Caption = 'Printers Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = PrintersRepBtnClick
  end
  object LoggingRepBtn: TButton
    Left = 303
    Top = 359
    Width = 185
    Height = 75
    Caption = 'Logging Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = LoggingRepBtnClick
  end
  object ToDateEdit: TsDateEdit
    Left = 303
    Top = 55
    Width = 200
    Height = 26
    Hint = #1575#1582#1578#1575#1585' '#1575#1604#1578#1575#1585#1610#1582
    Alignment = taCenter
    MaxLength = 10
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    OnChange = ToDateEditChange
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShowWeeks = True
    TitleHeight = 30
    TitleBtnsWidth = 20
    DefaultToday = True
    PopupHeight = 250
    PopupWidth = 450
    Weekends = [dowSaturday, dowSunday, dowLocaleDefault]
  end
  object FromDateEdit: TsDateEdit
    Left = 63
    Top = 55
    Width = 200
    Height = 26
    Hint = #1575#1582#1578#1575#1585' '#1575#1604#1578#1575#1585#1610#1582
    Alignment = taCenter
    MaxLength = 10
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    OnChange = FromDateEditChange
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShowWeeks = True
    TitleHeight = 30
    TitleBtnsWidth = 20
    DefaultToday = True
    PopupHeight = 250
    PopupWidth = 450
    Weekends = [dowSaturday, dowSunday, dowLocaleDefault]
  end
  object FilesRepBtn: TButton
    Left = 63
    Top = 359
    Width = 185
    Height = 75
    Caption = 'Imported Files Report'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = FilesRepBtnClick
  end
  object FromTimeEdit: TscTimeEdit
    Left = 63
    Top = 130
    Width = 100
    Height = 26
    FluentUIOpaque = False
    UseFontColorToStyleColor = False
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomBackgroundImageNormalIndex = -1
    CustomBackgroundImageHotIndex = -1
    CustomBackgroundImageDisabledIndex = -1
    PromptTextColor = clNone
    HideMaskWithEmptyText = False
    HidePromptTextIfFocused = False
    WallpaperIndex = -1
    ShowUpDown = False
    ShowMSec = False
    ShowSec = True
    Transparent = False
    BorderKind = scebFrame
    FrameColor = clBtnShadow
    FrameActiveColor = clHighlight
    Alignment = taCenter
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 9
    Text = '00:00:00'
    OnChange = FromTimeEditChange
  end
  object ToTimeEdit: TscTimeEdit
    Left = 303
    Top = 130
    Width = 99
    Height = 26
    FluentUIOpaque = False
    UseFontColorToStyleColor = False
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomBackgroundImageNormalIndex = -1
    CustomBackgroundImageHotIndex = -1
    CustomBackgroundImageDisabledIndex = -1
    PromptTextColor = clNone
    HideMaskWithEmptyText = False
    HidePromptTextIfFocused = False
    WallpaperIndex = -1
    ShowUpDown = False
    ShowMSec = False
    ShowSec = True
    Transparent = False
    BorderKind = scebFrame
    FrameColor = clBtnShadow
    FrameActiveColor = clHighlight
    Alignment = taCenter
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 10
    Text = '23:59:59'
    OnChange = ToTimeEditChange
  end
  object qryBranchesMOS: TFDQuery
    Connection = DMReports.FDConnectionReports
    SQL.Strings = (
      '--SELECT * FROM Branches'
      '--SELECT DISTINCT * FROM [Tickets]'
      ''
      'SELECT * FROM   [Branches]'
      ''
      ''
      '')
    Left = 749
    Top = 80
  end
  object qryTickets: TFDQuery
    Connection = DMReports.FDConnectionReports
    SQL.Strings = (
      'SELECT DISTINCT TicketID, TicketNo '
      'FROM GetTicketDetailsView')
    Left = 752
    Top = 280
  end
  object qryGroups: TFDQuery
    Connection = DMReports.FDConnectionReports
    SQL.Strings = (
      'SELECT DISTINCT * FROM [BranchGroups]'
      ''
      ''
      
        '--SELECT DISTINCT [GroupID] ,[BranchRelationID] ,[BranchID] ,[Br' +
        'anchName] ,[GroupName]'
      '--  FROM [BranchRelationView]')
    Left = 752
    Top = 16
  end
  object qryServices: TFDQuery
    Connection = DMReports.FDConnectionReports
    SQL.Strings = (
      '--SELECT DISTINCT ServiceName FROM GetTicketDetailsView'
      'SELECT [ServiceID], [ServiceName]'
      'FROM   [Services]')
    Left = 752
    Top = 152
  end
  object qryCounters: TFDQuery
    Connection = DMReports.FDConnectionReports
    SQL.Strings = (
      '--SELECT DISTINCT CounterName FROM GetTicketDetailsView'
      ''
      'SELECT [CounterID], [CounterName]'
      'FROM   [Counters]')
    Left = 752
    Top = 216
  end
  object qryPrinters: TFDQuery
    Connection = DMReports.FDConnectionReports
    SQL.Strings = (
      '--SELECT DISTINCT CounterName FROM GetTicketDetailsView'
      ''
      'SELECT [PrinterID], [PrinterName]'
      'FROM   [Printers]')
    Left = 752
    Top = 344
  end
  object SrcGroup: TDataSource
    DataSet = qryGroups
    Left = 672
    Top = 16
  end
  object qryBranches: TFDQuery
    MasterSource = SrcGroup
    MasterFields = 'GroupID'
    Connection = DataQModule.FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    SQL.Strings = (
      'SELECT DISTINCT '
      '   BranchID, BranchName, GroupsID, GroupName'
      'FROM'
      '   Branches, BranchGroups'
      'WHERE'
      '   Branches.GroupsID = BranchGroups.GroupID'
      'AND   Branches.GroupsID = :GroupID')
    Left = 651
    Top = 88
    ParamData = <
      item
        Name = 'GROUPID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQuery1: TFDQuery
    MasterSource = SrcGroup
    MasterFields = 'GroupID'
    Connection = DMReports.FDConnectionReports
    SQL.Strings = (
      'SELECT * FROM [BranchRelationView]'
      'WHERE GroupID = :GroupID')
    Left = 892
    Top = 96
    ParamData = <
      item
        Name = 'GROUPID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
end
