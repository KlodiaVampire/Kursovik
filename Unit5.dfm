object Form5: TForm5
  Left = 673
  Top = 126
  Width = 441
  Height = 381
  BorderIcons = []
  Caption = #1058#1077#1089#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TimePole: TLabel
    Left = 11
    Top = 8
    Width = 68
    Height = 16
    Caption = #1054#1089#1090#1072#1083#1086#1089#1100': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object AnswerBox: TGroupBox
    Left = 8
    Top = 48
    Width = 409
    Height = 73
    TabOrder = 0
    object QuestionPole: TLabel
      Left = 8
      Top = 8
      Width = 392
      Height = 57
      Constraints.MaxHeight = 57
      Constraints.MaxWidth = 392
      Constraints.MinHeight = 57
      Constraints.MinWidth = 392
      WordWrap = True
    end
  end
  object Answers: TRadioGroup
    Left = 8
    Top = 128
    Width = 409
    Height = 169
    Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1074#1077#1090#1072
    TabOrder = 1
    OnClick = AnswersClick
  end
  object BEnter: TButton
    Left = 168
    Top = 304
    Width = 121
    Height = 33
    Caption = #1055#1088#1080#1085#1103#1090#1100
    TabOrder = 2
    OnClick = BEnterClick
  end
  object BBack: TButton
    Left = 296
    Top = 304
    Width = 121
    Height = 33
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 3
    OnClick = BBackClick
  end
end
