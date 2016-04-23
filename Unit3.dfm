object Form3: TForm3
  Left = 591
  Top = 121
  Width = 569
  Height = 307
  BorderIcons = []
  Caption = #1042#1099#1073#1086#1088' '#1088#1072#1079#1076#1077#1083#1072
  Color = clBtnFace
  Constraints.MaxHeight = 307
  Constraints.MaxWidth = 569
  Constraints.MinHeight = 307
  Constraints.MinWidth = 569
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TimeLabel: TLabel
    Left = 448
    Top = 248
    Width = 65
    Height = 16
    Caption = #1054#1089#1090#1072#1083#1086#1089#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BTestEnd: TButton
    Left = 8
    Top = 240
    Width = 129
    Height = 25
    Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1090#1077#1089#1090
    TabOrder = 4
    OnClick = BTestEndClick
  end
  object BSummary: TButton
    Left = 8
    Top = 240
    Width = 129
    Height = 25
    Caption = #1048#1090#1086#1075#1080
    TabOrder = 5
    Visible = False
    OnClick = BSummaryClick
  end
  object Section1: TGroupBox
    Left = 8
    Top = 8
    Width = 130
    Height = 225
    Caption = #1056#1072#1079#1076#1077#1083' 1'
    TabOrder = 0
    object S1Name: TLabel
      Left = 23
      Top = 24
      Width = 85
      Height = 24
      Caption = #1041#1086#1090#1072#1085#1080#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object S1B1: TButton
      Left = 8
      Top = 64
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 1'
      TabOrder = 0
      OnClick = S1B1Click
    end
    object S1B2: TButton
      Left = 8
      Top = 96
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 2'
      TabOrder = 1
      OnClick = S1B2Click
    end
    object S1B3: TButton
      Left = 8
      Top = 128
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 3'
      TabOrder = 2
      OnClick = S1B3Click
    end
    object S1B4: TButton
      Left = 8
      Top = 160
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 4'
      TabOrder = 3
      OnClick = S1B4Click
    end
    object S1B5: TButton
      Left = 8
      Top = 192
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 5'
      TabOrder = 4
      OnClick = S1B5Click
    end
  end
  object Section2: TGroupBox
    Left = 144
    Top = 8
    Width = 130
    Height = 225
    Caption = #1056#1072#1079#1076#1077#1083' 2'
    TabOrder = 1
    object S2Name: TLabel
      Left = 22
      Top = 24
      Width = 86
      Height = 24
      Caption = #1047#1086#1086#1083#1086#1075#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object S2B1: TButton
      Left = 8
      Top = 64
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 1'
      TabOrder = 0
      OnClick = S2B1Click
    end
    object S2B2: TButton
      Left = 8
      Top = 96
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 2'
      TabOrder = 1
      OnClick = S2B2Click
    end
    object S2B3: TButton
      Left = 8
      Top = 128
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 3'
      TabOrder = 2
      OnClick = S2B3Click
    end
    object S2B4: TButton
      Left = 8
      Top = 160
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 4'
      TabOrder = 3
      OnClick = S2B4Click
    end
    object S2B5: TButton
      Left = 8
      Top = 192
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 5'
      TabOrder = 4
      OnClick = S2B5Click
    end
  end
  object Section3: TGroupBox
    Left = 280
    Top = 8
    Width = 130
    Height = 225
    Caption = #1056#1072#1079#1076#1077#1083' 3'
    TabOrder = 2
    object S3Name: TLabel
      Left = 22
      Top = 12
      Width = 86
      Height = 48
      Caption = #1041#1080#1086#1083#1086#1075#1080#1103' '#1095#1077#1083#1086#1074#1077#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object S3B1: TButton
      Left = 8
      Top = 64
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 1'
      TabOrder = 0
      OnClick = S3B1Click
    end
    object S3B2: TButton
      Left = 8
      Top = 96
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 2'
      TabOrder = 1
      OnClick = S3B2Click
    end
    object S3B3: TButton
      Left = 8
      Top = 128
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 3'
      TabOrder = 2
      OnClick = S3B3Click
    end
    object S3B4: TButton
      Left = 8
      Top = 160
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 4'
      TabOrder = 3
      OnClick = S3B4Click
    end
    object S3B5: TButton
      Left = 8
      Top = 192
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 5'
      TabOrder = 4
      OnClick = S3B5Click
    end
  end
  object Section4: TGroupBox
    Left = 416
    Top = 8
    Width = 130
    Height = 225
    Caption = #1056#1072#1079#1076#1077#1083' 4'
    TabOrder = 3
    object S4Name: TLabel
      Left = 21
      Top = 13
      Width = 84
      Height = 48
      Alignment = taCenter
      Caption = #1054#1073#1097#1072#1103' '#1073#1080#1086#1083#1086#1075#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object S4B1: TButton
      Left = 8
      Top = 64
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 1'
      TabOrder = 0
      OnClick = S4B1Click
    end
    object S4B2: TButton
      Left = 8
      Top = 96
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 2'
      TabOrder = 1
      OnClick = S4B2Click
    end
    object S4B3: TButton
      Left = 8
      Top = 128
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 3'
      TabOrder = 2
      OnClick = S4B3Click
    end
    object S4B4: TButton
      Left = 8
      Top = 160
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 4'
      TabOrder = 3
      OnClick = S4B4Click
    end
    object S4B5: TButton
      Left = 8
      Top = 192
      Width = 113
      Height = 25
      Caption = #1042#1086#1087#1088#1086#1089' 5'
      TabOrder = 4
      OnClick = S4B5Click
    end
  end
  object TestTimer: TTimer
    Enabled = False
    OnTimer = TestTimerTimer
    Left = 296
    Top = 240
  end
end
