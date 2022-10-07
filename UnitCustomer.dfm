object FormCustomer: TFormCustomer
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1573#1593#1583#1575#1583#1575#1578' '#1608#1605#1593#1604#1608#1605#1575#1578' '#1575#1604#1593#1605#1610#1604
  ClientHeight = 531
  ClientWidth = 693
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
    693
    531)
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 687
    Height = 226
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 683
    object Label1: TLabel
      Left = 574
      Top = 18
      Width = 89
      Height = 19
      Caption = #1575#1587#1605' '#1575#1604#1593#1605#1610#1604' '#1593#1585#1576#1610
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 18
      Top = 18
      Width = 109
      Height = 19
      Caption = 'Customer Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 84
      Width = 58
      Height = 19
      Caption = 'Location'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CustNameDBEdit: TDBEdit
      Left = 416
      Top = 43
      Width = 247
      Height = 27
      BiDiMode = bdRightToLeft
      DataField = 'CustomerName'
      DataSource = CustomerDataSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object DBNavigator2: TDBNavigator
      Left = 1
      Top = 178
      Width = 685
      Height = 47
      DataSource = CustomerDataSource
      VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ExplicitWidth = 681
    end
    object CustEnNameDBEdit: TDBEdit
      Left = 18
      Top = 43
      Width = 247
      Height = 27
      DataField = 'CustomerEnName'
      DataSource = CustomerDataSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object LocationDBEdit: TDBEdit
      Left = 18
      Top = 109
      Width = 247
      Height = 27
      DataField = 'Location'
      DataSource = CustomerDataSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object LogoDBImage: TDBImage
    Left = 8
    Top = 245
    Width = 433
    Height = 262
    DataField = 'CustomerLogo'
    DataSource = CustomerDataSource
    Stretch = True
    TabOrder = 1
  end
  object LogoBtn: TButton
    Left = 544
    Top = 245
    Width = 122
    Height = 57
    Caption = 'Customer Logo'
    TabOrder = 2
    OnClick = LogoBtnClick
  end
  object CloseBtn: TButton
    AlignWithMargins = True
    Left = 536
    Top = 455
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
    TabOrder = 3
    OnClick = CloseBtnClick
    ExplicitLeft = 532
  end
  object DeleteBtn: TButton
    Left = 544
    Top = 320
    Width = 122
    Height = 57
    Caption = 'Delete Logo'
    TabOrder = 4
    OnClick = DeleteBtnClick
  end
  object PictureDlg: TOpenPictureDialog
    Left = 339
    Top = 355
  end
  object CustomerDataSource: TDataSource
    DataSet = DataQModule.TblCustomer
    Left = 329
    Top = 104
  end
end
