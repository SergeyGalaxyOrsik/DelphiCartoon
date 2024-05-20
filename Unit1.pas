unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.MPlayer, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    PushingOnTheBarTimer: TTimer;
    Screen: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    MediaPlayer1: TMediaPlayer;
    Timer3: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure TimerBarTimer(Sender: TObject);

    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    x: integer;
    PushingDown: boolean;
    procedure DrawBrucya(CenterX, CenterY: integer);
    procedure PushUpsOnTheBar(CenterX1, CenterY1, CenterX2, CenterY2: integer);
  public
    { Public declarations }
    // procedure DrawParallelBars;
    GymnastHeadX1, GymnastHeadY2, GymnastHeadY1, GymnastHeadX2: integer;
    GymnastX, GymnastY: integer;

    CenterX, CenterY: integer;

    BodyX1, BodyX2, BodyY1, BodyY2: integer;

    LeftArmX, LeftArmY: integer;
    RightArmX, RightArmY: integer;

    LeftElbowX, LeftElbowY: integer;
    RightElbowX, RightElbowY: integer;

    RightKneeX, RightKneeY: integer;
    LeftKneeX, LeftKneeY: integer;

    LeftLegX, LeftLegY: integer;
    RightLegX, RightLegY: integer;

    PullUpFrame: integer;
    PshUpFrame: integer;

    PullingUp, PushUp, Squat: boolean;
    HeadX, HeadY, deltaY: integer;
    down: boolean;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses horizontalBar, perehod;

var
  ParallelBarCounter: integer = 0;
  PullUpFrame: integer = 0;
  PshUpFrame: integer = 0;
  SquatsCount: integer = 0;

procedure TForm1.TimerBarTimer(Sender: TObject);
begin
  // for var i := 1 to 75 do
  if x < 30 then
  begin
    PushingDown := True;
    PushUpsOnTheBar(150, 200, 160, 210);
  end
  else
  begin
    PushingDown := false;
    PushUpsOnTheBar(150, 200, 160, 210);
    if x = 60 then
      x := 1;
  end;
  inc(x);
end;

procedure TForm1.DrawBrucya(CenterX, CenterY: integer);
begin
  Screen.Canvas.MoveTo(CenterX - 75, CenterY + 100);
  Screen.Canvas.LineTo(CenterX - 75, CenterY);
  Screen.Canvas.MoveTo(CenterX + 75, CenterY + 100);
  Screen.Canvas.LineTo(CenterX + 75, CenterY);
  Screen.Canvas.MoveTo(CenterX - 150, CenterY);
  Screen.Canvas.LineTo(CenterX + 150, CenterY);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  // Label1.Caption:=ExtractFilePath(ParamStr(0))+'song.mp3';
  MediaPlayer1.FileName := ExtractFilePath(ParamStr(0)) + 'song.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
  x := 1;
  ParallelBarCounter := 0;
  PushingDown := True;
  GymnastHeadX1 := 115;
  GymnastHeadY1 := 100;
  GymnastHeadX2 := 165;
  GymnastHeadY2 := 150;
  LeftArmX := 150;
  RightArmX := 160;
  LeftArmY := 200;
  RightArmY := 210;
  CenterX := Round((GymnastHeadX1 + GymnastHeadX2) / 2);
  CenterY := Round((GymnastHeadY1 + GymnastHeadY2) / 2);
  BodyX1 := CenterX;
  BodyX2 := CenterX;
  BodyY1 := GymnastHeadY2;
  BodyY2 := Round(GymnastHeadY2 * 1.6);
  RightKneeX := BodyX2 - 10;
  LeftKneeX := BodyX2 - 5;
  RightKneeY := BodyY2 + 30;
  LeftKneeY := BodyY2 + 30;
  LeftLegX := LeftKneeX + 15;
  RightLegX := RightKneeX + 15;
  LeftLegY := LeftKneeY + 30;
  RightLegY := RightKneeY + 30;
  LeftElbowX := BodyX1 + 25;
  RightElbowX := BodyX1 + 30;
  LeftElbowY := Round((BodyY1 + BodyY2) * 0.4) + 30;
  RightElbowY := Round((BodyY1 + BodyY2) * 0.4) + 30;
  deltaY := 0;
  HeadX := 300;
  HeadY := 300;
  down := True;
  Squat := false;
