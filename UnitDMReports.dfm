object DMReports: TDMReports
  Height = 764
  Width = 1123
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 1031
    Top = 168
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 1031
    Top = 96
  end
  object FDConnectionReports: TFDConnection
    Params.Strings = (
      'ConnectionDef=SmartQueue_v03')
    FetchOptions.AssignedValues = [evMode]
    LoginPrompt = False
    Left = 1031
    Top = 40
  end
  object frxRepLogFiles: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.AllowPreviewEdit = False
    PreviewOptions.Buttons = [pbPrint, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44393.529018923600000000
    ReportOptions.LastChange = 44785.499836979200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Const'
      '  RepVersion = '#39'version 02.01.02.01'#39';  '
      '  '
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxRepLogFilesGetValue
    Left = 208
    Top = 96
    Datasets = <
      item
        DataSet = frxDSLogFiles
        DataSetName = 'frxDSQLogFiles'
      end>
    Variables = <
      item
        Name = ' RepDateVariables'
        Value = Null
      end
      item
        Name = 'StartDate'
        Value = 'Date'
      end
      item
        Name = 'EndDate'
        Value = 'Date'
      end
      item
        Name = 'RVersion'
        Value = 'RepVersion'
      end
      item
        Name = 'StartTime'
        Value = 'Time'
      end
      item
        Name = 'EndTime'
        Value = 'Time'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      TitleBeforeHeader = False
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 257.008040000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object CustomerNameCustomerName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Width = 400.630180000000000000
          Height = 41.574830000000000000
          DataField = 'CustomerName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerName"]')
          ParentFont = False
        end
        object CustomerNameCustomerEnName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 52.913420000000000000
          Width = 400.630180000000000000
          Height = 41.574830000000000000
          DataField = 'CustomerEnName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerEnName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 298.204917000000000000
          Height = 139.842610000000000000
          DataField = 'CustomerLogo'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CustomerNameLocation: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 105.826840000000000000
          Width = 260.787570000000000000
          Height = 37.795300000000000000
          DataField = 'Location'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."Location"]')
          ParentFont = False
        end
        object EndDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 147.401670000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 147.401670000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object StartDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 147.401670000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 147.401670000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1575#1585#1610#1582' '#1605#1606' ')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 181.417440000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1608#1602#1610#1578' '#1605#1606' ')
          ParentFont = False
        end
        object FromTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.354670000000000000
          Top = 181.417440000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartTime]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 181.417440000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object ToTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 389.614410000000000000
          Top = 181.417440000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndTime]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 464.882190000000000000
        Width = 740.409927000000000000
        DataSet = frxDSLogFiles
        DataSetName = 'frxDSQLogFiles'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clCream
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object frxDSQLogFilesQLogCRC: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.708720000000000000
          Top = 3.779530000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'BranchName'
          DataSet = frxDSLogFiles
          DataSetName = 'frxDSQLogFiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDSQLogFiles."BranchName"]')
          ParentFont = False
        end
        object frxDSQLogFilesBranchID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'BranchID'
          DataSet = frxDSLogFiles
          DataSetName = 'frxDSQLogFiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDSQLogFiles."BranchID"]')
          ParentFont = False
        end
        object frxDSQLogFilesQLogName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 282.378170000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'QLogName'
          DataSet = frxDSLogFiles
          DataSetName = 'frxDSQLogFiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDSQLogFiles."QLogName"]')
          ParentFont = False
        end
        object frxDSQLogFilesLogDate: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 392.764070000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'LogDate'
          DataSet = frxDSLogFiles
          DataSetName = 'frxDSQLogFiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDSQLogFiles."LogDate"]')
          ParentFont = False
        end
        object frxDSQLogFilesUserName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'UserName'
          DataSet = frxDSLogFiles
          DataSetName = 'frxDSQLogFiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDSQLogFiles."UserName"]')
          ParentFont = False
        end
        object frxDSQLogFilesUserID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 561.071228500000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'UserID'
          DataSet = frxDSLogFiles
          DataSetName = 'frxDSQLogFiles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDSQLogFiles."UserID"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 555.590910000000000000
        Width = 740.409927000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 7.559060000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page: [Page#]  from: [TotalPages#]  ')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 3.220470000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object RVersion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RVersion]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 53.692950000000000000
        Top = 298.582870000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 42.354360000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 7.559060000000000000
          Width = 317.480520000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Print Date: [Date]    Time: [Time]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 9.259848500000000000
          Top = 3.779530000000000000
          Width = 222.992270000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Smart Que Log Report')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 374.173470000000000000
        Width = 740.409927000000000000
        object Shape1: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clYellow
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Branch ID')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 132.842610000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Branch Name')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 282.378170000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'File Name')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 392.764070000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Imported Date / Time')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'User Name')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'User ID')
          ParentFont = False
        end
      end
    end
  end
  object frxDSLogFiles: TfrxDBDataset
    UserName = 'frxDSQLogFiles'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QFileMD5Hash=QFileMD5Hash'
      'BranchID=BranchID'
      'BranchName=BranchName'
      'GroupID=GroupID'
      'QLogName=QLogName'
      'LogDate=LogDate'
      'UserID=UserID'
      'UserName=UserName')
    DataSet = qryQueFiles
    BCDToCurrency = False
    DataSetOptions = []
    Left = 40
    Top = 96
  end
  object qryQueFiles: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      
        'SELECT [QFileMD5Hash] ,[Branches].[BranchID] ,[BranchName] ,[Gro' +
        'upID] ,[QLogName] ,[LogDate] ,[UserID] ,[UserName]'
      ''
      'FROM [QueSysFiles], [Branches]'
      'WHERE [Branches].[BranchID] = [QueSysFiles].[BranchID]'
      ''
      'ORDER BY LogDate DESC')
    Left = 120
    Top = 96
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 
      'C:\Projects\Smart Queue Log RX11 Alexandria\Reports\Arabic Test ' +
      'Counters_01.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44565.425005983790000000
    DataOnly = False
    EmbeddedFonts = True
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = True
    PrintOptimized = False
    Outline = True
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 1032
    Top = 224
  end
  object frxRepLogging: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44417.610484675900000000
    ReportOptions.LastChange = 44785.499337581000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Const'
      '  RepVersion = '#39'version 02.01.02.01'#39';    '
      '  '
      'begin'
      ''
      'end.')
    OnGetValue = frxRepLoggingGetValue
    Left = 208
    Top = 24
    Datasets = <
      item
        DataSet = frxDBLogging
        DataSetName = 'DSLogging'
      end>
    Variables = <
      item
        Name = ' RepDateVariables'
        Value = Null
      end
      item
        Name = 'StartDate'
        Value = 'Date'
      end
      item
        Name = 'EndDate'
        Value = 'Date'
      end
      item
        Name = 'RVersion'
        Value = 'RepVersion'
      end
      item
        Name = 'StartTime'
        Value = 'Time'
      end
      item
        Name = 'EndTime'
        Value = 'Time'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 272.126160000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object CustomerNameCustomerName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 41.574830000000000000
          DataField = 'CustomerName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerName"]')
          ParentFont = False
        end
        object CustomerNameCustomerEnName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 56.692950000000000000
          Width = 400.630180000000000000
          Height = 41.574830000000000000
          DataField = 'CustomerEnName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerEnName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 298.204917000000000000
          Height = 139.842610000000000000
          DataField = 'CustomerLogo'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CustomerNameLocation: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 109.606370000000000000
          Width = 260.787570000000000000
          Height = 37.795300000000000000
          DataField = 'Location'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."Location"]')
          ParentFont = False
        end
        object EndDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 154.960730000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 154.960730000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object StartDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 154.960730000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 154.960730000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1575#1585#1610#1582' '#1605#1606' ')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 188.976500000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1608#1602#1610#1578' '#1605#1606' ')
          ParentFont = False
        end
        object FromTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.354670000000000000
          Top = 188.976500000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartTime]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 188.976500000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object ToTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 389.614410000000000000
          Top = 188.976500000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndTime]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 5.669295000000000000
          Width = 249.071027000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Logging Report')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 5.779527560000000000
          Width = 317.480520000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Print Date: [Date]    Time: [Time]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 476.220780000000000000
        Width = 740.409927000000000000
        DataSet = frxDBLogging
        DataSetName = 'DSLogging'
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 41.574830000000000000
          Fill.BackColor = clCream
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object DSLoggingLogingDate: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 90.708676060000000000
          Height = 18.897650000000000000
          DataField = 'LogingDate'
          DataSet = frxDBLogging
          DataSetName = 'DSLogging'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSLogging."LogingDate"]')
          ParentFont = False
        end
        object DSLoggingLogingTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 97.590600000000000000
          Top = 3.779530000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataField = 'LogingTime'
          DataSet = frxDBLogging
          DataSetName = 'DSLogging'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSLogging."LogingTime"]')
          ParentFont = False
        end
        object DSLoggingLogingUser: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 169.401670000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'LogingUser'
          DataSet = frxDBLogging
          DataSetName = 'DSLogging'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSLogging."LogingUser"]')
        end
        object DSLoggingLogUserAction: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.110390000000000000
          Top = 3.779530000000000000
          Width = 468.661583310000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'LogUserAction'
          DataSet = frxDBLogging
          DataSetName = 'DSLogging'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSLogging."LogUserAction"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 34.015770000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 7.000000000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Date')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 97.590600000000000000
          Top = 7.000000000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Time')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 169.401670000000000000
          Top = 7.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'User Name')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 260.110390000000000000
          Top = 7.000000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Action / Information')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 28.795300000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 578.268090000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Page: [page]  from: [TotalPages#]')
          ParentFont = False
        end
        object RVersion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RVersion]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBLogging: TfrxDBDataset
    UserName = 'DSLogging'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LogingDate=LogingDate'
      'LogingTime=LogingTime'
      'LogUserID=LogUserID'
      'LogingUser=LogingUser'
      'LogUserAction=LogUserAction')
    DataSet = qryLogging
    BCDToCurrency = False
    DataSetOptions = []
    Left = 40
    Top = 24
  end
  object qryLogging: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      'SELECT *  FROM Logging'
      '-- ORDER BY LogingDate, LogingTime'
      ''
      'ORDER BY  [LogingDate] DESC, [LogingTime] DESC ')
    Left = 120
    Top = 24
  end
  object qryCustomer: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      'SELECT * FROM Customers')
    Left = 848
    Top = 32
  end
  object qryBranches: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      'SELECT * FROM Branches')
    Left = 672
    Top = 32
  end
  object qryBranchGroupes: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      'SELECT * FROM BranchGroups')
    Left = 496
    Top = 32
  end
  object frxCustomer: TfrxDBDataset
    UserName = 'CustomerName'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CustomerID=CustomerID'
      'CustomerName=CustomerName'
      'CustomerEnName=CustomerEnName'
      'Location=Location'
      'CustomerLogo=CustomerLogo')
    DataSet = qryCustomer
    BCDToCurrency = False
    DataSetOptions = []
    Left = 776
    Top = 32
  end
  object frxBranch: TfrxDBDataset
    UserName = 'BranchName'
    CloseDataSource = False
    FieldAliases.Strings = (
      'BranchID=BranchID'
      'BranchName=BranchName')
    DataSet = qryBranches
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 32
  end
  object frxBranchGroup: TfrxDBDataset
    UserName = 'BranchGroup'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GroupID=GroupID'
      'GroupName=GroupName')
    DataSet = qryBranchGroupes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 400
    Top = 32
  end
  object qryGetTickets: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      '--SELECT DISTINCT * FROM [Tickets]'
      '--WHERE ServiceID = 2'
      
        '--AND ([TicketDate] >= :xFromDate) AND ([TicketDate] <= :xToDate' +
        ')'
      ''
      'SELECT DISTINCT  * FROM [Tickets]'
      ''
      
        'ORDER BY  [TicketDate] DESC, [GroupID], [BranchID], [TicketTime]' +
        ' DESC'
      '')
    Left = 408
    Top = 152
  end
  object SrcGetTickets: TDataSource
    DataSet = qryGetTickets
    Left = 488
    Top = 152
  end
  object frxDsGetTicket: TfrxDBDataset
    UserName = 'GetTicket'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TicketID=TicketID'
      'TicketNo=TicketNo'
      'ShiftID=ShiftID'
      'IssuedServiceID=IssuedServiceID'
      'IssuerID=IssuerID'
      'TicketDate=TicketDate'
      'TicketTime=TicketTime'
      'CurrentServiceID=CurrentServiceID'
      'CounterID=CounterID'
      'BranchID=BranchID'
      'GroupID=GroupID'
      'GroupName=GroupName'
      'BranchName=BranchName')
    DataSet = qryGetTickets
    BCDToCurrency = False
    DataSetOptions = []
    Left = 400
    Top = 216
  end
  object frxGetTicketsReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.OutlineVisible = True
    PreviewOptions.OutlineWidth = 160
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44395.444637824100000000
    ReportOptions.LastChange = 44788.857863206000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'var'
      '  WaitTime, ServTime : TTime;'
      '  StrWaitTime, StrServTime : String;'
      '  Wait, Serv, TotalWait, TotalServ : Integer;'
      ''
      'const'
      '  SecPerDay = 86400;'
      '  SecPerHour = 3600;'
      '  SecPerMinute = 60;'
      ''
      '  RepVersion = '#39'version 02.01.02.01'#39';'
      ''
      ''
      'Function AddZero(Nmr, DigCount: Integer): String;'
      'Var St : String;'
      '    L,J : Integer;'
      'Begin'
      '      St := IntToStr(Nmr);'
      '      L  := Length(St);'
      '      If L < DigCount Then'
      '          For J := DigCount DownTo L + 1 Do'
      '          St := '#39'0'#39' + St ;'
      '   Result := St;'
      'end;'
      ''
      '//function SecondToTime(const Seconds: Cardinal): Double;'
      'function SecondToTime(const Seconds: Cardinal): String;'
      'var'
      '  zzz, ss, mm, hh, dd: Cardinal;'
      'begin'
      '    dd := Seconds div SecPerDay;'
      '    hh := (Seconds mod SecPerDay) div SecPerHour;'
      
        '    mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMin' +
        'ute;'
      
        '    ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMin' +
        'ute;'
      '    zzz := 000;'
      '//  Result := dd + EncodeTime(hh, mm, ss, zzz);'
      '//    Result := EncodeTime(hh, mm, ss, zzz);'
      '    if dd > 0 then'
      
        '//       Result := IntToStr(dd) +'#39'.'#39'+ AddZero(hh, 2)+'#39':'#39'+ AddZer' +
        'o(mm, 2)+'#39':'#39'+ AddZero(ss, 2)'
      
        '        Result := IntToStr(dd) +'#39'.'#39'+ TimeToStr(EncodeTime(HH, MM' +
        ', SS, zzz))'
      '    else'
      
        '//       Result := AddZero(hh, 2)+'#39':'#39'+ AddZero(mm, 2)+'#39':'#39'+ AddZe' +
        'ro(ss, 2);'
      '        Result :=  TimeToStr(EncodeTime(HH, MM, SS, zzz));'
      'end;'
      ''
      'procedure ServiceTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    StrServTime := SecondToTime(TotalServ);'
      '    ServiceTimeMemo.Text := StrServTime ;'
      ''
      '{    if Length(StrServTime) = 8 then'
      '      begin'
      '         ServTime := StrToTime(StrServTime);'
      '      end;'
      '    ServiceTimeMemo.Text := TimeToStr(ServTime) ;'
      ''
      '    If ServTime >= StrToTime ('#39'00:15:00'#39') Then'
      '     Begin'
      '         ServiceTimeMemo.Color := clMaroon;'
      '         ServiceTimeMemo.Font.Color := clWhite;'
      '     End'
      '     Else'
      '     Begin'
      '         ServiceTimeMemo.Color := clNone;'
      '         ServiceTimeMemo.Font.Color := clBlack;'
      '     End; }'
      ''
      '     Serv := 0;'
      '     Wait := 0;'
      '     TotalWait := 0;'
      '     TotalServ := 0;'
      'end;'
      ''
      'procedure WintingTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    StrWaitTime := SecondToTime(TotalWait);'
      '    WintingTimeMemo.Text := StrWaitTime ;'
      ''
      '{    WaitTime := StrToTime(SecondToTime(TotalWait));'
      '    WintingTimeMemo.Text := TimeToStr(WaitTime) ;'
      ''
      '    If WaitTime >= StrToTime ('#39'00:10:00'#39') Then'
      '     Begin'
      '         WintingTimeMemo.Color := clYellow;'
      '     End'
      '     Else'
      '     Begin'
      '         WintingTimeMemo.Color := clNone;'
      '     End;   }'
      'end;'
      ''
      'procedure IssuerMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    If (<GetTicketsView."IssuedServiceID">) = 0 Then'
      '      IssuerMemo.Text := (<GetTicketsView."CounterName">)'
      'end;'
      ''
      
        'procedure GetQueTicketDetailsWaitingTimeOnBeforePrint(Sender: Tf' +
        'rxComponent);'
      'begin'
      '   IF (<GetTicketsView."IsComplete">) = True  THEN'
      '     BEGIN'
      '         Serv := (<GetTicketsView."ServiceSeconds">);'
      '         Wait := (<GetTicketsView."WaitingSeconds">);'
      '         TotalServ := TotalServ + Serv;'
      '         TotalWait := TotalWait + Wait;'
      '     END;'
      ''
      
        '{    WaitTime := StrToTime(SecondToTime(<GetTicketsView."Waiting' +
        'Time">));'
      
        '    GetQueTicketDetailsWaitingTime.Text := TimeToStr(WaitTime) ;' +
        '}'
      ''
      
        '    StrWaitTime := SecondToTime(<GetTicketsView."WaitingSeconds"' +
        '>);'
      '    GetQueTicketDetailsWaitingTime.Text := StrWaitTime;'
      ''
      
        '//     GetQueTicketDetailsWaitingTime.Text := FormatDateTime('#39'HH' +
        ':MM:SS'#39', Time);'
      'end;'
      ''
      
        'procedure GetQueTicketDetailsServiceTimeOnBeforePrint(Sender: Tf' +
        'rxComponent);'
      'begin'
      
        '{    ServTime := StrToTime(SecondToTime(<GetTicketsView."Service' +
        'Time">));'
      
        '    GetQueTicketDetailsServiceTime.Text := TimeToStr(ServTime); ' +
        ' }'
      ''
      
        '    StrServTime := SecondToTime(<GetTicketsView."ServiceSeconds"' +
        '>);'
      '    GetQueTicketDetailsServiceTime.Text := StrServTime;'
      'end;'
      ''
      ''
      'procedure CounterNameMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   If CounterNameMemo.Text = '#39#39' Then'
      '      CounterNameMemo.Text := (<GetTicketsView."CounterID">)'
      '   else'
      '      CounterNameMemo.Text := (<GetTicketsView."CounterName">);'
      'end;'
      ''
      'procedure ServiceNameMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   If ServiceNameMemo.Text = '#39#39' Then'
      
        '      ServiceNameMemo.Text := (<GetTicketsView."CurrentServiceID' +
        '">)'
      '   else'
      
        '       ServiceNameMemo.Text := (<GetTicketsView."CurrentServiceN' +
        'ame">);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxGetTicketsReportGetValue
    Left = 488
    Top = 232
    Datasets = <
      item
        DataSet = frxCustomer
        DataSetName = 'CustomerName'
      end
      item
        DataSet = frxDsGetTicket
        DataSetName = 'GetTicket'
      end
      item
        DataSet = frxDsGetTicketsView
        DataSetName = 'GetTicketsView'
      end>
    Variables = <
      item
        Name = ' RepDateVariables'
        Value = Null
      end
      item
        Name = 'StartDate'
        Value = 'Date'
      end
      item
        Name = 'EndDate'
        Value = 'Date'
      end
      item
        Name = 'RVersion'
        Value = 'RepVersion'
      end
      item
        Name = 'StartTime'
        Value = 'Time'
      end
      item
        Name = 'EndTime'
        Value = 'Time'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 570.709030000000000000
        Width = 740.409927000000000000
        DataSet = frxDsGetTicket
        DataSetName = 'GetTicket'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 34.015770000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 7.559066100000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '  [GetTicket."TicketNo"] :  '#1578#1584#1603#1585#1577' ')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 5.338590000000000000
          Top = 7.559066100000000000
          Width = 162.519790000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[GetTicket."TicketDate"] [GetTicket."TicketTime"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object IssuerMemo: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 7.559066100000000000
          Width = 162.519790000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'IssuerMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetTicketsView."PrinterName"]  ')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 7.559066100000000000
          Width = 102.047310000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ' [GetTicket."ShiftID"] :  '#1585#1602#1605' '#1575#1604#1576#1575#1578#1588)
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [GetTicketsView."WaitingNo"] :  '#1575#1606#1578#1592#1575#1585)
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 204.094620000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object CustomerNameCustomerName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 400.630180000000000000
          Height = 41.574830000000000000
          DataField = 'CustomerName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerName"]')
          ParentFont = False
        end
        object CustomerNameCustomerEnName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 49.133890000000000000
          Width = 400.630180000000000000
          Height = 41.574830000000000000
          DataField = 'CustomerEnName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerEnName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 298.204917000000000000
          Height = 139.842610000000000000
          DataField = 'CustomerLogo'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CustomerNameLocation: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 98.267780000000000000
          Width = 260.787570000000000000
          Height = 37.795300000000000000
          DataField = 'Location'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."Location"]')
          ParentFont = False
        end
        object EndDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 143.622140000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 143.622140000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object StartDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 143.622140000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 143.622140000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1575#1585#1610#1582' '#1605#1606' ')
          ParentFont = False
        end
        object ToTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.834880000000000000
          Top = 177.637910000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndTime]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 177.637910000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object FromTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.575140000000000000
          Top = 177.637910000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartTime]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 177.637910000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1608#1602#1610#1578' '#1605#1606' ')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 39.692950000000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779527560000000000
          Width = 313.700990000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tickets Details Report')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 35.913420000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 3.897650000000000000
          Width = 313.700990000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Print date: [Date]   Time: [Time]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 661.417750000000000000
        Width = 740.409927000000000000
        object Shape7: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 26.456710000000000000
          Fill.BackColor = clYellow
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 153.622140000000000000
          Top = 3.047244090000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1593#1605#1604#1610#1577)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 3.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1582#1583#1605#1577)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 484.102660000000000000
          Top = 3.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1588#1576#1575#1603)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 6.220470000000000000
          Top = 3.047244090000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582' '#1575#1604#1573#1589#1583#1575#1585)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 579.370440000000000000
          Top = 3.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1583#1577' '#1575#1604#1575#1606#1578#1592#1575#1585)
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 664.520100000000000000
          Top = 3.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1583#1577' '#1575#1604#1582#1583#1605#1577)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 948.662030000000000000
        Width = 740.409927000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 7.559072200000000000
          Width = 188.976500000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page: [Page#]  from: [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object RVersion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RVersion]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 816.378480000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 347.716760000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."GroupName"'
        KeepTogether = True
        OutlineText = 'GetTicket."GroupName"'
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 181.228463500000000000
          Top = 5.669295000000000000
          Width = 377.953000000000000000
          Height = 34.015770000000000000
          DataSetName = 'frxDSTicket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetTicket."GroupName"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 411.968770000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."BranchName"'
        KeepTogether = True
        OutlineText = 'GetTicket."BranchName"'
        StartNewPage = True
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 294.803340000000000000
          Height = 30.236240000000000000
          DataSetName = 'frxDSTicket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[GetTicketsView."TicketDate"]')
          ParentFont = False
        end
        object frxDSTicketBranchName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 7.559060000000000000
          Width = 245.669450000000000000
          Height = 30.236240000000000000
          DataSetName = 'frxDSTicket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetTicketsView."BranchName"]')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 517.795610000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicketsView."TicketDate"'
        KeepChild = True
        KeepTogether = True
        OutlineText = 'GetTicketsView."TicketDate"'
        object Shape3: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = 16311249
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 4.669301100000000000
          Width = 222.992270000000000000
          Height = 22.677167800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '  [GetTicket."ShiftID"]    '#1585#1602#1605' '#1575#1604#1576#1575#1578#1588)
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 763.465060000000000000
        Width = 740.409927000000000000
        object Shape5: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.188930000000000000
          Top = 6.559055120000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<GetTicketsView."ActionTime"> - <GetTicket."TicketTime">)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 110.385900000000000000
          Top = 6.779530000000000000
          Width = 94.488188980000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ' '#1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1583#1577)
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 6.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1605#1583#1577' '#1575#1604#1575#1606#1578#1592#1575#1585)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 6.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1605#1583#1577' '#1575#1604#1582#1583#1605#1577)
          ParentFont = False
        end
        object WintingTimeMemo: TfrxMemoView
          AllowVectorExport = True
          Left = 278.905690000000000000
          Top = 6.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'WintingTimeMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object ServiceTimeMemo: TfrxMemoView
          AllowVectorExport = True
          Left = 548.811380000000000000
          Top = 6.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'ServiceTimeMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 710.551640000000000000
        Width = 740.409927000000000000
        DataSet = frxDsGetTicketsView
        DataSetName = 'GetTicketsView'
        KeepHeader = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clCream
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 6.220470000000000000
          Top = 7.559060000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[GetTicketsView."ActionDate"] [GetTicketsView."ActionTime"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 149.842610000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSetName = 'GetQueTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[GetTicketsView."ActionName"]')
          ParentFont = False
        end
        object ServiceNameMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 231.110390000000000000
          Top = 7.559060000000000000
          Width = 154.960629920000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'ServiceNameMemoOnBeforePrint'
          DataSetName = 'GetQueTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetTicketsView."CurrentServiceName"]')
          ParentFont = False
        end
        object CounterNameMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 423.630180000000000000
          Top = 7.559060000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'CounterNameMemoOnBeforePrint'
          DataSetName = 'GetQueTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetTicketsView."CounterName"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object GetQueTicketDetailsWaitingTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 583.149970000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'GetQueTicketDetailsWaitingTimeOnBeforePrint'
          DataSet = frxDsGetTicketsView
          DataSetName = 'GetTicketsView'
          DisplayFormat.FormatStr = 'HH:MM:SS'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GetTicketsView."WaitingSeconds"]')
          ParentFont = False
        end
        object GetQueTicketDetailsServiceTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 662.520100000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'GetQueTicketDetailsServiceTimeOnBeforePrint'
          DataSet = frxDsGetTicketsView
          DataSetName = 'GetTicketsView'
          DisplayFormat.FormatStr = 'HH:MM:SS'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GetTicketsView."WaitingSeconds"]')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 627.401980000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicketsView."TicketNo"'
        KeepTogether = True
        OutlineText = 'GetTicketsView."TicketNo"'
      end
      object GroupHeader5: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 480.000310000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."ShiftID"'
        OutlineText = 'GetTicket."ShiftID"'
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220472440900000
        Top = 857.953310000000000000
        Width = 740.409927000000000000
        object Shape6: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236220472440900000
          Fill.BackColor = 16311249
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 6.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 6.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1573#1580#1605#1575#1604#1609' '#1575#1604#1578#1584#1575#1603#1585)
          ParentFont = False
        end
      end
    end
  end
  object qryGetTicketView: TFDQuery
    MasterSource = SrcGetTickets
    MasterFields = 'TicketID'
    DetailFields = 'TicketID'
    Connection = FDConnectionReports
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM [GetTicketDetailsView]'
      ''
      'WHERE ([TicketID] = :TicketID)'
      ''
      
        'ORDER BY [TicketDate] DESC,  [GroupID], [BranchID],  [ActionTime' +
        ']')
    Left = 576
    Top = 152
    ParamData = <
      item
        Name = 'TICKETID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 32
        Value = '202109300939040002010001010000'
      end>
  end
  object frxDsGetTicketsView: TfrxDBDataset
    UserName = 'GetTicketsView'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GroupName=GroupName'
      'BranchName=BranchName'
      'TicketDate=TicketDate'
      'TicketTime=TicketTime'
      'ShiftID=ShiftID'
      'ServiceName=ServiceName'
      'PrinterName=PrinterName'
      'TicketNo=TicketNo'
      'WaitingNo=WaitingNo'
      'ActionDate=ActionDate'
      'ActionTime=ActionTime'
      'ActionName=ActionName'
      'CurrentServiceName=CurrentServiceName'
      'CounterName=CounterName'
      'WaitingTime=WaitingTime'
      'WaitingSeconds=WaitingSeconds'
      'ServiceTime=ServiceTime'
      'ServiceSeconds=ServiceSeconds'
      'IsComplete=IsComplete'
      'GroupID=GroupID'
      'BranchID=BranchID'
      'TicketID=TicketID'
      'IssuedServiceID=IssuedServiceID'
      'UserID=UserID'
      'IssuerID=IssuerID'
      'CurrentServiceID=CurrentServiceID'
      'CounterID=CounterID')
    DataSet = qryGetTicketView
    BCDToCurrency = False
    DataSetOptions = []
    Left = 568
    Top = 216
  end
  object qryGetAllDetails: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      'SELECT * FROM  GetTicketDetailsView'
      'ORDER BY  ActionDate DESC,  GroupID, BranchID,  ActionTime')
    Left = 120
    Top = 160
  end
  object frxXLSXExport1: TfrxXLSXExport
    FileName = 
      'C:\Projects\Smart Queue Log RX11 Alexandria\Reports\RepQueueTick' +
      'etDetails_111.xlsx'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44483.720005243060000000
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = True
    PictureType = gpPNG
    Wysiwyg = False
    Left = 1032
    Top = 280
  end
  object frxDOCXExport1: TfrxDOCXExport
    FileName = 'RepQueueTicketDetails.docx'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44483.718057881950000000
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    ExportType = dxTable
    Left = 1032
    Top = 336
  end
  object frxDsGetAllDetails: TfrxDBDataset
    UserName = 'GetAllDetails'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GroupName=GroupName'
      'BranchName=BranchName'
      'TicketDate=TicketDate'
      'TicketTime=TicketTime'
      'ShiftID=ShiftID'
      'ServiceName=ServiceName'
      'PrinterName=PrinterName'
      'TicketNo=TicketNo'
      'WaitingNo=WaitingNo'
      'ActionDate=ActionDate'
      'ActionTime=ActionTime'
      'ActionName=ActionName'
      'ServiceTypeName=ServiceTypeName'
      'CounterName=CounterName'
      'WaitingTime=WaitingTime'
      'ServiceTime=ServiceTime'
      'IsComplete=IsComplete'
      'GroupID=GroupID'
      'BranchID=BranchID'
      'TicketID=TicketID'
      'ServiceID=ServiceID'
      'UserID=UserID'
      'IssuerID=IssuerID'
      'ServiceTypeID=ServiceTypeID'
      'CounterID=CounterID')
    DataSet = qryGetAllDetails
    BCDToCurrency = False
    DataSetOptions = []
    Left = 40
    Top = 160
  end
  object frxRepExportAllDetails: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44481.863489849500000000
    ReportOptions.LastChange = 44487.038395011570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'var'
      '  WaitTime, ServTime : TTime;'
      
        '  StrWait, StrServ : String;                                    ' +
        '                        '
      '  '
      'const'
      '  SecPerDay = 86400;'
      '  SecPerHour = 3600;'
      '  SecPerMinute = 60;'
      ''
      'Function AddZero(Nmr, DigCount: Integer): String;'
      'var St : String;'
      '    L,J : Integer;'
      'Begin'
      '      St := IntToStr(Nmr);'
      '      L  := Length(St);'
      '      If L < DigCount Then'
      '          For J := DigCount DownTo L + 1 Do'
      '          St := '#39'0'#39' + St ;'
      '   Result := St;'
      'End;'
      ''
      'function SecondToTime(const Seconds: Cardinal): String;'
      'var'
      '  ss, mm, hh, dd: Cardinal;'
      'begin'
      '    dd := Seconds div SecPerDay;'
      '    hh := (Seconds mod SecPerDay) div SecPerHour;'
      
        '    mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMin' +
        'ute;'
      
        '    ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMin' +
        'ute;'
      ''
      '    if dd > 0 then'
      
        '       Result := IntToStr(dd) +'#39'.'#39'+ AddZero(hh, 2)+'#39':'#39'+ AddZero(' +
        'mm, 2)+'#39':'#39'+ AddZero(ss, 2)'
      '    else'
      
        '       Result := AddZero(hh, 2)+'#39':'#39'+ AddZero(mm, 2)+'#39':'#39'+ AddZero' +
        '(ss, 2);'
      'end;'
      ' '
      'begin'
      ''
      'end.')
    OnGetValue = frxRepExportAllDetailsGetValue
    Left = 208
    Top = 160
    Datasets = <
      item
        DataSet = frxDsGetAllDetails
        DataSetName = 'GetAllDetails'
      end>
    Variables = <
      item
        Name = ' RepDateVariables'
        Value = Null
      end
      item
        Name = 'StartDate'
        Value = 'Date'
      end
      item
        Name = 'EndDate'
        Value = 'Date'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object qryGetCurrentServiceID: TFDQuery
    MasterSource = SrcAllServices
    MasterFields = 'CurrentServiceID'
    DetailFields = 'CurrentServiceID'
    Connection = FDConnectionReports
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      '--SELECT DISTINCT * FROM [Tickets]'
      ''
      ''
      'SELECT *  FROM [IsCompleteTicketsView]'
      ''
      'WHERE [CurrentServiceID] = :CurrentServiceID'
      '--AND [TicketDate] = '#39'09-30-2021'#39
      ''
      'ORDER BY  [TicketDate] DESC, [CurrentServiceID], [ActionTime]')
    Left = 232
    Top = 544
    ParamData = <
      item
        Name = 'CURRENTSERVICEID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = 32
      end>
  end
  object qryGetPrinterID: TFDQuery
    MasterSource = srcAllPrinters
    MasterFields = 'PrinterID'
    DetailFields = 'IssuerID'
    Connection = FDConnectionReports
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      '--SELECT DISTINCT * FROM [Tickets]'
      ''
      'SELECT *  FROM [GetTicketDetailsView]'
      ''
      ''
      
        'WHERE ([IssuerID] = :PrinterID) AND ([ActionName] = '#39'PRINT'#39' OR [' +
        'ActionName] = '#39'SELECT'#39')'
      '--AND [IssuerID] = :PrinterID'
      ''
      'ORDER BY [TicketDate] DESC, [IssuerID], [TicketTime]')
    Left = 808
    Top = 384
    ParamData = <
      item
        Name = 'PRINTERID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = 50
      end>
  end
  object qryGetCounterID: TFDQuery
    MasterSource = SrcAllCounters
    MasterFields = 'CounterID'
    DetailFields = 'CounterID'
    Connection = FDConnectionReports
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      '--SELECT DISTINCT * FROM [Tickets]'
      ''
      ''
      'SELECT *  FROM [IsCompleteTicketsView]'
      ''
      'WHERE [CounterID] = :CounterID'
      '--AND [TicketDate] = '#39'09-30-2021'#39
      ''
      'ORDER BY  [TicketDate] DESC, [GroupID], [BranchID], [ActionTime]')
    Left = 232
    Top = 320
    ParamData = <
      item
        Name = 'COUNTERID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = 48
      end>
  end
  object frxDsGetPrinterID: TfrxDBDataset
    UserName = 'GetPrinterID'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GroupName=GroupName'
      'BranchName=BranchName'
      'TicketDate=TicketDate'
      'TicketTime=TicketTime'
      'ShiftID=ShiftID'
      'ServiceName=ServiceName'
      'PrinterName=PrinterName'
      'TicketNo=TicketNo'
      'WaitingNo=WaitingNo'
      'ActionDate=ActionDate'
      'ActionTime=ActionTime'
      'ActionName=ActionName'
      'CurrentServiceName=CurrentServiceName'
      'CounterName=CounterName'
      'WaitingTime=WaitingTime'
      'WaitingSeconds=WaitingSeconds'
      'ServiceTime=ServiceTime'
      'ServiceSeconds=ServiceSeconds'
      'IsComplete=IsComplete'
      'GroupID=GroupID'
      'BranchID=BranchID'
      'TicketID=TicketID'
      'IssuedServiceID=IssuedServiceID'
      'UserID=UserID'
      'IssuerID=IssuerID'
      'CurrentServiceID=CurrentServiceID'
      'CounterID=CounterID')
    DataSet = qryGetPrinterID
    BCDToCurrency = False
    DataSetOptions = []
    Left = 808
    Top = 448
  end
  object frxDsGetServiceTypeID: TfrxDBDataset
    UserName = 'GetCurrentServiceID'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GroupName=GroupName'
      'BranchName=BranchName'
      'TicketDate=TicketDate'
      'TicketTime=TicketTime'
      'ShiftID=ShiftID'
      'ServiceName=ServiceName'
      'PrinterName=PrinterName'
      'TicketNo=TicketNo'
      'WaitingNo=WaitingNo'
      'ActionDate=ActionDate'
      'ActionTime=ActionTime'
      'ActionName=ActionName'
      'CurrentServiceName=CurrentServiceName'
      'CounterName=CounterName'
      'WaitingTime=WaitingTime'
      'WaitingSeconds=WaitingSeconds'
      'ServiceTime=ServiceTime'
      'ServiceSeconds=ServiceSeconds'
      'IsComplete=IsComplete'
      'GroupID=GroupID'
      'BranchID=BranchID'
      'TicketID=TicketID'
      'IssuedServiceID=IssuedServiceID'
      'UserID=UserID'
      'IssuerID=IssuerID'
      'CurrentServiceID=CurrentServiceID'
      'CounterID=CounterID')
    DataSet = qryGetCurrentServiceID
    BCDToCurrency = False
    DataSetOptions = []
    Left = 240
    Top = 616
  end
  object frxDsGetCounterID: TfrxDBDataset
    UserName = 'GetCounterID'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GroupName=GroupName'
      'BranchName=BranchName'
      'TicketDate=TicketDate'
      'TicketTime=TicketTime'
      'ShiftID=ShiftID'
      'ServiceName=ServiceName'
      'PrinterName=PrinterName'
      'TicketNo=TicketNo'
      'WaitingNo=WaitingNo'
      'ActionDate=ActionDate'
      'ActionTime=ActionTime'
      'ActionName=ActionName'
      'CurrentServiceName=CurrentServiceName'
      'CounterName=CounterName'
      'WaitingTime=WaitingTime'
      'WaitingSeconds=WaitingSeconds'
      'ServiceTime=ServiceTime'
      'ServiceSeconds=ServiceSeconds'
      'IsComplete=IsComplete'
      'GroupID=GroupID'
      'BranchID=BranchID'
      'TicketID=TicketID'
      'IssuedServiceID=IssuedServiceID'
      'UserID=UserID'
      'IssuerID=IssuerID'
      'CurrentServiceID=CurrentServiceID'
      'CounterID=CounterID')
    DataSet = qryGetCounterID
    BCDToCurrency = False
    DataSetOptions = []
    Left = 232
    Top = 384
  end
  object frxCurrentServiceIDReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.OutlineVisible = True
    PreviewOptions.OutlineWidth = 160
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44395.444637824100000000
    ReportOptions.LastChange = 44785.443172268500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'var'
      '  WaitTime, ServTime : TTime;'
      '  StrWaitTime, StrServTime : String;'
      '  TWait, TServ, TotalWait, TotalServ, TotalTime : Integer;'
      ''
      'const'
      '  SecPerDay = 86400;'
      '  SecPerHour = 3600;'
      '  SecPerMinute = 60;'
      ''
      '  RepVersion = '#39'version 02.01.02.01'#39';'
      ''
      '{     TServ = 0;'
      '     TWait = 0;'
      '     TotalWait = 0;'
      '     TotalServ = 0; }'
      ''
      'Function AddZero(Nmr, DigCount: Integer): String;'
      'Var St : String;'
      '    L,J : Integer;'
      'Begin'
      '      St := IntToStr(Nmr);'
      '      L  := Length(St);'
      '      If L < DigCount Then'
      '          For J := DigCount DownTo L + 1 Do'
      '          St := '#39'0'#39' + St ;'
      '   Result := St;'
      'end;'
      ''
      '//function SecondToTime(const Seconds: Cardinal): Double;'
      'function SecondToTimeStr(const Seconds: Cardinal): String;'
      'var'
      '  zzz, ss, mm, hh, dd: Cardinal;'
      'begin'
      '    dd := Seconds div SecPerDay;'
      '    hh := (Seconds mod SecPerDay) div SecPerHour;'
      
        '    mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMin' +
        'ute;'
      
        '    ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMin' +
        'ute;'
      '    zzz := 000;'
      '//  Result := dd + EncodeTime(hh, mm, ss, zzz);'
      '//    Result := EncodeTime(hh, mm, ss, zzz);'
      '    if dd > 0 then'
      
        '//       Result := IntToStr(dd) +'#39'.'#39'+ AddZero(hh, 2)+'#39':'#39'+ AddZer' +
        'o(mm, 2)+'#39':'#39'+ AddZero(ss, 2)'
      
        '        Result := IntToStr(dd) +'#39'.'#39'+ TimeToStr(EncodeTime(hh, mm' +
        ', ss, zzz))'
      '    else'
      
        '//       Result := AddZero(hh, 2)+'#39':'#39'+ AddZero(mm, 2)+'#39':'#39'+ AddZe' +
        'ro(ss, 2);'
      '        Result :=  TimeToStr(EncodeTime(hh, mm, ss, zzz));'
      'end;'
      ''
      'procedure ServiceTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    StrServTime := SecondToTimeStr(TotalServ);'
      '    ServiceTimeMemo.Text := StrServTime ;'
      ''
      '{    if Length(StrServTime) = 8 then'
      '      begin'
      '         ServTime := StrToTime(StrServTime);'
      '      end;'
      '    ServiceTimeMemo.Text := TimeToStr(ServTime) ;'
      ''
      '    If ServTime >= StrToTime ('#39'00:15:00'#39') Then'
      '     Begin'
      '         ServiceTimeMemo.Color := clMaroon;'
      '         ServiceTimeMemo.Font.Color := clWhite;'
      '     End'
      '     Else'
      '     Begin'
      '         ServiceTimeMemo.Color := clNone;'
      '         ServiceTimeMemo.Font.Color := clBlack;'
      '     End; }'
      ''
      '     TServ := 0;'
      '     TWait := 0;'
      '     TotalWait := 0;'
      '     TotalServ := 0;'
      'end;'
      ''
      'procedure WintingTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    StrWaitTime := SecondToTimeStr(TotalWait);'
      '    WintingTimeMemo.Text := StrWaitTime ;'
      ''
      '{    WaitTime := StrToTime(SecondToTime(TotalWait));'
      '    WintingTimeMemo.Text := TimeToStr(WaitTime) ;'
      ''
      '    If WaitTime >= StrToTime ('#39'00:10:00'#39') Then'
      '     Begin'
      '         WintingTimeMemo.Color := clYellow;'
      '     End'
      '     Else'
      '     Begin'
      '         WintingTimeMemo.Color := clNone;'
      '     End;   }'
      'end;'
      ''
      ''
      
        'procedure GetServiceIDWaitingTimeOnBeforePrint(Sender: TfrxCompo' +
        'nent);'
      'begin'
      '   IF (<GetCurrentServiceID."IsComplete">) = True  THEN'
      '     BEGIN'
      '        TWait := (<GetCurrentServiceID."WaitingSeconds">);'
      '        TotalWait := TotalWait + TWait;'
      '     END;'
      ''
      
        '   GetServiceIDWaitingTime.Text := SecondToTimeStr(<GetCurrentSe' +
        'rviceID."WaitingSeconds">);'
      'end;'
      ''
      
        'procedure GetServiceIDServiceTimeOnBeforePrint(Sender: TfrxCompo' +
        'nent);'
      'begin'
      '   IF (<GetCurrentServiceID."IsComplete">) = True  THEN'
      '     BEGIN'
      '         TServ := (<GetCurrentServiceID."ServiceSeconds">);'
      '         TotalServ := TotalServ + TServ;'
      '     END;'
      
        '    GetServiceIDServiceTime.Text := SecondToTimeStr(<GetCurrentS' +
        'erviceID."ServiceSeconds">);'
      'end;'
      ''
      ''
      'procedure TotalTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  Srv, Wt, TT :TTime;'
      'begin'
      '     Wt := StrToTime (StrWaitTime);'
      '     Srv := StrToTime (StrServTime);'
      '     TT := (Wt + srv);'
      '     TotalTimeMemo.Text := TimeToStr(TT);'
      'end;'
      ''
      'procedure TicketTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'var TicketSecond : Integer;'
      'begin'
      
        '     TicketSecond := (<GetCurrentServiceID."ServiceSeconds">) + ' +
        '(<GetCurrentServiceID."WaitingSeconds">);'
      '     TicketTimeMemo.Text := SecondToTimeStr(TicketSecond);'
      'end;'
      ''
      'procedure CounterNameMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   If CounterNameMemo.Text = '#39#39' Then'
      
        '      CounterNameMemo.Text := (<GetCurrentServiceID."CounterID">' +
        ')'
      '   else'
      
        '      CounterNameMemo.Text := (<GetCurrentServiceID."CounterName' +
        '">);         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxCurrentServiceIDReportGetValue
    Left = 128
    Top = 640
    Datasets = <
      item
        DataSet = frxDsAllServices
        DataSetName = 'AllServices'
      end
      item
        DataSet = frxCustomer
        DataSetName = 'CustomerName'
      end
      item
        DataSet = frxDsGetServiceTypeID
        DataSetName = 'GetCurrentServiceID'
      end
      item
        DataSet = frxDsGetTicket
        DataSetName = 'GetTicket'
      end>
    Variables = <
      item
        Name = ' RepVariables'
        Value = Null
      end
      item
        Name = 'StartDate'
        Value = 'Date'
      end
      item
        Name = 'EndDate'
        Value = 'Date'
      end
      item
        Name = 'RVersion'
        Value = 'RepVersion'
      end
      item
        Name = 'StartTime'
        Value = 'Time'
      end
      item
        Name = 'EndTime'
        Value = 'Time'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 585.827150000000000000
        Width = 740.409927000000000000
        DataSet = frxDsAllServices
        DataSetName = 'AllServices'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 34.015770000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 7.559066100000000000
          Width = 260.787570000000000000
          Height = 18.897637800000000000
          DataField = 'CurrentServiceName'
          DataSet = frxDsAllServices
          DataSetName = 'AllServices'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[AllServices."CurrentServiceName"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 275.905690000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object CustomerNameCustomerName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 328.819110000000000000
          Height = 34.015770000000000000
          DataField = 'CustomerName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerName"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 42.795300000000000000
          Width = 343.937230000000000000
          Height = 34.015770000000000000
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerEnName"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.220470000000000000
          Width = 370.015987000000000000
          Height = 132.283550000000000000
          DataField = 'CustomerLogo'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CustomerNameLocation: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 84.370130000000000000
          Width = 260.787570000000000000
          Height = 37.795300000000000000
          DataField = 'Location'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."Location"]')
          ParentFont = False
        end
        object EndDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 124.724490000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 124.724490000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object StartDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 124.724490000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 124.724490000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1575#1585#1610#1582' '#1605#1606' ')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 158.740260000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1608#1602#1610#1578' '#1605#1606' ')
          ParentFont = False
        end
        object FromTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.795610000000000000
          Top = 158.740260000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartTime]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 158.740260000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object ToTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 382.055350000000000000
          Top = 158.740260000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndTime]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 317.480520000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.228355000000000000
          Width = 313.700990000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Services Details Report')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 417.527830000000000000
          Top = 1.000000000000000000
          Width = 313.700990000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Print date: [Date]   Time: [Time]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 642.520100000000000000
        Width = 740.409927000000000000
        object Shape6: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 34.015770000000000000
          Fill.BackColor = clYellow
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 153.622140000000000000
          Top = 6.047244090000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1575#1604#1605#1593#1575#1605#1604#1577)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 366.716760000000000000
          Top = 6.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1602#1605' '#1575#1604#1588#1576#1575#1603)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 7.220470000000000000
          Top = 6.047244090000000000
          Width = 124.724490000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1608#1602#1578' '#1608#1578#1575#1585#1610#1582' '#1575#1604#1575#1589#1583#1575#1585)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 470.764070000000000000
          Top = 6.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1583#1577' '#1575#1604#1575#1606#1578#1592#1575#1585)
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 549.693260000000000000
          Top = 6.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1586#1605#1606' '#1575#1604#1582#1583#1605#1577)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 232.330860000000000000
          Top = 6.047244090000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1602#1605' '#1575#1604#1578#1584#1603#1585#1577)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 6.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1580#1605#1575#1604#1609' '#1575#1604#1605#1583#1577)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 933.543910000000000000
        Width = 740.409927000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 11.118132200000000000
          Width = 147.401670000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page: [Page#]   from: [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object RVersion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 10.559060000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RVersion]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 805.039890000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 430.866420000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."GroupName"'
        KeepTogether = True
        OutlineText = 'GetTicket."GroupName"'
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 457.323130000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."BranchName"'
        KeepTogether = True
        OutlineText = 'GetTicket."BranchName"'
        StartNewPage = True
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 9.448818900000000000
        Top = 487.559370000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."TicketDate"'
        KeepChild = True
        KeepTogether = True
        OutlineText = 'GetTicket."TicketDate"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 752.126470000000000000
        Width = 740.409927000000000000
        object Shape5: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clSkyBlue
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 7.559060000000000000
          Width = 79.370068980000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1583#1577)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1605#1583#1577' '#1575#1604#1575#1606#1578#1592#1575#1585)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1605#1583#1577' '#1575#1604#1582#1583#1605#1577)
          ParentFont = False
          VAlign = vaBottom
        end
        object WintingTimeMemo: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'WintingTimeMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object ServiceTimeMemo: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'ServiceTimeMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object TotalTimeMemo: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'TotalTimeMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 699.213050000000000000
        Width = 740.409927000000000000
        DataSet = frxDsGetServiceTypeID
        DataSetName = 'GetCurrentServiceID'
        KeepHeader = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clCream
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.220470000000000000
          Top = 7.559060000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[GetCurrentServiceID."ActionDate"] [GetCurrentServiceID."ActionT' +
              'ime"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 149.842610000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ActionName'
          DataSet = frxDsGetServiceTypeID
          DataSetName = 'GetCurrentServiceID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[GetCurrentServiceID."ActionName"]')
          ParentFont = False
        end
        object CounterNameMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.921460000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'CounterNameMemoOnBeforePrint'
          DataSet = frxDsGetServiceTypeID
          DataSetName = 'GetCurrentServiceID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetCurrentServiceID."CounterName"]')
          ParentFont = False
        end
        object GetServiceIDWaitingTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 466.543600000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'GetServiceIDWaitingTimeOnBeforePrint'
          DataSet = frxDsGetServiceTypeID
          DataSetName = 'GetCurrentServiceID'
          DisplayFormat.FormatStr = 'HH:MM:SS'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GetCurrentServiceID."WaitingSeconds"]')
          ParentFont = False
        end
        object GetServiceIDServiceTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.693260000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'GetServiceIDServiceTimeOnBeforePrint'
          DataSet = frxDsGetServiceTypeID
          DataSetName = 'GetCurrentServiceID'
          DisplayFormat.FormatStr = 'HH:MM:SS'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GetCurrentServiceID."ServiceSeconds"]')
          ParentFont = False
        end
        object GetServiceTypeIDTicketNo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxDsGetServiceTypeID
          DataSetName = 'GetCurrentServiceID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GetCurrentServiceID."TicketNo"]')
          ParentFont = False
        end
        object TicketTimeMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'TicketTimeMemoOnBeforePrint'
          DataSet = frxDsGetServiceTypeID
          DataSetName = 'GetCurrentServiceID'
          DisplayFormat.FormatStr = 'HH:MM:SS'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '00:00:00')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 521.575140000000000000
        Width = 740.409927000000000000
        Condition = 'AllServices."CurrentServiceName"'
        KeepChild = True
        KeepTogether = True
        OutlineText = 'AllServices."CurrentServiceName"'
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.456710000000000000
        Top = 842.835190000000000000
        Width = 740.409927000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 28.456710000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1593#1575#1605#1604#1575#1578)
          ParentFont = False
        end
      end
      object GroupHeader5: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 551.811380000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."ShiftID"'
        KeepTogether = True
      end
    end
  end
  object frxCounterIDReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.OutlineVisible = True
    PreviewOptions.OutlineWidth = 160
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44395.444637824100000000
    ReportOptions.LastChange = 44785.372958067100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'var'
      '  ServTime : TTime;'
      '  StrServTime : String;'
      '  TServ,  TotalServ, TotalTime : Integer;'
      ''
      ''
      ''
      'const'
      '  SecPerDay = 86400;'
      '  SecPerHour = 3600;'
      '  SecPerMinute = 60;'
      ''
      '  RepVersion = '#39'version 02.01.02.01'#39';'
      ''
      'function SecondToTimeStr(const Seconds: Cardinal): String;'
      'var'
      '  zzz, ss, mm, hh, dd: Cardinal;'
      'begin'
      '    dd := Seconds div SecPerDay;'
      '    hh := (Seconds mod SecPerDay) div SecPerHour;'
      
        '    mm := ((Seconds mod SecPerDay) mod SecPerHour) div SecPerMin' +
        'ute;'
      
        '    ss := ((Seconds mod SecPerDay) mod SecPerHour) mod SecPerMin' +
        'ute;'
      '    zzz := 000;'
      '    if dd > 0 then'
      
        '        Result := IntToStr(dd) +'#39'.'#39'+ TimeToStr(EncodeTime(hh, mm' +
        ', ss, zzz))'
      '    else'
      '        Result :=  TimeToStr(EncodeTime(hh, mm, ss, zzz));'
      'end;'
      ''
      'procedure ServiceTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    StrServTime := SecondToTimeStr(TotalServ);'
      '    ServiceTimeMemo.Text := '#39'Service Time: '#39' + StrServTime ;'
      ''
      '     TServ := 0;'
      '     TotalServ := 0;'
      'end;'
      ''
      
        'procedure GetServiceIDServiceTimeOnBeforePrint(Sender: TfrxCompo' +
        'nent);'
      'begin'
      '   IF (<GetCounterID."IsComplete">) = True  THEN'
      '     BEGIN'
      '         TServ := (<GetCounterID."ServiceSeconds">);'
      '         TotalServ := TotalServ + TServ;'
      '     END;'
      
        '    GetServiceIDServiceTime.Text := SecondToTimeStr(<GetCounterI' +
        'D."ServiceSeconds">);'
      'end;'
      ''
      ''
      'procedure MinSTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//   MinSTimeMemo.Text := '#39'MIN: '#39'+ SecondToTimeStr(MIN(<GetCount' +
        'erID."ServiceTime">,DetailData1));'
      'end;'
      ''
      'procedure MaxSTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//   MaxSTimeMemo.Text := '#39'MAX: '#39'+  SecondToTimeStr(MAX(<GetCoun' +
        'terID."ServiceTime">,DetailData1));'
      'end;'
      ''
      'procedure AvgSTimeMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//   AvgSTimeMemo.Text := '#39'AVG: '#39'+ SecondToTimeStr(AVG(<GetCount' +
        'erID."ServiceSeconds">,DetailData1));'
      'end;'
      ''
      ''
      ''
      'procedure ServiceNameMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    IF ServiceNameMemo.Text = '#39#39' THEN'
      
        '       ServiceNameMemo.Text := (<GetCounterID."CurrentServiceID"' +
        '>)'
      '    Else'
      
        '       ServiceNameMemo.Text := (<GetCounterID."CurrentServiceNam' +
        'e">);          '
      'end;'
      ''
      'procedure IssuerNameMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   IF (<GetCounterID."IssuedServiceID">) = 0  THEN'
      '      IssuerNameMemo.Text := (<GetCounterID."CounterName">)'
      '   Else'
      
        '      IssuerNameMemo.Text := (<GetCounterID."PrinterName">);    ' +
        '                         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxCounterIDReportGetValue
    Left = 136
    Top = 408
    Datasets = <
      item
        DataSet = frxDsAllCounters
        DataSetName = 'AllCounters'
      end
      item
        DataSet = frxCustomer
        DataSetName = 'CustomerName'
      end
      item
        DataSet = frxDsGetCounterID
        DataSetName = 'GetCounterID'
      end
      item
        DataSet = frxDsGetTicket
        DataSetName = 'GetTicket'
      end>
    Variables = <
      item
        Name = ' RepDateVariables'
        Value = Null
      end
      item
        Name = 'StartDate'
        Value = 'Date'
      end
      item
        Name = 'EndDate'
        Value = 'Date'
      end
      item
        Name = 'RVersion'
        Value = 'RepVersion'
      end
      item
        Name = 'StartTime'
        Value = 'Time'
      end
      item
        Name = 'EndTime'
        Value = 'Time'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 472.441250000000000000
        Width = 740.409927000000000000
        DataSet = frxDsAllCounters
        DataSetName = 'AllCounters'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 34.015770000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897637800000000000
          DataSet = frxDsAllCounters
          DataSetName = 'AllCounters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[GetTicket."TicketDate"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 18.897637800000000000
          DataField = 'CounterName'
          DataSet = frxDsAllCounters
          DataSetName = 'AllCounters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[AllCounters."CounterName"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object CustomerNameCustomerName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 2.559060000000000000
          Width = 328.819110000000000000
          Height = 34.015770000000000000
          DataField = 'CustomerName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerName"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 49.133890000000000000
          Width = 343.937230000000000000
          Height = 34.015770000000000000
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerEnName"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 370.015987000000000000
          Height = 132.283550000000000000
          DataField = 'CustomerLogo'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CustomerNameLocation: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 90.708720000000000000
          Width = 260.787570000000000000
          Height = 37.795300000000000000
          DataField = 'Location'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."Location"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.448825000000000000
          Width = 313.700990000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Counter Details Report')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 313.700990000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Print date: [Date]   Time: [Time]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1575#1585#1610#1582' '#1605#1606' ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object StartDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object EndDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FromTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.575140000000000000
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartTime]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ToTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.834880000000000000
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndTime]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 34.015770000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1608#1602#1610#1578' '#1605#1606' ')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 34.015770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 529.134200000000000000
        Width = 740.409927000000000000
        object Shape6: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clYellow
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 336.819110000000000000
          Top = 3.779527559055120000
          Width = 49.133890000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'Shift')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 573.047620000000000000
          Top = 3.779527560000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1582#1583#1605#1577)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 233.212740000000000000
          Top = 3.779527559055120000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1604#1605#1589#1583#1585)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 6.220470000000000000
          Top = 3.779527559055120000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582' '#1575#1604#1575#1589#1583#1575#1585)
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 667.858690000000000000
          Top = 3.779527559055120000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1608#1602#1578)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 3.779527559055120000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1602#1605' '#1575#1604#1593#1605#1610#1604)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 816.378480000000000000
        Width = 740.409927000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 8.338602200000000000
          Width = 147.401670000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page: [Page#]  from: [TotalPages#]')
          ParentFont = False
        end
        object RVersion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RVersion]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 687.874460000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."GroupName"'
        KeepTogether = True
        OutlineText = 'GetTicket."GroupName"'
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."BranchName"'
        KeepTogether = True
        OutlineText = 'GetTicket."BranchName"'
        StartNewPage = True
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 5.669288900000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."TicketDate"'
        KeepChild = True
        KeepTogether = True
        OutlineText = 'GetTicket."TicketDate"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 634.961040000000000000
        Width = 740.409927000000000000
        object Shape5: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object ServiceTimeMemo: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 5.669301100000000000
          Width = 170.078850000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'ServiceTimeMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 24.118120000000000000
          Top = 5.669295000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1593#1583#1583' '#1575#1604#1578#1584#1575#1603#1585':   [COUNT(DetailData1)]')
          ParentFont = False
        end
        object MinSTimeMemo: TfrxSysMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 5.669295000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'MinSTimeMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MIN: [MIN(<GetCounterID."ServiceTime">,DetailData1)]')
          ParentFont = False
        end
        object MaxSTimeMemo: TfrxSysMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 5.669295000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'MaxSTimeMemoOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MAX: [MAX(<GetCounterID."ServiceTime">,DetailData1)]')
          ParentFont = False
        end
        object AvgSTimeMemo: TfrxSysMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 5.669295000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'AvgSTimeMemoOnBeforePrint'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AVG: [AVG(<GetCounterID."ServiceTime">,DetailData1)]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 582.047620000000000000
        Width = 740.409927000000000000
        DataSet = frxDsGetCounterID
        DataSetName = 'GetCounterID'
        KeepHeader = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clCream
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 6.220470000000000000
          Top = 7.559060000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[GetCounterID."TicketDate"] [GetCounterID."TicketTime"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 336.819110000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'ShiftID'
          DataSet = frxDsGetCounterID
          DataSetName = 'GetCounterID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GetCounterID."ShiftID"]')
          ParentFont = False
        end
        object ServiceNameMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 501.236550000000000000
          Top = 7.559060000000000000
          Width = 143.622039920000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'ServiceNameMemoOnBeforePrint'
          DataField = 'CurrentServiceName'
          DataSet = frxDsGetCounterID
          DataSetName = 'GetCounterID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetCounterID."CurrentServiceName"]')
          ParentFont = False
        end
        object IssuerNameMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 146.283550000000000000
          Top = 7.559060000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'IssuerNameMemoOnBeforePrint'
          DataSet = frxDsGetCounterID
          DataSetName = 'GetCounterID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetCounterID."PrinterName"]')
          ParentFont = False
        end
        object GetServiceIDServiceTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 654.520100000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'GetServiceIDServiceTimeOnBeforePrint'
          DataSetName = 'GetServiceID'
          DisplayFormat.FormatStr = 'HH:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetCounterID."ServiceTime"]')
          ParentFont = False
        end
        object GetCounterIDTicketNo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 418.527830000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'TicketNo'
          DataSet = frxDsGetCounterID
          DataSetName = 'GetCounterID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GetCounterID."TicketNo"]')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 396.850650000000000000
        Width = 740.409927000000000000
        Condition = 'AllCounters."CounterName"'
        KeepTogether = True
        OutlineText = 'AllCounters."CounterName"'
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.677180000000000000
        Top = 729.449290000000000000
        Width = 740.409927000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 26.677180000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 4.000000000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Tickets: [COUNT(DetailData1)]')
          ParentFont = False
        end
      end
      object GroupHeader5: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 423.307360000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."ShiftID"'
        KeepTogether = True
        OutlineText = 'GetTicket."ShiftID"'
      end
    end
  end
  object frxPrinterIDReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.OutlineVisible = True
    PreviewOptions.OutlineWidth = 160
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44395.444637824100000000
    ReportOptions.LastChange = 44785.458266921300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'const'
      ''
      ''
      '  RepVersion = '#39'version 02.01.02.01'#39';'
      ''
      ''
      'procedure PrinterNameMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   If (<GetPrinterID."ActionName">) = '#39'SELECT'#39' Then'
      '       PrinterNameMemo.Text := (<GetPrinterID."CounterName">)'
      '   else'
      
        '      PrinterNameMemo.Text :=  (<GetPrinterID."PrinterName">);  ' +
        '                                   '
      'end;'
      ''
      'procedure ServiceNameMemoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   If ServiceNameMemo.Text = '#39#39' then'
      '      ServiceNameMemo.Text := (<GetPrinterID."ServiceID">)'
      '   else'
      
        '      ServiceNameMemo.Text := (<GetPrinterID."ServiceName">);   ' +
        '      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxPrinterIDReportGetValue
    Left = 728
    Top = 472
    Datasets = <
      item
        DataSet = frxDsAllPrinters
        DataSetName = 'AllPrinters'
      end
      item
        DataSet = frxCustomer
        DataSetName = 'CustomerName'
      end
      item
        DataSet = frxDsGetPrinterID
        DataSetName = 'GetPrinterID'
      end
      item
        DataSet = frxDsGetTicket
        DataSetName = 'GetTicket'
      end>
    Variables = <
      item
        Name = ' RepDateVariables'
        Value = Null
      end
      item
        Name = 'StartDate'
        Value = 'Date'
      end
      item
        Name = 'EndDate'
        Value = 'Date'
      end
      item
        Name = 'RVersion'
        Value = 'RepVersion'
      end
      item
        Name = 'StartTime'
        Value = 'Time'
      end
      item
        Name = 'EndTime'
        Value = 'Time'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 548.031850000000000000
        Width = 740.409927000000000000
        DataSet = frxDsAllPrinters
        DataSetName = 'AllPrinters'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 34.015770000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object PrinterNameMemo: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 7.559060000000000000
          Width = 291.023810000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'PrinterNameMemoOnBeforePrint'
          DataSet = frxDsAllPrinters
          DataSetName = 'AllPrinters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[AllPrinters."PrinterName"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 249.448980000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object CustomerNameCustomerName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 3.779530000000000000
          Width = 328.819110000000000000
          Height = 34.015770000000000000
          DataField = 'CustomerName'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerName"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 50.354360000000000000
          Width = 343.937230000000000000
          Height = 34.015770000000000000
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."CustomerEnName"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1.220470000000000000
          Width = 370.015987000000000000
          Height = 136.063080000000000000
          DataField = 'CustomerLogo'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CustomerNameLocation: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 91.929190000000000000
          Width = 260.787570000000000000
          Height = 37.795300000000000000
          DataField = 'Location'
          DataSet = frxCustomer
          DataSetName = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CustomerName."Location"]')
          ParentFont = False
        end
        object EndDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 139.842610000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 139.842610000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object StartDateMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 139.842610000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 139.842610000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1575#1585#1610#1582' '#1605#1606' ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 173.858380000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ':  '#1575#1604#1578#1608#1602#1610#1578' '#1605#1606' ')
          ParentFont = False
        end
        object FromTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.354670000000000000
          Top = 173.858380000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[StartTime]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 173.858380000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            ': '#1575#1604#1609)
          ParentFont = False
        end
        object ToTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 389.614410000000000000
          Top = 173.858380000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EndTime]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 291.023810000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.448825000000000000
          Width = 313.700990000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Printers Details Report')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 43.795300000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 3.220470000000000000
          Width = 313.700990000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Print date: [Date]   Time: [Time]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 604.724800000000000000
        Width = 740.409927000000000000
        object Shape5: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 34.015770000000000000
          Fill.BackColor = clYellow
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 635.520100000000000000
          Top = 6.047244090000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1582#1583#1605#1577)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 5.220470000000000000
          Top = 6.047244090000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582' '#1575#1604#1575#1589#1583#1575#1585)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1602#1605' '#1575#1604#1578#1584#1603#1585#1577)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 846.614720000000000000
        Width = 740.409927000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 7.559072200000000000
          Width = 147.401670000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page: [Page#]  from: [TotalPages#]')
          ParentFont = False
        end
        object RVersion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RVersion]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 714.331170000000000000
        Width = 740.409927000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          Fill.BackColor = clSilver
          Frame.Typ = []
          Shape = skRoundRectangle
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 400.630180000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."GroupName"'
        KeepTogether = True
        OutlineText = 'GetTicket."GroupName"'
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 430.866420000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."BranchName"'
        KeepTogether = True
        OutlineText = 'GetTicket."BranchName"'
        StartNewPage = True
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 1.889758900000000000
        Top = 461.102660000000000000
        Width = 740.409927000000000000
        Condition = 'GetPrinterID."TicketDate"'
        KeepChild = True
        KeepTogether = True
        OutlineText = 'GetPrinterID."TicketDate"'
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 661.417750000000000000
        Width = 740.409927000000000000
        DataSet = frxDsGetPrinterID
        DataSetName = 'GetPrinterID'
        KeepHeader = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clCream
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 5.220470000000000000
          Top = 7.559060000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSetName = 'AllTicketDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[GetPrinterID."TicketDate"] [GetPrinterID."TicketTime"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object ServiceNameMemo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 325.598640000000000000
          Top = 7.559060000000000000
          Width = 389.291489920000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'ServiceNameMemoOnBeforePrint'
          DataSetName = 'GetServiceID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[GetPrinterID."ServiceName"]')
          ParentFont = False
        end
        object GetPrinterIDTicketNo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'TicketNo'
          DataSet = frxDsGetPrinterID
          DataSetName = 'GetPrinterID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GetPrinterID."TicketNo"]')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 487.559370000000000000
        Width = 740.409927000000000000
        Condition = 'GetPrinterID."PrinterName"'
        KeepTogether = True
        OutlineText = 'GetPrinterID."PrinterName"'
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 755.906000000000000000
        Width = 740.409927000000000000
        object Shape6: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 740.409927000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clMoneyGreen
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 5.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 5.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1573#1580#1605#1575#1604#1609' '#1575#1604#1605#1593#1575#1605#1604#1575#1578)
          ParentFont = False
        end
      end
      object GroupHeader5: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 514.016080000000000000
        Width = 740.409927000000000000
        Condition = 'GetTicket."ShiftID"'
        KeepTogether = True
      end
    end
  end
  object qryAllCounters: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      'SELECT * FROM Counters'
      '')
    Left = 32
    Top = 320
  end
  object SrcAllCounters: TDataSource
    DataSet = qryAllCounters
    Left = 128
    Top = 320
  end
  object frxDsAllCounters: TfrxDBDataset
    UserName = 'AllCounters'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CounterID=CounterID'
      'CounterName=CounterName'
      'CounterActive=CounterActive')
    DataSet = qryAllCounters
    BCDToCurrency = False
    DataSetOptions = []
    Left = 32
    Top = 384
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ','
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 1032
    Top = 408
  end
  object qryAllServices: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      'SELECT * FROM [CurrentServiceView]')
    Left = 32
    Top = 544
  end
  object frxDsAllServices: TfrxDBDataset
    UserName = 'AllServices'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CurrentServiceID=CurrentServiceID'
      'CurrentServiceName=CurrentServiceName'
      'CurrentServiceActive=CurrentServiceActive')
    DataSet = qryAllServices
    BCDToCurrency = False
    DataSetOptions = []
    Left = 32
    Top = 616
  end
  object SrcAllServices: TDataSource
    DataSet = qryAllServices
    Left = 120
    Top = 544
  end
  object qryAllPrinters: TFDQuery
    Connection = FDConnectionReports
    SQL.Strings = (
      'SELECT * FROM [Printers]')
    Left = 637
    Top = 384
  end
  object srcAllPrinters: TDataSource
    DataSet = qryAllPrinters
    Left = 720
    Top = 384
  end
  object frxDsAllPrinters: TfrxDBDataset
    UserName = 'AllPrinters'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PrinterID=PrinterID'
      'PrinterName=PrinterName'
      'PrinterActive=PrinterActive')
    DataSet = qryAllPrinters
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 448
  end
end
