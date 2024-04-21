unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
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

    procedure DrawBrucya(CenterX, CenterY:integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var
  x: integer;
begin
  GymnastHeadX1 := 50;
  GymnastHeadY1 := 50;
  GymnastHeadX2 := 100;
  GymnastHeadY2 := 100;
  CenterX := Round((GymnastHeadX1 + GymnastHeadX2) / 2);
  CenterY := Round((GymnastHeadY1 + GymnastHeadY2) / 2);
  Canvas.Ellipse(GymnastHeadX1, GymnastHeadY1, GymnastHeadX2, GymnastHeadY2);
  BodyX1 := CenterX;
  BodyX2 := CenterX;
  BodyY1 := GymnastHeadY2;
  BodyY2 := Round(GymnastHeadY2 * 1.9);
  Canvas.MoveTo(BodyX1, BodyY1);
  Canvas.LineTo(BodyX2, BodyY2);
  DrawBrucya(100, 200);
  DrawBrucya(110, 210);
end;

procedure TForm1.DrawBrucya(CenterX, CenterY:integer);
begin
  Canvas.MoveTo(CenterX-25, CenterY+50);
  Canvas.LineTo(CenterX-25, CenterY);
  Canvas.MoveTo(CenterX+25, CenterY+50);
  Canvas.LineTo(CenterX+25, CenterY);
  Canvas.MoveTo(CenterX-50, CenterY);
  Canvas.LineTo(CenterX+50, CenterY);
end;

end.
