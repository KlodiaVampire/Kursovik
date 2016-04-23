object Form1: TForm1
  Left = 193
  Top = 121
  Width = 388
  Height = 285
  BorderIcons = []
  Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
  Color = clBtnFace
  Constraints.MaxHeight = 285
  Constraints.MaxWidth = 388
  Constraints.MinHeight = 285
  Constraints.MinWidth = 388
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SName: TLabel
    Left = 2
    Top = 0
    Width = 3
    Height = 13
  end
  object FName: TLabel
    Left = 2
    Top = 24
    Width = 3
    Height = 13
  end
  object NGroup: TLabel
    Left = 2
    Top = 48
    Width = 3
    Height = 13
  end
  object Summary: TGroupBox
    Left = 152
    Top = 0
    Width = 217
    Height = 73
    Caption = #1048#1090#1086#1075#1080
    TabOrder = 0
    Visible = False
    object SummaryRight: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1055#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object SummaryWrong: TLabel
      Left = 8
      Top = 32
      Width = 71
      Height = 13
      Caption = #1053#1077#1087#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object SummaryAll: TLabel
      Left = 8
      Top = 48
      Width = 111
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
    end
  end
  object Part1: TGroupBox
    Left = 3
    Top = 78
    Width = 182
    Height = 75
    Caption = #1056#1072#1079#1076#1077#1083' 1'
    TabOrder = 1
    Visible = False
    object Part1Right: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1055#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object Part1Wrong: TLabel
      Left = 8
      Top = 32
      Width = 71
      Height = 13
      Caption = #1053#1077#1087#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object Part1All: TLabel
      Left = 8
      Top = 48
      Width = 111
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
    end
  end
  object Part2: TGroupBox
    Left = 3
    Top = 152
    Width = 182
    Height = 75
    Caption = #1056#1072#1079#1076#1077#1083' 2'
    TabOrder = 2
    Visible = False
    object Part2Right: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1055#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object Part2Wrong: TLabel
      Left = 8
      Top = 32
      Width = 71
      Height = 13
      Caption = #1053#1077#1087#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object Part2All: TLabel
      Left = 8
      Top = 48
      Width = 111
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
    end
  end
  object Part3: TGroupBox
    Left = 187
    Top = 78
    Width = 182
    Height = 75
    Caption = #1056#1072#1079#1076#1077#1083' 3'
    TabOrder = 3
    Visible = False
    object Part3Right: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1055#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object Part3Wrong: TLabel
      Left = 8
      Top = 32
      Width = 71
      Height = 13
      Caption = #1053#1077#1087#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object Part3All: TLabel
      Left = 8
      Top = 48
      Width = 111
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
    end
  end
  object Part4: TGroupBox
    Left = 187
    Top = 152
    Width = 182
    Height = 75
    Caption = #1056#1072#1079#1076#1077#1083' 4'
    TabOrder = 4
    Visible = False
    object Part4Right: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1055#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object Part4Wrong: TLabel
      Left = 8
      Top = 32
      Width = 71
      Height = 13
      Caption = #1053#1077#1087#1088#1072#1074#1080#1083#1100#1085#1086':'
    end
    object Part4All: TLabel
      Left = 8
      Top = 48
      Width = 111
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
    end
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 8
    object BTest: TMenuItem
      Caption = #1058#1077#1089#1090
      object BReg: TMenuItem
        Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
        OnClick = BRegClick
      end
      object BBegin: TMenuItem
        Caption = #1053#1072#1095#1072#1090#1100
        Enabled = False
        OnClick = BBeginClick
      end
      object BExit: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = BExitClick
      end
    end
    object BHelp: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = BHelpClick
    end
  end
end
