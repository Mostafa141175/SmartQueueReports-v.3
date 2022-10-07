object SelectForm: TSelectForm
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1587#1581#1576' '#1575#1604#1605#1604#1601#1575#1578' '
  ClientHeight = 315
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object LblGroups: TLabel
    AlignWithMargins = True
    Left = 286
    Top = 20
    Width = 72
    Height = 15
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = #1575#1582#1578#1575#1585' '#1575#1604#1605#1580#1605#1608#1593#1577
    Layout = tlCenter
  end
  object LblBraches: TLabel
    AlignWithMargins = True
    Left = 308
    Top = 108
    Width = 58
    Height = 15
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = '* '#1575#1582#1578#1575#1585' '#1575#1604#1601#1585#1593
    Layout = tlCenter
  end
  object CmBoxGroups: TComboBox
    AlignWithMargins = True
    Left = 30
    Top = 45
    Width = 350
    Height = 29
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
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
  object CmBoxBranches: TComboBox
    AlignWithMargins = True
    Left = 30
    Top = 133
    Width = 350
    Height = 29
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
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
    OnSelect = CmBoxBranchesSelect
  end
  object CancelBtn: TButton
    Left = 30
    Top = 219
    Width = 150
    Height = 48
    Caption = #1575#1604#1594#1575#1569
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ImageIndex = 50
    ImageName = 'icons8_Close_48px'
    Images = MainForm.VirtualImageList1
    ParentFont = False
    TabOrder = 2
    OnClick = CancelBtnClick
  end
  object OkBtn: TButton
    Left = 230
    Top = 219
    Width = 150
    Height = 48
    Caption = #1605#1608#1575#1601#1602
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ImageIndex = 51
    ImageName = 'icons8_Done_48px_1'
    Images = MainForm.VirtualImageList1
    ParentFont = False
    TabOrder = 3
    OnClick = OkBtnClick
  end
  object qryGroups: TFDQuery
    Connection = DataQModule.FDConnectionSQL
    SQL.Strings = (
      'SELECT * FROM [BranchGroups]')
    Left = 72
    Top = 80
  end
  object qryBranches: TFDQuery
    MasterSource = SrcGroup
    MasterFields = 'GroupID'
    Connection = DataQModule.FDConnectionSQL
    FetchOptions.AssignedValues = [evMode]
    SQL.Strings = (
      'SELECT DISTINCT  * FROM [BranchRelationView]'
      'WHERE GroupID = :GroupID')
    Left = 179
    Top = 80
    ParamData = <
      item
        Name = 'GROUPID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object SrcGroup: TDataSource
    DataSet = qryGroups
    Left = 72
    Top = 8
  end
end
