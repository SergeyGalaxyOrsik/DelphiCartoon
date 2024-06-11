unit danceModule;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.MPlayer, Vcl.StdCtrls;

procedure PictureDraw1(var screen: TImage);
procedure PictureDraw2(var screen: TImage);
procedure PictureDraw3(var screen: TImage);
procedure PictureDraw4(var screen: TImage);
procedure PictureDraw5(var screen: TImage);
procedure PictureDraw6(var screen: TImage);
procedure PictureDraw7(var screen: TImage);
procedure PictureDraw8(var screen: TImage);
procedure PictureDraw9(var screen: TImage);
procedure PictureDraw10(var screen: TImage);
procedure PictureDraw11(var screen: TImage);
procedure PictureDraw12(var screen: TImage);
procedure PictureDraw13(var screen: TImage);
procedure PictureDraw14(var screen: TImage);
procedure dance(var screen: TImage);

// procedure PictureDrawW1;
// procedure PictureDrawW2;
// procedure PictureDrawW3;
// procedure PictureDrawW4;
// procedure PictureDrawW5;
// procedure PictureDrawW6;
implementation

uses Unit1, background;

var
  xc, yc: integer;
  xc_start: integer = 700;
  yc_start: integer = 500;
  k: real = 0.6;
  i: integer = 0;
  sign: boolean = true;

procedure PictureDraw1(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(3 * k);
  screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));

  // face
  screen.Canvas.Ellipse(xc - round(17 * k), yc + round(6 * k),
    xc - round(20 * k), yc + round(3 * k));
  screen.Canvas.Ellipse(xc + round(17 * k), yc - round(2 * k),
    xc + round(20 * k), yc - round(5 * k));
  screen.Canvas.MoveTo(xc - round(20 * k), yc + round(18 * k));
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(5 * k));

  // body
  yc := yc + round(40 * k);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc - round(20 * k), yc + round(160 * k));
  xLb := xc - round(20 * k);
  yLb := yc + round(160 * k);
  // left hip
  screen.Canvas.LineTo(xLb - round(30 * k), yLb + round(80 * k));
  // left shin
  screen.Canvas.LineTo(xLb - round(80 * k), yLb + round(180 * k));
  // left foot
  screen.Canvas.LineTo(xLb - round(30 * k), yLb + round(200 * k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(90 * k), yLb + round(80 * k));
  // right shin
  screen.Canvas.LineTo(xLb + round(80 * k), yLb + round(180 * k));
  // right foot
  screen.Canvas.LineTo(xLb + round(110 * k), yLb + round(200 * k));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(70 * k), yc + round(110 * k));
  // left forearm
  screen.Canvas.LineTo(xc + round(5 * k), yc + round(25 * k));
  // left wrist
  screen.Canvas.LineTo(xc + round(5 * k), yc + round(5 * k));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(75 * k), yc - round(35 * k));
  // right forearm
  screen.Canvas.LineTo(xc + round(100 * k), yc - round(20 * k));
  // right wrist
  screen.Canvas.LineTo(xc + round(95 * k), yc);
end;

procedure PictureDraw2(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start + round(10 * k);
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));
  // face
  screen.Canvas.Ellipse(xc - round(k * 12), yc - round(k * 5),
    xc - round(k * 15), yc - round(k * 8));
  screen.Canvas.Ellipse(xc + round(k * 20), yc - round(k * 15),
    xc + round(k * 23), yc - round(k * 18));
  screen.Canvas.MoveTo(xc - round(k * 5), yc + round(k * 2));
  screen.Canvas.LineTo(xc + round(k * 25), yc - round(k * 10));
  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 160));
  xLb := xc;
  yLb := yc + round(k * 160);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 140), yLb + round(k * 50));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 150), yLb + round(k * 85));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 70), yLb + round(k * 80));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 60), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 20));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 10), yc + round(k * 115));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 5), yc + round(k * 5));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 75), yc + round(k * 45));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 100), yc + round(k * 55));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 95), yc);
end;

procedure PictureDraw3(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 12), yc + round(k * 6),
    xc - round(k * 15), yc + round(k * 3));
  screen.Canvas.Ellipse(xc + round(k * 20), yc - round(k * 2),
    xc + round(k * 23), yc - round(k * 5));
  screen.Canvas.MoveTo(xc - round(k * 20), yc + round(k * 18));
  screen.Canvas.LineTo(xc + round(k * 5), yc + round(k * 15));
  screen.Canvas.LineTo(xc + round(k * 25), yc + round(k * 5));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 145));
  xLb := xc + round(k * 20);
  yLb := yc + round(k * 145);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 130), yLb + round(k * 10));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 140), yLb + round(k * 45));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 20));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 55), yc - round(k * 45));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 50), yc - round(k * 65));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 75), yc + round(k * 30));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 90), yc - round(k * 50));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 85), yc - round(k * 70));