end;

procedure TForm1.FormPaint(Sender: TObject);
begin

  if Timer1.Enabled then
  begin
    DrawParallelBars;
    DrawGymnast;
  end;
  if Timer2.Enabled then
  begin
    GymnastX := ClientWidth div 2; // Ðàñïîëàãàåì â öåíòðå
    GymnastY := (ClientHeight - 200) - 60; // Ðàñïîëàãàåì â öåíòðå
    LeftArmX := GymnastX - 20;
    LeftArmY := GymnastY - 20;
    RightArmX := GymnastX + 20;
    RightArmY := GymnastY - 20;

    LeftElbowX := GymnastX - 20;
    LeftElbowY := GymnastY - 40;
    RightElbowX := GymnastX + 20;
    RightElbowY := GymnastY - 40;

    LeftLegX := GymnastX - 20;
    LeftLegY := GymnastY + 100;
    RightLegX := GymnastX + 20;
    RightLegY := GymnastY + 100;
    DrawPullingUp;
  end;
  if Timer3.Enabled then
  begin
    DrawSticman(HeadX, HeadY, deltaY);
  end;

end;

var
  i: integer = 0;
  b: integer = 0;

procedure TForm1.PushUpsOnTheBar(CenterX1, CenterY1, CenterX2,
  CenterY2: integer);
