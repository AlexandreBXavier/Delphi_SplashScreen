object frmSplash: TfrmSplash
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Splash Screen'
  ClientHeight = 225
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelSplash: TLabel
    Left = 0
    Top = 0
    Width = 434
    Height = 225
    Align = alClient
    Alignment = taCenter
    Caption = 'Countdown'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 241
    ExplicitHeight = 58
  end
  object TimerSplash: TTimer
    Enabled = False
    OnTimer = TimerSplashTimer
    Left = 344
    Top = 16
  end
end
