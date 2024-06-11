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
    Left = 0
    Top = 0
    Width = 625
    Height = 430
    Transparent = True
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
    Interval = 30
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
    Interval = 45
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
  object Timer4: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer4Timer
    Left = 304
    Top = 184
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer5Timer
    Left = 456
    Top = 344
  end
end
