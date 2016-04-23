object Form6: TForm6
  Left = 1171
  Top = 116
  Width = 217
  Height = 144
  BorderIcons = [biSystemMenu]
  Caption = #1042#1093#1086#1076
  Color = clBtnFace
  Constraints.MaxHeight = 144
  Constraints.MaxWidth = 217
  Constraints.MinHeight = 144
  Constraints.MinWidth = 217
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PassLabel: TLabel
    Left = 8
    Top = 8
    Width = 184
    Height = 32
    Caption = #1042#1099' '#1091#1078#1077' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1099' - '#1074#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100' '#1076#1083#1103' '#1074#1093#1086#1076#1072'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object BPassCheck: TButton
    Left = 40
    Top = 72
    Width = 121
    Height = 33
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 0
    OnClick = BPassCheckClick
  end
  object PassEdit: TEdit
    Left = 8
    Top = 48
    Width = 185
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
end
