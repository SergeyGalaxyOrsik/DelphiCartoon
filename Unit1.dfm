object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object Screen: TImage
    Left = 8
    Top = 0
    Width = 617
    Height = 434
  end
  object PushingOnTheBarTimer: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 600
    Top = 8
  end
end
