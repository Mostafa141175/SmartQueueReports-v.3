object UsersForm: TUsersForm
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1573#1593#1583#1575#1583#1575#1578' '#1575#1604#1605#1587#1578#1582#1583#1605#1610#1606
  ClientHeight = 580
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  ShowHint = True
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 59
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 615
    object SaveBtn: TButton
      Left = 318
      Top = 5
      Width = 85
      Height = 48
      Caption = #1581#1601#1592
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 41
      ImageName = 'icons8_checked_user_male_skin_type_7_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 0
      OnClick = SaveBtnClick
    end
    object DeleteBtn: TButton
      Left = 216
      Top = 5
      Width = 85
      Height = 48
      Caption = #1605#1587#1581
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 29
      ImageName = 'icons8_denied_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 1
      OnClick = DeleteBtnClick
    end
    object AddUserBtn: TButton
      Left = 523
      Top = 5
      Width = 85
      Height = 48
      Caption = #1573#1590#1575#1601#1577
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 28
      ImageName = 'icons8_add_user_male_skin_type_7_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 2
      OnClick = AddUserBtnClick
    end
    object CancelBtn: TButton
      Left = 114
      Top = 5
      Width = 85
      Height = 48
      Caption = #1575#1604#1594#1575#1569
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 43
      ImageName = 'icons8_unfriend_skin_type_7_144px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 3
      OnClick = CancelBtnClick
    end
    object EditBtn: TButton
      Left = 420
      Top = 5
      Width = 85
      Height = 48
      Caption = #1578#1593#1583#1610#1604
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ImageIndex = 42
      ImageName = 'icons8_registration_144px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 4
      OnClick = EditBtnClick
    end
    object CloseBtn: TButton
      AlignWithMargins = True
      Left = 12
      Top = 5
      Width = 85
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 59
    Width = 619
    Height = 334
    Align = alTop
    TabOrder = 1
    OnClick = ShowPassChkBoxClick
    ExplicitWidth = 615
    object LblUser: TLabel
      Left = 10
      Top = 15
      Width = 84
      Height = 19
      Caption = '* '#1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblPassword: TLabel
      Left = 10
      Top = 83
      Width = 65
      Height = 19
      Caption = '* '#1603#1604#1605#1577' '#1575#1604#1587#1585
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblPassHint: TLabel
      Left = 10
      Top = 251
      Width = 130
      Height = 19
      Caption = #1575#1590#1575#1602#1577' '#1578#1593#1585#1610#1601' '#1576#1603#1604#1605#1577' '#1575#1604#1587#1585
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 376
      Top = 15
      Width = 102
      Height = 19
      Caption = '* User Groups:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblPassword2: TLabel
      Left = 11
      Top = 150
      Width = 96
      Height = 19
      Caption = '* '#1575#1593#1575#1583#1577' '#1603#1604#1605#1577' '#1575#1604#1587#1585
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblPassState: TLabel
      Left = 11
      Top = 208
      Width = 92
      Height = 19
      Caption = #1603#1604#1605#1577' '#1575#1604#1587#1585' '#1605#1591#1575#1576#1602#1577
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Pass1Image: TVirtualImage
      Left = 283
      Top = 107
      Width = 30
      Height = 30
      ImageCollection = MainForm.ImageCollection1
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 32
      ImageName = 'icons8_hide_96px'
      OnMouseDown = Pass1ImageMouseDown
      OnMouseUp = Pass1ImageMouseUp
    end
    object Pass2Image: TVirtualImage
      Left = 283
      Top = 174
      Width = 30
      Height = 30
      ImageCollection = MainForm.ImageCollection1
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 32
      ImageName = 'icons8_hide_96px'
      OnMouseDown = Pass2ImageMouseDown
      OnMouseUp = Pass2ImageMouseUp
    end
    object LblUpChr: TLabel
      Left = 399
      Top = 114
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
      Left = 399
      Top = 145
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
      Left = 399
      Top = 176
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
      Left = 399
      Top = 207
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
      Left = 399
      Top = 252
      Width = 147
      Height = 14
      Caption = 'A Minimum 6 characters'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ImgUpChar: TVirtualImage
      Left = 368
      Top = 108
      Width = 25
      Height = 25
      ImageCollection = MainForm.ImageCollection1
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 50
      ImageName = 'icons8_Close_48px'
    end
    object ImgLoChar: TVirtualImage
      Left = 368
      Top = 139
      Width = 25
      Height = 25
      ImageCollection = MainForm.ImageCollection1
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 50
      ImageName = 'icons8_Close_48px'
    end
    object ImgNmrChar: TVirtualImage
      Left = 368
      Top = 170
      Width = 25
      Height = 25
      ImageCollection = MainForm.ImageCollection1
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 50
      ImageName = 'icons8_Close_48px'
    end
    object ImgSpecialChar: TVirtualImage
      Left = 368
      Top = 201
      Width = 25
      Height = 25
      ImageCollection = MainForm.ImageCollection1
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 50
      ImageName = 'icons8_Close_48px'
    end
    object ImgLengthChar: TVirtualImage
      Left = 368
      Top = 245
      Width = 25
      Height = 25
      ImageCollection = MainForm.ImageCollection1
      ImageWidth = 0
      ImageHeight = 0
      ImageIndex = 50
      ImageName = 'icons8_Close_48px'
    end
    object Label2: TLabel
      Left = 399
      Top = 227
      Width = 169
      Height = 13
      Caption = '! # $ % && * + , - . : ; < = > ? @ _ '
    end
    object ShowPassChkBox: TCheckBox
      Left = 178
      Top = 85
      Width = 132
      Height = 17
      Caption = #1575#1592#1607#1575#1585' '#1603#1604#1605#1577' '#1575#1604#1587#1585
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = ShowPassChkBoxClick
    end
    object UserNameEdit: TEdit
      Left = 11
      Top = 40
      Width = 300
      Height = 27
      Hint = #1575#1583#1582#1604' '#1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TextHint = #1575#1583#1582#1604' '#1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605
    end
    object PassEdit: TEdit
      Left = 10
      Top = 108
      Width = 271
      Height = 27
      Hint = #1575#1583#1582#1604' '#1603#1604#1605#1577' '#1575#1604#1587#1585
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TextHint = #1575#1583#1582#1604' '#1603#1604#1605#1577' '#1575#1604#1587#1585
      OnChange = PassEditChange
    end
    object PassHintEdit: TEdit
      Left = 10
      Top = 276
      Width = 300
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TextHint = #1575#1582#1578#1610#1575#1585#1609' '#1610#1605#1603#1606#1603' '#1603#1578#1575#1576#1577' '#1588#1609#1569' '#1604#1604#1578#1584#1603#1585#1577' '
    end
    object ComBoxUserGroups: TComboBox
      Left = 375
      Top = 40
      Width = 185
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TextHint = 'Select User Group'
    end
    object Pass2Edit: TEdit
      Left = 11
      Top = 175
      Width = 271
      Height = 27
      Hint = #1575#1583#1582#1604' '#1603#1604#1605#1577' '#1575#1604#1587#1585
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TextHint = #1575#1583#1582#1604' '#1603#1604#1605#1577' '#1575#1604#1587#1585' '#1605#1585#1577' '#1571#1582#1585#1609
      OnChange = Pass2EditChange
      OnExit = Pass2EditExit
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 393
    Width = 619
    Height = 187
    Align = alClient
    DataSource = DSUsers
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UserID'
        Title.Caption = 'User ID'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'User Name'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PasswordHint'
        Title.Caption = 'Password Hint'
        Width = 180
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UserDate'
        Title.Caption = 'Created Date'
        Width = 180
        Visible = True
      end>
  end
  object DSUsers: TDataSource
    DataSet = DataQModule.TblUsers
    Left = 176
    Top = 432
  end
  object QryUsers: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      ''
      'DECLARE @ID Integer'
      'SET @ID = (SELECT MAX(USerID) FROM [Users])'
      'IF @ID IS NULL SET @ID = 1 '
      'ELSE SET @ID = @ID + 1 '
      ''
      ''
      ''
      
        'INSERT INTO Users (UserID, UserName, PasswordHash, PasswordHint,' +
        ' UserGroup, UserDate)'
      '       VALUES (@ID, :User, :Pass, :PassHint, :UGroup, :Today)')
    Left = 256
    Top = 432
    ParamData = <
      item
        Name = 'USER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASSHINT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'UGROUP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TODAY'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
  end
  object QrySelelctUser: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'Select * From Users'
      'Where (UserName = :xUser)')
    Left = 352
    Top = 424
    ParamData = <
      item
        Name = 'XUSER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryUGroups: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM UserGroups')
    Left = 328
    Top = 96
  end
  object qryEditUser: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'UPDATE [Users]'
      
        'SET [PasswordHash] = :Pass, [PasswordHint] = :PassHint, [UserDat' +
        'e] =  :Today'
      'WHERE [UserID] = :xUID ;')
    Left = 304
    Top = 496
    ParamData = <
      item
        Name = 'PASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASSHINT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TODAY'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'XUID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
