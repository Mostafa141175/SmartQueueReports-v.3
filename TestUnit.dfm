object TestForm: TTestForm
  Left = 206
  Top = 154
  Caption = 'TestForm'
  ClientHeight = 656
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object LblUpChr: TLabel
    Left = 54
    Top = 243
    Width = 169
    Height = 14
    Caption = 'A Capital (Uppercase) letter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblLoChr: TLabel
    Left = 54
    Top = 279
    Width = 111
    Height = 14
    Caption = 'A lowercase letter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNmrChr: TLabel
    Left = 54
    Top = 315
    Width = 60
    Height = 14
    Caption = 'A Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblSpecialChr: TLabel
    Left = 54
    Top = 351
    Width = 114
    Height = 14
    Caption = 'A special character'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPassLength: TLabel
    Left = 54
    Top = 387
    Width = 134
    Height = 14
    Caption = 'Minimum 6 characters'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ImgUpChar: TVirtualImage
    Left = 23
    Top = 232
    Width = 25
    Height = 25
    ImageCollection = MainForm.ImageCollection1
    ImageWidth = 0
    ImageHeight = 0
    ImageIndex = 50
    ImageName = 'icons8_Close_48px'
  end
  object ImgLoChar: TVirtualImage
    Left = 23
    Top = 268
    Width = 25
    Height = 25
    ImageCollection = MainForm.ImageCollection1
    ImageWidth = 0
    ImageHeight = 0
    ImageIndex = 50
    ImageName = 'icons8_Close_48px'
  end
  object ImgNmrChar: TVirtualImage
    Left = 23
    Top = 304
    Width = 25
    Height = 25
    ImageCollection = MainForm.ImageCollection1
    ImageWidth = 0
    ImageHeight = 0
    ImageIndex = 50
    ImageName = 'icons8_Close_48px'
  end
  object ImgSpecialChar: TVirtualImage
    Left = 23
    Top = 340
    Width = 25
    Height = 25
    ImageCollection = MainForm.ImageCollection1
    ImageWidth = 0
    ImageHeight = 0
    ImageIndex = 50
    ImageName = 'icons8_Close_48px'
  end
  object ImgLengthChar: TVirtualImage
    Left = 23
    Top = 376
    Width = 25
    Height = 25
    ImageCollection = MainForm.ImageCollection1
    ImageWidth = 0
    ImageHeight = 0
    ImageIndex = 50
    ImageName = 'icons8_Close_48px'
  end
  object DBGrid1: TDBGrid
    Left = 472
    Top = 87
    Width = 650
    Height = 538
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GroupID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupName'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BranchID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BranchName'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TicketID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TicketDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TicketTime'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShiftID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiceID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiceName'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IssuerID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrinterName'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TicketNo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WaitingNo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ActionDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ActionTime'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ActionName'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiceTypeID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiceTypeName'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CounterID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CounterName'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WaitingTime'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiceTime'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IsComplete'
        Width = 50
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1122
    Height = 89
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1118
    DesignSize = (
      1122
      89)
    object CloseBtn: TButton
      AlignWithMargins = True
      Left = 1007
      Top = 8
      Width = 107
      Height = 73
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alRight
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
      ExplicitLeft = 1003
    end
    object MoveToTableBtn: TButton
      Left = 828
      Top = 8
      Width = 140
      Height = 73
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Move TXT To Table'
      TabOrder = 1
      OnClick = MoveToTableBtnClick
      ExplicitLeft = 824
    end
    object MoveToTxtBtn: TButton
      Left = 673
      Top = 8
      Width = 129
      Height = 73
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Move Table to TXT'
      TabOrder = 2
      OnClick = MoveToTxtBtnClick
      ExplicitLeft = 669
    end
    object MoveToSQLBtn: TButton
      Left = 465
      Top = 8
      Width = 169
      Height = 73
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Move Table to SQL Table'
      TabOrder = 3
      OnClick = MoveToSQLBtnClick
      ExplicitLeft = 461
    end
    object CalendarPicker1: TCalendarPicker
      Left = 29
      Top = 8
      Height = 32
      CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
      CalendarHeaderInfo.DaysOfWeekFont.Height = -13
      CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
      CalendarHeaderInfo.DaysOfWeekFont.Style = []
      CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.Font.Color = clWindowText
      CalendarHeaderInfo.Font.Height = -20
      CalendarHeaderInfo.Font.Name = 'Segoe UI'
      CalendarHeaderInfo.Font.Style = []
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      OnChange = CalendarPicker1Change
      ParentFont = False
      ShowFirstOfGroupLabel = True
      TabOrder = 4
      TextHint = 'select a date'
    end
    object TimePicker1: TTimePicker
      Left = 175
      Top = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 5
      Time = 44485.034270601850000000
      TimeFormat = 'hh:nn'
    end
    object scDateEdit1: TscDateEdit
      Left = 29
      Top = 60
      Width = 136
      Height = 21
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
      BlanksChar = ' '
      TodayDefault = False
      CalendarWidth = 200
      CalendarHeight = 150
      CalendarFont.Charset = DEFAULT_CHARSET
      CalendarFont.Color = clWindowText
      CalendarFont.Height = -12
      CalendarFont.Name = 'Segoe UI'
      CalendarFont.Style = []
      CalendarBoldDays = False
      CalendarBackgroundStyle = sccasPanel
      CalendarWallpaperIndex = -1
      FirstDayOfWeek = Sun
      WeekNumbers = False
      ShowToday = False
      LeftButton.ComboButton = False
      LeftButton.Enabled = True
      LeftButton.Visible = False
      LeftButton.ShowHint = False
      LeftButton.ShowEllipses = False
      LeftButton.StyleKind = scbsPushButton
      LeftButton.Width = 18
      LeftButton.ImageIndex = -1
      LeftButton.ImageHotIndex = -1
      LeftButton.ImagePressedIndex = -1
      LeftButton.RepeatClick = False
      LeftButton.RepeatClickInterval = 200
      LeftButton.CustomImageNormalIndex = -1
      LeftButton.CustomImageHotIndex = -1
      LeftButton.CustomImagePressedIndex = -1
      LeftButton.CustomImageDisabledIndex = -1
      RightButton.ComboButton = False
      RightButton.Enabled = True
      RightButton.Visible = True
      RightButton.ShowHint = False
      RightButton.ShowEllipses = True
      RightButton.StyleKind = scbsPushButton
      RightButton.Width = 18
      RightButton.ImageIndex = -1
      RightButton.ImageHotIndex = -1
      RightButton.ImagePressedIndex = -1
      RightButton.RepeatClick = False
      RightButton.RepeatClickInterval = 200
      RightButton.CustomImageNormalIndex = -1
      RightButton.CustomImageHotIndex = -1
      RightButton.CustomImagePressedIndex = -1
      RightButton.CustomImageDisabledIndex = -1
      Transparent = False
      BorderKind = scebFrame
      FrameColor = clBtnShadow
      FrameActiveColor = clHighlight
      MaxLength = 10
      TabOrder = 6
    end
    object sDateEdit1: TsDateEdit
      Left = 138
      Top = 46
      Width = 321
      Height = 21
      Alignment = taCenter
      AutoSize = False
      MaxLength = 10
      ParentShowHint = False
      ShowHint = False
      TabOrder = 7
      ShowWeeks = True
      TravellingSelection = True
      TitleHeight = 20
      TitleBtnsWidth = 20
      DefaultToday = True
      PopupHeight = 250
      PopupWidth = 350
      Weekends = [dowSaturday, dowSunday]
    end
  end
  object TreeView1: TTreeView
    Left = 23
    Top = 95
    Width = 250
    Height = 81
    CheckBoxes = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    HideSelection = False
    Indent = 19
    ParentFont = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 2
  end
  object PassEdit: TEdit
    Left = 23
    Top = 192
    Width = 250
    Height = 21
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 3
    TextHint = '321321'
    OnChange = PassEditChange
  end
  object Edit2: TEdit
    Left = 6
    Top = 470
    Width = 433
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 158
    Top = 497
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
    OnClick = Button1Click
  end
  object MemoLog: TMemo
    Left = 8
    Top = 528
    Width = 458
    Height = 120
    Lines.Strings = (
      'MemoLog')
    ScrollBars = ssBoth
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 592
    Top = 552
  end
  object fdSQLConn: TFDConnection
    Params.Strings = (
      'Server=(local)'
      'Database=SmartQueue'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 944
    Top = 392
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 944
    Top = 456
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 944
    Top = 528
  end
  object FDQuery1: TFDQuery
    Connection = fdSQLConn
    SQL.Strings = (
      'SELECT * FROM GetTicketDetailsView')
    Left = 672
    Top = 544
  end
  object FDQuery2: TFDQuery
    Connection = fdSQLConn
    SQL.Strings = (
      
        'SELECT [GroupName], [BranchName], [TicketDate], [TicketTime], [S' +
        'hiftID], [ServiceName], [PrinterName], [TicketNo], [WaitingNo], '
      
        '       [ActionDate], [ActionTime], [ActionName], [ServiceTypeNam' +
        'e], [CounterName], [WaitingTime], [ServiceTime]'
      ''
      'FROM [GetTicketDetailsView]')
    Left = 512
    Top = 400
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveTextWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 752
    Top = 168
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    Left = 688
    Top = 200
  end
  object FDBatchMoveTextWriter1: TFDBatchMoveTextWriter
    DataDef.Fields = <>
    Left = 840
    Top = 200
  end
end
