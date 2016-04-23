object Form2: TForm2
  Left = 193
  Top = 418
  Width = 305
  Height = 276
  BorderIcons = []
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  Color = clBtnFace
  Constraints.MaxHeight = 276
  Constraints.MaxWidth = 305
  Constraints.MinHeight = 276
  Constraints.MinWidth = 305
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 2
    Width = 273
    Height = 231
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 49
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label2: TLabel
      Left = 8
      Top = 80
      Width = 22
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label3: TLabel
      Left = 8
      Top = 120
      Width = 50
      Height = 13
      Caption = #8470' '#1075#1088#1091#1087#1087#1099
    end
    object Regenter: TButton
      Left = 8
      Top = 176
      Width = 121
      Height = 33
      Caption = #1042#1086#1081#1090#1080
      Default = True
      TabOrder = 0
      OnClick = RegenterClick
    end
    object Mainmenu: TButton
      Left = 144
      Top = 176
      Width = 113
      Height = 33
      Cancel = True
      Caption = #1042' '#1084#1077#1085#1102
      TabOrder = 1
      OnClick = MainmenuClick
    end
    object SName: TEdit
      Left = 80
      Top = 40
      Width = 161
      Height = 21
      TabOrder = 2
      OnKeyPress = SNameKeyPress
    end
    object FName: TEdit
      Left = 80
      Top = 80
      Width = 161
      Height = 21
      TabOrder = 3
      OnKeyPress = FNameKeyPress
    end
    object NGroup: TEdit
      Left = 80
      Top = 120
      Width = 161
      Height = 21
      TabOrder = 4
      OnKeyPress = NGroupKeyPress
    end
  end
end
