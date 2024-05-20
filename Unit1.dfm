object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 433
  ClientWidth = 622
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnPaint = FormPaint
  TextHeight = 15
  object Screen: TImage
    Left = 8
    Top = -4
    Width = 617
    Height = 434
  end
  object MediaPlayer1: TMediaPlayer
    Left = 536
    Top = 400
    Width = 253
    Height = 30
    AutoEnable = False
    Visible = False
    TabOrder = 0
  end
  object PushingOnTheBarTimer: TTimer
    Interval = 15
    OnTimer = TimerBarTimer
    Left = 496
    Top = 32
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 45
    OnTimer = Timer1Timer
    Left = 528
    Top = 272
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer2Timer
    Left = 512
    Top = 192
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer3Timer
    Left = 336
    Top = 328
  end
end