begin
  Screen.Picture := nil;
  // GymnastHeadX1 := CenterX1 - 70;
  // GymnastHeadX2 := CenterX2 + 70;
  // GymnastHeadY1 := CenterY1 - 70;
  // GymnastHeadY2 := CenterY2 + 70;
  if (ParallelBarCounter < 30 * 3) then
  begin
    if PushingDown then
    begin
      inc(GymnastHeadY1);
      inc(GymnastHeadY2);
      inc(BodyY1);
      inc(BodyY2);
      // inc(LeftElbowY);
      // inc(RightElbowY);
      inc(LeftKneeY);
      inc(RightKneeY);
      inc(LeftLegY);
      inc(RightLegY);
      inc(ParallelBarCounter);
    end
    else
    begin
      Dec(GymnastHeadY1);
      Dec(GymnastHeadY2);
      Dec(BodyY1);
      Dec(BodyY2);
      // Dec(LeftElbowY);
      // Dec(RightElbowY);
      Dec(LeftKneeY);
      Dec(RightKneeY);
      Dec(LeftLegY);
      Dec(RightLegY);
    end;

    Screen.Canvas.Ellipse(GymnastHeadX1, GymnastHeadY1, GymnastHeadX2,
      GymnastHeadY2);
    Screen.Canvas.MoveTo(BodyX1, BodyY1);
    Screen.Canvas.LineTo(BodyX2, BodyY2);
    Screen.Canvas.MoveTo((BodyX1), Round((BodyY1 + 15)));
    Screen.Canvas.LineTo(LeftElbowX, LeftElbowY);
    Screen.Canvas.LineTo(LeftArmX, LeftArmY);
    Screen.Canvas.MoveTo((BodyX1), Round((BodyY1 + 15)));
    Screen.Canvas.LineTo(RightElbowX, RightElbowY);
    Screen.Canvas.LineTo(RightArmX, RightArmY);
    Screen.Canvas.MoveTo(BodyX2, BodyY2);
    Screen.Canvas.LineTo(RightKneeX, RightKneeY);
    Screen.Canvas.LineTo(RightLegX, RightLegY);
    Screen.Canvas.MoveTo(BodyX2, BodyY2);
    Screen.Canvas.LineTo(LeftKneeX, LeftKneeY);
    Screen.Canvas.LineTo(LeftLegX, LeftLegY);
    DrawBrucya(CenterX1, CenterY1);
    DrawBrucya(CenterX2, CenterY2);
  end
  else
  begin
    if not PullingUp then
      InitializeGymanst;
    PushUp := false;
    Timer1.Enabled := True;
    Timer2.Enabled := false;
    PushingOnTheBarTimer.Enabled := false;
    PullingUp := True;

  end;

  // Invalidate;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if i < 5 then
  begin
    // if PullingUp then
    // begin
    case PullUpFrame of
      0:
        begin

          inc(PullUpFrame);
        end;
      1:
        begin
          Dec(GymnastY, 20);
          // Inc(LeftArmY, 20);
          // Inc(RightArmY, 20);
          Dec(LeftLegY, 20);
          Dec(RightLegY, 20);
          inc(PullUpFrame);
        end;
      2:
        begin
          Dec(GymnastY, 20);
          // Inc(LeftArmY, 20);
          // Inc(RightArmY, 20);
          Dec(LeftLegY, 20);
          Dec(RightLegY, 20);
          inc(PullUpFrame);
        end;
      3:
        begin
          Dec(GymnastY, 20);
          // Inc(LeftArmY, 20);
          // Inc(RightArmY, 20);
          Dec(LeftLegY, 20);
          Dec(RightLegY, 20);
          inc(PullUpFrame);
        end;
      4:
        begin
          Dec(GymnastY, 20);
          // Inc(LeftArmY, 20);
          // Inc(RightArmY, 20);
          Dec(LeftLegY, 20);
          Dec(RightLegY, 20);
          inc(PullUpFrame);
        end;
      5:
        begin
          inc(GymnastY, 20);
          // Inc(LeftArmY, 20);
          // Inc(RightArmY, 20);
          inc(LeftLegY, 20);
          inc(RightLegY, 20);
          inc(PullUpFrame);
        end;
      6:
        begin
          inc(GymnastY, 20);
          // Inc(LeftArmY, 20);
          // Inc(RightArmY, 20);
          inc(LeftLegY, 20);
          inc(RightLegY, 20);
          inc(PullUpFrame);
        end;
      7:
        begin
          inc(GymnastY, 20);
          // Inc(LeftArmY, 20);
          // Inc(RightArmY, 20);
          inc(LeftLegY, 20);
          inc(RightLegY, 20);
          inc(PullUpFrame);
        end;
      8:
        begin
          inc(GymnastY, 20);
          // Inc(LeftArmY, 20);
          // Inc(RightArmY, 20);
          inc(LeftLegY, 20);
          inc(RightLegY, 20);
          inc(PullUpFrame);
        end;

    else
      begin
        Invalidate;
        PullUpFrame := 0;
        inc(i);
      end;
    end;
    Invalidate;

  end
  else
  begin

    Timer1.Enabled := false;
    // Timer2.Enabled := True;
    PullingUp := false;
    // PushUp := True;
    Timer2.Enabled := false;
    Invalidate;
    // Canvas.Brush.Color	 := clWhite;
    // Screen.Canvas.FillRect(Rect(0,0,Screen.Width, Screen.Height	))    ;
    Timer3.Enabled := True;
    Squat := True;

  end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  if b < 3 then
  begin
    if PushUp then
    begin
      for var k := 0 to 3 do
      begin
        Dec(GymnastY, 15);
        inc(LeftArmY, 15);
        inc(RightArmY, 15);
        Dec(LeftElbowX, 15);
        Dec(RightElbowY, 15);
        Dec(LeftLegY, 15);
        Dec(RightLegY, 15);
        inc(PshUpFrame);
        Invalidate;
      end;
      inc(b);
    end;
  end;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  if Squat and (SquatsCount < 10) then
  begin
    if deltaY > 60 then
    begin
      down := false;
      inc(SquatsCount);
    end;
    if deltaY = 0 then
      down := True;

    if down then
      inc(deltaY)
    else
      Dec(deltaY);

    Invalidate;
  end;
end;

end.
