unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.MPlayer, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    PushingOnTheBarTimer: TTimer;
    Timer1: TTimer;
    Timer2: TTimer;
    MediaPlayer1: TMediaPlayer;
    Timer3: TTimer;
    Screen: TImage;
    Timer4: TTimer;
    Timer5: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure TimerBarTimer(Sender: TObject);

    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
  private
//    x: integer;
    PushingDown: boolean;
    procedure DrawBrucya(CenterX, CenterY: integer);
    procedure PushUpsOnTheBar(CenterX1, CenterY1, CenterX2, CenterY2: integer);
  public
    { Public declarations }
    // procedure DrawParallelBars;
    GymnastHeadX1, GymnastHeadY2, GymnastHeadY1, GymnastHeadX2: integer;
    GymnastX, GymnastY: integer;

    CenterX, CenterY: integer;

    BodyX, BodyY1, BodyY2: integer;

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
    ParallelBarFrame: integer;

    timerStep: integer;
    shtangaCount,currentStep: integer;
    y, x :Integer;

    pose, size :Integer;
    gym :Boolean;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses horizontalBar, perehod, background, shtanga, danceModule;

var
  ParallelBarCounter: integer = 0;
  PullUpFrame: integer = 0;
  PshUpFrame: integer = 0;
  SquatsCount: integer = 0;


procedure TForm1.DrawBrucya(CenterX, CenterY: integer);
begin
  Screen.Canvas.MoveTo(Screen.ClientWidth div 2 - 75, Screen.ClientHeight - 50);
  Screen.Canvas.LineTo(Screen.ClientWidth div 2 - 75,
    Screen.ClientHeight - 150);
  Screen.Canvas.MoveTo(Screen.ClientWidth div 2 + 75, Screen.ClientHeight - 50);
  Screen.Canvas.LineTo(Screen.ClientWidth div 2 + 75,
    Screen.ClientHeight - 150);
  Screen.Canvas.MoveTo(Screen.ClientWidth div 2 - 150,
    Screen.ClientHeight - 150);
  Screen.Canvas.LineTo(Screen.ClientWidth div 2 + 150,
    Screen.ClientHeight - 150);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  // Label1.Caption:=ExtractFilePath(ParamStr(0))+'song.mp3';
  MediaPlayer1.FileName := ExtractFilePath(ParamStr(0)) + 'song.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
  Form1.Canvas.Pen.Width := 10;
  Form1.Screen.Canvas.Pen.Width := 10;

  x := 1;
  ParallelBarCounter := 0;
  PushingDown := True;

  GymnastHeadX1 := Screen.ClientWidth div 2;
  GymnastHeadY1 := Screen.ClientHeight - 260;
  GymnastHeadX2 := Screen.ClientWidth div 2 + 50;
  GymnastHeadY2 := Screen.ClientHeight - 310;
  LeftArmX := Screen.ClientWidth div 2 + 10;
  RightArmX := Screen.ClientWidth div 2 + 10;
  LeftArmY := Screen.ClientHeight - 150;
  RightArmY := Screen.ClientHeight - 150;
  CenterX := Round((GymnastHeadX1 + GymnastHeadX2) / 2);
  CenterY := Round((GymnastHeadY1 + GymnastHeadY2) / 2) - 50;
  BodyX := CenterX;
  BodyY1 := GymnastHeadY2 + 50;
  BodyY2 := GymnastHeadY2 + 160;
  RightKneeX := BodyX - 10;
  LeftKneeX := BodyX - 5;
  RightKneeY := BodyY2 + 30;
  LeftKneeY := BodyY2 + 30;
  LeftLegX := LeftKneeX + 15;
  RightLegX := RightKneeX + 15;
  LeftLegY := LeftKneeY + 30;
  RightLegY := RightKneeY + 30;
  LeftElbowX := BodyX + 25;
  RightElbowX := BodyX + 30;
  LeftElbowY := BodyY2 - 40;
  RightElbowY := BodyY2 - 40;
  deltaY := 0;
  HeadX := 300;
  HeadY := 300;
  down := True;
  Squat := false;
  ParallelBarFrame := 0;
  shtangaCount:=0;

