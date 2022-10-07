object HelpForm: THelpForm
  Left = 0
  Top = 0
  Caption = 'Help File Description'
  ClientHeight = 637
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 65
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 722
    object CloseBtn: TButton
      AlignWithMargins = True
      Left = 12
      Top = 8
      Width = 100
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
      ImageIndex = 26
      ImageName = 'icons8_cancel_96px'
      Images = MainForm.VirtualImageList1
      ParentFont = False
      TabOrder = 0
      OnClick = CloseBtnClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 65
    Width = 726
    Height = 572
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      
        '[                 Ticket ID                 ], [                ' +
        '      Ticket Action                          ]'
      
        '[A                 , B   , C , D , E   , F  ], [G               ' +
        '  , H         , I , J , K       , L       , M]'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:48:' +
        '48, PRINT         , 02, 00, 00000000, 00000000, 0'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:49:' +
        '41, CALL           , 02, 01, 00000053, 00000000, 0'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:49:' +
        '50, STORE        , 02, 01, 00000053, 00000009, 1'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:50:' +
        '12, CALL           , 02, 01, 00000022, 00000000, 0'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:50:' +
        '23, TRANSFER  , 02, 01, 00000022, 00000011, 1'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:50:' +
        '26, CALL           , 01, 01, 00000003, 00000000, 0'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:50:' +
        '27, RECALL       , 01, 01, 00000004, 00000000, 0'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:50:' +
        '28, RECALL       , 01, 01, 00000005, 00000000, 0'
      
        '2021-09-29 15:48:48, 0001, 02, 00, 0201, 0000, 2021-09-29 15:50:' +
        '30, CLOSE         , 01, 01, 00000005, 00000002, 1'
      ''
      'where:'
      
        'A: Init. Time.            Print Time for Printed Ticket Or Selec' +
        't Time for Manually Selected Time.'
      
        'B: Shift ID.               Sequnce Number Increased on every Res' +
        'et Data to separate Tickets in the samne day in Shifts.'
      
        'C: InitService ID.     0= Manually Selected / 1-to-MaxService= P' +
        'rinted Service No.'
      
        'D: Issuer ID.            Counter No. for Selected Ticket Or Prin' +
        'ter ID for Printed Ticket.'
      'E: Ticket No.            Ticket No. as Printed or Selected'
      'F: Waiting No.         Waiting No. as Printed or Selected'
      ''
      'Note:'
      
        'All the above are the Ticket ID it could be used as Ticket Ident' +
        'ification.'
      'All the above are fixed on every action relateed to that ticket.'
      ''
      'G: Action Time.        Action Time'
      
        'H: Action.                Action Name {PRINT, SELECT, CALL, RECA' +
        'LL, TRANSFER, STORE, CLOSE}'
      
        'I: CurService ID.     Service ID {0 = Manual Entry, {1-32} = Ser' +
        'vice No}'
      
        'J: Counter ID.         Counter ID {0 = Not Avaiable, {1-48} = Co' +
        'unter No}'
      'K: WaitingTime.       Waiting Time (Current Action Waiting Time)'
      
        'L: ServiceTime.        Service Time (Current Action Service Time' +
        ')'
      
        'M: Complete.           Complete Action Service Cycle {0 = Incomp' +
        'lete, 1 = Complete}')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
    ExplicitWidth = 722
    ExplicitHeight = 567
  end
end
