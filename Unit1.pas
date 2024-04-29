unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PushingOnTheBarTimer: TTimer;
    Screen: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    GymnastHeadX1, GymnastHeadY2, GymnastHeadY1, GymnastHeadX2: integer;

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

    x: integer;
    PushingDown: boolean;

    procedure DrawBrucya(CenterX, CenterY: integer);
    procedure PushUpsOnTheBar(CenterX1, CenterY1, CenterX2, CenterY2: integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
//  for var i := 1 to 75 do
  if x<35 then
  begin
    PushingDown:=True;
    PushUpsOnTheBar(150, 200, 160, 210);
  end
  else
  begin
    PushingDown := false;
    PushUpsOnTheBar(150, 200, 160, 210);
    if x = 70 then
      x:=1;
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
  x:=1;
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
  LeftLegX := LeftKneeX+15;
  RightLegX := RightKneeX + 15;
  LeftLegY := LeftKneeY + 30;
  RightLegY := RightKneeY + 30;
  LeftElbowX := BodyX1 + 25;
  RightElbowX := BodyX1 + 30;
  LeftElbowY := Round((BodyY1 + BodyY2) * 0.4) + 30;
  RightElbowY := Round((BodyY1 + BodyY2) * 0.4) + 30;
end;

procedure TForm1.PushUpsOnTheBar(CenterX1, CenterY1, CenterX2,
  CenterY2: integer);
begin
  Screen.Picture :=nil;
  // GymnastHeadX1 := CenterX1 - 70;
  // GymnastHeadX2 := CenterX2 + 70;
  // GymnastHeadY1 := CenterY1 - 70;
  // GymnastHeadY2 := CenterY2 + 70;
  if PushingDown then
  begin
    inc(GymnastHeadY1);
    inc(GymnastHeadY2);
    inc(BodyY1);
    inc(BodyY2);
//    inc(LeftElbowY);
//    inc(RightElbowY);
    inc(LeftKneeY);
    inc(RightKneeY);
    inc(LeftLegY);
    inc(RightLegY);
  end
  else
  begin
    Dec(GymnastHeadY1);
    Dec(GymnastHeadY2);
    Dec(BodyY1);
    Dec(BodyY2);
//    Dec(LeftElbowY);
//    Dec(RightElbowY);
    Dec(LeftKneeY);
    Dec(RightKneeY);
    Dec(LeftLegY);
    Dec(RightLegY);
  end;
  Screen.Canvas.Ellipse(GymnastHeadX1, GymnastHeadY1, GymnastHeadX2, GymnastHeadY2);
  Screen.Canvas.MoveTo(BodyX1, BodyY1);
  Screen.Canvas.LineTo(BodyX2, BodyY2);
  Screen.Canvas.MoveTo((BodyX1), Round((BodyY1+15)));
  Screen.Canvas.LineTo(LeftElbowX, LeftElbowY);
  Screen.Canvas.LineTo(LeftArmX, LeftArmY);
  Screen.Canvas.MoveTo((BodyX1), Round((BodyY1+15)));
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
  //Invalidate;
end;

end.