end;

procedure TForm1.FormPaint(Sender: TObject);
begin
  DrawBackground(Form1.Canvas);
  if Timer1.Enabled then
  begin
    DrawParallelBars;
    DrawGymnast;
  end;
  if Timer2.Enabled then
  begin
    GymnastX := ClientWidth div 2;
    GymnastY := (ClientHeight - 200) - 60;
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
    DrawSticman(GymnastX, GymnastY, deltaY);
  end;

end;

var
  i: integer = 0;
  b: integer = 0;

procedure TForm1.TimerBarTimer(Sender: TObject);
var
  k: integer;
begin
  // for var i := 1 to 75 do
  // if x < 30 then
  // begin
  // PushingDown := True;
  //
  //
  // end
  // else
  // begin
  // PushingDown := false;
  // if x = 60 then
  // x := 1;
  // end;
  // PushUpsOnTheBar(150, 200, 160, 210
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

procedure TForm1.PushUpsOnTheBar(CenterX1, CenterY1, CenterX2,
  CenterY2: integer);
begin
  Screen.Picture := nil;
  DrawBackground(Form1.Screen.Canvas);
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
    Screen.Canvas.Brush.Color := clblack;
    Form1.Screen.Canvas.Pen.Width := 10;
    Screen.Canvas.Ellipse(GymnastHeadX1, GymnastHeadY1, GymnastHeadX2,
      GymnastHeadY2);
    Screen.Canvas.MoveTo(BodyX, BodyY1);
    Screen.Canvas.LineTo(BodyX, BodyY2);
    Screen.Canvas.MoveTo((BodyX), Round((BodyY1 + 15)));
    Screen.Canvas.LineTo(LeftElbowX, LeftElbowY);
    Screen.Canvas.LineTo(LeftArmX, LeftArmY);
    Screen.Canvas.MoveTo((BodyX), Round((BodyY1 + 15)));
    Screen.Canvas.LineTo(RightElbowX, RightElbowY);
    Screen.Canvas.LineTo(RightArmX, RightArmY);
    Screen.Canvas.MoveTo(BodyX, BodyY2);
    Screen.Canvas.LineTo(RightKneeX, RightKneeY);
    Screen.Canvas.LineTo(RightLegX, RightLegY);
    Screen.Canvas.MoveTo(BodyX, BodyY2);
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
    Screen.Visible:=false;
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
  if Squat and (SquatsCount < 3) then
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
  end
  else
  begin
    Invalidate;
    Timer3.Enabled :=false;
    Timer4.Enabled :=true;
    Screen.Visible:=true;

  end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  Screen.Picture := nil;
  DrawBackground(Form1.Screen.Canvas);
  Screen.Canvas.Pen.Width :=10;
  if shtangaCount<3 then
  begin
  case timerStep of
    0:
      begin
        // Шаг 5 - Подъем штанги
        x := Screen.ClientWidth	div 2;
        y := Screen.ClientHeight div 2 + 100;
        size := 1;
        gym := false;
        pose := 1;
        HumanBarbelBody(x, y, Screen.Canvas, pose, size, gym);
        Hands1(x, y, Screen.Canvas, gym);
        Legs1(x, y, Screen.Canvas, gym);
        Barrbel(x, y + 180, Screen.Canvas);
      end;
    1:
      begin
        // Шаг 6 - Подъем штанги
        pose := 2;
        HumanBarbelBody(x, y + 30, Screen.Canvas, pose, size, gym);
        Hands1(x, y + 30, Screen.Canvas, gym);
        Legs2(x, y - 30, Screen.Canvas, gym);
        Barrbel(x, y + 210, Screen.Canvas);
      end;
    2:
      begin
        // Шаг 7 - Подъем штанги
        pose := 3;
        HumanBarbelBody(x, y + 17, Screen.Canvas, pose, size, gym);
        Hands2(x, y + 17, Screen.Canvas, gym);
        Legs3(x, y - 17, Screen.Canvas, gym);
        Barrbel(x, y + 173, Screen.Canvas);
      end;
    3:
      begin
        // Шаг 8 - Подъем штанги
        pose := 3;
        HumanBarbelBody(x, y + 17, Screen.Canvas, pose, size, gym);
        Hands3(x, y + 17, Screen.Canvas, gym);
        Legs3(x, y - 17, Screen.Canvas, gym);
        Barrbel(x, y + 137, Screen.Canvas);
      end;
    4:
      begin
        // Шаг 9 - Подъем штанги
        pose := 4;
        HumanBarbelBody(x, y + 21, Screen.Canvas, pose, size, gym);
        Hands4(x, y + 21, Screen.Canvas, gym);
        Legs4(x, y + -21, Screen.Canvas, size, gym);
        Barrbel(x, y + 46, Screen.Canvas);
      end;
    5:
      begin
        // Шаг 10 - Подъем штанги
        pose := 1;
        HumanBarbelBody(x, y, Screen.Canvas, pose, size, gym);
        Hands5(x, y, Screen.Canvas, size, gym);
        Legs1(x, y, Screen.Canvas, gym);
        Barrbel(x, y - 100, Screen.Canvas);
      end;
    6:
      begin
        // Шаг 11 - Подъем штанги
        pose := 1;
        HumanBarbelBody(x, y, Screen.Canvas, pose, size, gym);
        Hands6(x, y, Screen.Canvas, gym, size);
        Legs1(x, y, Screen.Canvas, gym);
        Barrbel(x, y - 180, Screen.Canvas);
      end;
    7:
      begin
        // Шаг 12 - Подъем штанги
        pose := 1;
        HumanBarbelBody(x, y, Screen.Canvas, pose, size, gym);
        Hands5(x, y, Screen.Canvas, size, gym);
        Legs1(x, y, Screen.Canvas, gym);
        Barrbel(x, y - 100, Screen.Canvas);
      end;
    8:
      begin
        // Шаг 13 - Подъем штанги
        pose := 4;
        HumanBarbelBody(x, y + 21, Screen.Canvas, pose, size, gym);
        Hands4(x, y + 21, Screen.Canvas, gym);
        Legs4(x, y - 21, Screen.Canvas, size, gym);
        Barrbel(x, y + 46, Screen.Canvas);
      end;
    9:
      begin
        // Шаг 14 - Подъем штанги
        pose := 3;
        HumanBarbelBody(x, y + 17, Screen.Canvas, pose, size, gym);
        Hands3(x, y + 17, Screen.Canvas, gym);
        Legs3(x, y - 17, Screen.Canvas, gym);
        Barrbel(x, y + 137, Screen.Canvas);
      end;
    10:
      begin
        // Шаг 15 - Подъем штанги
        pose := 3;
        HumanBarbelBody(x, y + 17, Screen.Canvas, pose, size, gym);
        Hands2(x, y + 17, Screen.Canvas, gym);
        Legs3(x, y - 17, Screen.Canvas, gym);
        Barrbel(x, y + 173, Screen.Canvas);
      end;
    11:
      begin
        // Шаг 16 - Подъем штанги
        pose := 2;
        HumanBarbelBody(x, y + 30, Screen.Canvas, pose, size, gym);
        Hands1(x, y + 30, Screen.Canvas, gym);
        Legs2(x, y - 30, Screen.Canvas, gym);
        Barrbel(x, y + 210, Screen.Canvas);
      end;
    12:
      begin
        // Шаг 17 - Подъем штанги
        pose := 1;
        HumanBarbelBody(x, y, Screen.Canvas, pose, size, gym);
        Hands1(x, y, Screen.Canvas, gym);
        Legs1(x, y, Screen.Canvas, gym);
        Barrbel(x, y + 180, Screen.Canvas);
      end;
  end;

  // Переход к следующему шагу анимации

  inc(currentStep);
  if currentStep > 12 then
  begin
    currentStep := 1;
    inc(shtangaCount);
    // Остановка таймера после завершения цикла анимации
//    Timer4.Enabled := false;

  end;

  timerStep := currentStep;
  end
  else
  begin
    Invalidate;
    Timer4.Enabled :=false;
    Timer5.Enabled :=true;
  end;
end;



procedure TForm1.Timer5Timer(Sender: TObject);
begin
 dance(Screen);
end;

end.