end;

procedure PictureDraw4(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 18), yc - round(k * 6),
    xc - round(k * 15), yc - round(k * 3));
  screen.Canvas.Ellipse(xc + round(k * 17), yc + round(k * 2),
    xc + round(k * 20), yc + round(k * 5));
  screen.Canvas.MoveTo(xc - round(k * 20), yc + round(k * 8));
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 18));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 140));
  xLb := xc + round(k * 30);
  yLb := yc + round(k * 140);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 20), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 100), yLb + round(k * 150));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 105), yLb + round(k * 185));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 70));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 45), yc - round(k * 15));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 45), yc - round(k * 45));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 75), yc + round(k * 45));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 47), yc - round(k * 15));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 47), yc - round(k * 45));
  // clapEffect
  screen.Canvas.MoveTo(xc + round(k * 60), yc - round(k * 55));
  screen.Canvas.LineTo(xc + round(k * 75), yc - round(k * 80));
  screen.Canvas.MoveTo(xc + round(k * 70), yc - round(k * 40));
  screen.Canvas.LineTo(xc + round(k * 95), yc - round(k * 45));
  screen.Canvas.MoveTo(xc + round(k * 60), yc - round(k * 25));
  screen.Canvas.LineTo(xc + round(k * 85), yc - round(k * 5));
  screen.Canvas.MoveTo(xc + round(k * 30), yc - round(k * 55));
  screen.Canvas.LineTo(xc + round(k * 10), yc - round(k * 80));
  screen.Canvas.MoveTo(xc + round(k * 30), yc - round(k * 40));
  screen.Canvas.LineTo(xc + round(k * 10), yc - round(k * 45));
  screen.Canvas.MoveTo(xc + round(k * 35), yc - round(k * 25));
  screen.Canvas.LineTo(xc + round(k * 15), yc - round(k * 15));
end;

procedure PictureDraw5(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 14), yc - round(k * 3),
    xc - round(k * 11), yc);
  screen.Canvas.Ellipse(xc + round(k * 20), yc - round(k * 3),
    xc + round(k * 23), yc);
  screen.Canvas.MoveTo(xc - round(k * 16), yc + round(k * 10));
  screen.Canvas.LineTo(xc + round(k * 26), yc + round(k * 13));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 145));
  xLb := xc + round(k * 20);
  yLb := yc + round(k * 145);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 20), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 60), yLb + round(k * 195));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 25), yLb + round(k * 200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 25), yc + round(k * 90));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 45), yc + round(k * 25));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 50), yc + round(k * 50));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 68), yc + round(k * 55));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 43), yc - round(k * 15));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 15), yc);
end;

procedure PictureDraw6(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 22), yc - round(k * 7),
    xc - round(k * 19), yc - round(k * 4));
  screen.Canvas.Ellipse(xc + round(k * 13), yc - round(k * 3),
    xc + round(k * 15), yc);
  screen.Canvas.MoveTo(xc - round(k * 27), yc + round(k * 10));
  screen.Canvas.LineTo(xc + round(k * 2), yc + round(k * 13));
  screen.Canvas.LineTo(xc + round(k * 22), yc + round(k * 12));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 150));
  xLb := xc;
  yLb := yc + round(k * 150);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 35), yLb + round(k * 90));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 25), yLb + round(k * 160));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 35), yLb + round(k * 175));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 65), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 200));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 80), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 65), yc + round(k * 80));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 60), yc + round(k * 140));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 45), yc + round(k * 150));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 38), yc + round(k * 95));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 20), yc + round(k * 45));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 35), yc + round(k * 55));
end;

procedure PictureDraw7(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 25), yc - round(k * 1),
    xc - round(k * 22), yc - round(k * 4));
  screen.Canvas.Ellipse(xc + round(k * 10), yc, xc + round(k * 13),
    yc + round(k * 3));
  screen.Canvas.MoveTo(xc - round(k * 27), yc + round(k * 10));
  screen.Canvas.LineTo(xc + round(k * 17), yc + round(k * 12));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 150));
  xLb := xc;
  yLb := yc + round(k * 150);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 35), yLb + round(k * 90));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 25), yLb + round(k * 180));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 35), yLb + round(k * 195));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 65), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 200));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 80), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 70), yc - round(k * 5));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 120), yc + round(k * 40));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 120), yc + round(k * 45));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 55));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 50), yc + round(k * 40));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 65), yc + round(k * 45));
end;

