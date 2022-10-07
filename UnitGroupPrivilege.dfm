object FormPrivilege: TFormPrivilege
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = 'Groups Privilege'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  ShowHint = True
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 620
    object SaveBtn: TButton
      Left = 116
      Top = 5
      Width = 100
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
    end
    object CancelBtn: TButton
      Left = 10
      Top = 5
      Width = 100
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
      TabOrder = 1
    end
    object CloseBtn: TButton
      AlignWithMargins = True
      Left = 504
      Top = 5
      Width = 104
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
      TabOrder = 2
      OnClick = CloseBtnClick
    end
    object UserGroupNameBox: TComboBox
      Left = 40
      Top = 80
      Width = 353
      Height = 23
      TabOrder = 3
      OnChange = UserGroupNameBoxChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 624
    Height = 312
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 620
    ExplicitHeight = 307
    object DBCheckBox1: TDBCheckBox
      Left = 40
      Top = 32
      Width = 97
      Height = 17
      Caption = 'ActionInfo'
      DataField = 'ActionInfo'
      DataSource = SourcePrivilege
      TabOrder = 0
    end
    object DBCheckBox2: TDBCheckBox
      Left = 40
      Top = 72
      Width = 97
      Height = 17
      Caption = 'AddUser'
      DataField = 'AddUser'
      DataSource = SourcePrivilege
      TabOrder = 1
    end
    object DBCheckBox3: TDBCheckBox
      Left = 40
      Top = 112
      Width = 97
      Height = 17
      Caption = 'BranchInfo'
      DataField = 'BranchInfo'
      DataSource = SourcePrivilege
      TabOrder = 2
    end
    object DBCheckBox4: TDBCheckBox
      Left = 40
      Top = 152
      Width = 97
      Height = 17
      Caption = 'CounterInfo'
      DataField = 'CounterInfo'
      DataSource = SourcePrivilege
      TabOrder = 3
    end
    object DBCheckBox5: TDBCheckBox
      Left = 40
      Top = 192
      Width = 97
      Height = 17
      Caption = 'CustomerInfo'
      DataField = 'CustomerInfo'
      DataSource = SourcePrivilege
      TabOrder = 4
    end
    object DBCheckBox6: TDBCheckBox
      Left = 376
      Top = 32
      Width = 97
      Height = 17
      Caption = 'DelUser'
      DataField = 'DelUser'
      DataSource = SourcePrivilege
      TabOrder = 5
    end
    object DBCheckBox7: TDBCheckBox
      Left = 376
      Top = 72
      Width = 97
      Height = 17
      Caption = 'FunctionInfo'
      DataField = 'FunctionInfo'
      DataSource = SourcePrivilege
      TabOrder = 6
    end
    object DBCheckBox8: TDBCheckBox
      Left = 376
      Top = 112
      Width = 97
      Height = 17
      Caption = 'GetFile'
      DataField = 'GetFile'
      DataSource = SourcePrivilege
      TabOrder = 7
    end
    object DBCheckBox9: TDBCheckBox
      Left = 376
      Top = 152
      Width = 97
      Height = 17
      Caption = 'GetReport'
      DataField = 'GetReport'
      DataSource = SourcePrivilege
      TabOrder = 8
    end
    object DBCheckBox10: TDBCheckBox
      Left = 376
      Top = 192
      Width = 97
      Height = 17
      Caption = 'ModUser'
      DataField = 'ModUser'
      DataSource = SourcePrivilege
      TabOrder = 9
    end
    object DBCheckBox11: TDBCheckBox
      Left = 376
      Top = 240
      Width = 97
      Height = 17
      Caption = 'UserInfo'
      DataField = 'UserInfo'
      DataSource = SourcePrivilege
      TabOrder = 10
    end
  end
  object SourcePrivilege: TDataSource
    DataSet = qryPrivilege
    Left = 224
    Top = 321
  end
  object qryPrivilege: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * From UserGroups')
    Left = 232
    Top = 225
  end
end