procedure PictureDraw8(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start - round(k * 10);
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 17), yc + round(k * 6),
    xc - round(k * 20), yc + round(k * 3));
  screen.Canvas.Ellipse(xc + round(k * 17), yc - round(k * 2),
    xc + round(k * 20), yc - round(k * 5));
  screen.Canvas.MoveTo(xc - round(k * 20), yc + round(k * 18));
  screen.Canvas.LineTo(xc + round(k * 25), yc + round(k * 5));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 160));
  xLb := xc + round(k * 20);
  yLb := yc + round(k * 160);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 80), yLb + round(k * 180));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 30), yLb + round(k * 200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 80));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 80), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 110), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 70), yc + round(k * 110));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 5), yc + round(k * 25));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 5), yc + round(k * 5));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 75), yc - round(k * 35));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 100), yc - round(k * 20));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 95), yc);
end;

procedure PictureDraw9(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start + round(k * 10);
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));
  // face
  screen.Canvas.Ellipse(xc + round(k * 12), yc - round(k * 5),
    xc + round(k * 15), yc - round(k * 8));
  screen.Canvas.Ellipse(xc - round(k * 20), yc - round(k * 15),
    xc - round(k * 23), yc - round(k * 18));
  screen.Canvas.MoveTo(xc + round(k * 5), yc + round(k * 2));
  screen.Canvas.LineTo(xc - round(k * 25), yc - round(k * 10));
  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 160));
  xLb := xc;
  yLb := yc + round(k * 160);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 140), yLb + round(k * 50));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 150), yLb + round(k * 85));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 70), yLb + round(k * 80));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 60), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 20));
  // left forearm

  screen.Canvas.LineTo(xc + round(k * 10), yc + round(k * 115));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 5), yc + round(k * 5));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 75), yc + round(k * 45));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 100), yc + round(k * 55));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 95), yc);
end;

procedure PictureDraw10(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 12), yc + round(k * 6),
    xc + round(k * 15), yc + round(k * 3));
  screen.Canvas.Ellipse(xc - round(k * 20), yc - round(k * 2),
    xc - round(k * 23), yc - round(k * 5));
  screen.Canvas.MoveTo(xc + round(k * 20), yc + round(k * 18));
  screen.Canvas.LineTo(xc - round(k * 5), yc + round(k * 15));
  screen.Canvas.LineTo(xc - round(k * 25), yc + round(k * 5));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc - round(k * 20), yc + round(k * 145));
  xLb := xc - round(k * 20);
  yLb := yc + round(k * 145);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 130), yLb + round(k * 10));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 140), yLb + round(k * 45));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 20));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 55), yc - round(k * 45));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 50), yc - round(k * 65));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 75), yc + round(k * 30));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 90), yc - round(k * 50));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 85), yc - round(k * 70));
end;

procedure PictureDraw11(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 18), yc - round(k * 6),
    xc + round(k * 15), yc - round(k * 3));
  screen.Canvas.Ellipse(xc - round(k * 17), yc + round(k * 2),
    xc - round(k * 20), yc + round(k * 5));
  screen.Canvas.MoveTo(xc + round(k * 20), yc + round(k * 8));
  screen.Canvas.LineTo(xc - round(k * 20), yc + round(k * 18));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 140));
  xLb := xc - round(k * 30);
  yLb := yc + round(k * 140);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 20), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 100), yLb + round(k * 150));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 105), yLb + round(k * 185));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 70));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 45), yc - round(k * 15));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 45), yc - round(k * 45));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 75), yc + round(k * 45));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 47), yc - round(k * 15));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 47), yc - round(k * 45));
  // clapEffect
  screen.Canvas.MoveTo(xc - round(k * 60), yc - round(k * 55));
  screen.Canvas.LineTo(xc - round(k * 75), yc - round(k * 80));
  screen.Canvas.MoveTo(xc - round(k * 70), yc - round(k * 40));
  screen.Canvas.LineTo(xc - round(k * 95), yc - round(k * 45));
  screen.Canvas.MoveTo(xc - round(k * 60), yc - round(k * 25));
  screen.Canvas.LineTo(xc - round(k * 85), yc - round(k * 5));
  screen.Canvas.MoveTo(xc - round(k * 30), yc - round(k * 55));
  screen.Canvas.LineTo(xc - round(k * 10), yc - round(k * 80));
  screen.Canvas.MoveTo(xc - round(k * 30), yc - round(k * 40));
  screen.Canvas.LineTo(xc - round(k * 10), yc - round(k * 45));
  screen.Canvas.MoveTo(xc - round(k * 35), yc - round(k * 25));
  screen.Canvas.LineTo(xc - round(k * 15), yc - round(k * 15));
end;

procedure PictureDraw12(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 14), yc - round(k * 3),
    xc + round(k * 11), yc);
  screen.Canvas.Ellipse(xc - round(k * 20), yc - round(k * 3),
    xc - round(k * 23), yc);
  screen.Canvas.MoveTo(xc + round(k * 16), yc + round(k * 10));
  screen.Canvas.LineTo(xc - round(k * 26), yc + round(k * 13));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc - round(k * 20), yc + round(k * 145));
  xLb := xc - round(k * 20);
  yLb := yc + round(k * 145);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 20), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 60), yLb + round(k * 195));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 25), yLb + round(k * 200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 25), yc + round(k * 90));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 45), yc + round(k * 25));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 50), yc + round(k * 50));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 68), yc + round(k * 55));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 43), yc - round(k * 15));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 15), yc);
end;

procedure PictureDraw13(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 22), yc - round(k * 7),
    xc + round(k * 19), yc - round(k * 4));
  screen.Canvas.Ellipse(xc - round(k * 13), yc - round(k * 3),
    xc - round(k * 15), yc);
  screen.Canvas.MoveTo(xc + round(k * 27), yc + round(k * 10));
  screen.Canvas.LineTo(xc - round(k * 2), yc + round(k * 13));
  screen.Canvas.LineTo(xc - round(k * 22), yc + round(k * 12));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 150));
  xLb := xc;
  yLb := yc + round(k * 150);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 35), yLb + round(k * 90));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 25), yLb + round(k * 160));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 35), yLb + round(k * 175));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 65), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 200));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 80), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 65), yc + round(k * 80));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 60), yc + round(k * 140));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 45), yc + round(k * 150));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 38), yc + round(k * 95));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 45));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 35), yc + round(k * 55));
end;

procedure PictureDraw14(var screen: TImage);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
   screen.Canvas.Brush.Color :=clBlack;
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 25), yc - round(k * 1),
    xc + round(k * 22), yc - round(k * 4));
  screen.Canvas.Ellipse(xc - round(k * 10), yc, xc - round(k * 13),
    yc + round(k * 3));
  screen.Canvas.MoveTo(xc + round(k * 27), yc + round(k * 10));
  screen.Canvas.LineTo(xc - round(k * 17), yc + round(k * 12));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 150));
  xLb := xc;
  yLb := yc + round(k * 150);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 35), yLb + round(k * 90));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 25), yLb + round(k * 180));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 35), yLb + round(k * 195));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 65), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 200));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 80), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 70), yc - round(k * 5));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 120), yc + round(k * 40));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 120), yc + round(k * 45));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 55));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 50), yc + round(k * 40));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 65), yc + round(k * 45));
end;

procedure dance(var screen: TImage);
begin

  inc(i);
  if sign then
    k := k + 0.02
  else
    k := k - 0.02;

  case i of
    1:
      begin
        screen.Picture := nil;
        // DrawBackground(screen, 2, 2);
        DrawBackground(screen.Canvas);
        PictureDraw1(screen);
      end;
    2:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 2, 2);
        DrawBackground(screen.Canvas);
        PictureDraw2(screen);
      end;
    3:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 2, 2);
        DrawBackground(screen.Canvas);
        PictureDraw3(screen);
      end;
    4:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 1, 2);
        DrawBackground(screen.Canvas);
        PictureDraw4(screen);
        // MediaPlayer1.Play;
        // õëîïîê
      end;
    5:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 1, 2);
        DrawBackground(screen.Canvas);
        PictureDraw5(screen);
      end;
    6:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 1, 2);
        DrawBackground(screen.Canvas);
        PictureDraw6(screen);
      end;
    7:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 2, 2);
        DrawBackground(screen.Canvas);
        PictureDraw7(screen);
      end;
    8:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 2, 2);
        DrawBackground(screen.Canvas);
        PictureDraw8(screen);
      end;
    9:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 2, 2);
        DrawBackground(screen.Canvas);
        PictureDraw9(screen);
      end;
    10:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 1, 2);
        DrawBackground(screen.Canvas);
        PictureDraw10(screen);
      end;
    11:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 1, 2);
        DrawBackground(screen.Canvas);
        PictureDraw11(screen);
        // MediaPlayer1.Play;
      end;
    12:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 1, 2);
        DrawBackground(screen.Canvas);
        PictureDraw12(screen);
      end;
    13:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 2, 2);
        DrawBackground(screen.Canvas);
        PictureDraw13(screen);
      end;
    14:
      begin
        screen.Picture := nil;
        // DrawBackground(Sender, 2, 2);
        DrawBackground(screen.Canvas);
        PictureDraw14(screen);
      end;
  end;
  // if i=14 then fps.Enabled:=false;
  if i = 14 then
  begin
    i := 0;
    sign := not sign;
  end;
end;

end.
