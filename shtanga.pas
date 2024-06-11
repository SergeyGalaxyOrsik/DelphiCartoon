unit shtanga;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.MPlayer, Vcl.StdCtrls;

procedure HumanBarbelBody(MainX, MainY: integer; Canvas: TCanvas; pose: integer;
  size: double; gym: boolean);

procedure Hands1(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);

procedure Hands2(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);

procedure Hands3(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);

procedure Hands4(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);

procedure Hands5(MainX, MainY: integer; Canvas: TCanvas; size: double;
  gym: boolean);

procedure Hands6(MainX, MainY: integer; Canvas: TCanvas; gym: boolean;
  size: double);

procedure Legs1(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);

procedure Legs2(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);

procedure Legs3(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);

procedure Legs4(MainX, MainY: integer; Canvas: TCanvas; size: double;
  gym: boolean);

procedure Barrbel(MainX, MainY: integer; Canvas: TCanvas);

procedure go(MainX, MainY: integer; Canvas: TCanvas; size: double);

procedure go1(MainX, MainY: integer; Canvas: TCanvas; size: double);

procedure go2(MainX, MainY: integer; Canvas: TCanvas; size: double);

procedure handsgo1(MainX, MainY: integer; Canvas: TCanvas; size: double);

procedure handsgo2(MainX, MainY: integer; Canvas: TCanvas; size: double);

implementation

procedure HumanBarbelBody(MainX, MainY: integer; Canvas: TCanvas; pose: integer;
  size: double; gym: boolean);
begin
  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
  Canvas.Ellipse(Round(MainX - size * 40), Round(MainY - size * 80),
    Round(MainX + size * 40), Round(MainY));
  case pose of
    1:
      begin
        Canvas.MoveTo(MainX, MainY);
        Canvas.LineTo(MainX, Round(MainY + size * 160));
      end;
    2:
      begin
        Canvas.MoveTo(MainX, MainY);
        Canvas.LineTo(MainX, Round(MainY + size * 100));
      end;
    3:
      begin
        Canvas.MoveTo(MainX, MainY);
        Canvas.LineTo(MainX, Round(MainY + size * 126));
      end;
    4:
      begin
        Canvas.MoveTo(MainX, MainY);
        Canvas.LineTo(MainX, Round(MainY + size * 118));
      end;
  end;
end;


procedure Hands1(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX + 60, MainY + 80);
  Canvas.LineTo(MainX + 60, MainY + 180);

  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX - 60, MainY + 80);
  Canvas.LineTo(MainX - 60, MainY + 180);

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
end;

procedure Hands2(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX + 71, MainY + 71);
  Canvas.LineTo(MainX + 71, MainY + 156);

  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX - 71, MainY + 71);
  Canvas.LineTo(MainX - 71, MainY + 156);

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;

end;

procedure Hands3(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX + 80, MainY + 60);
  Canvas.LineTo(MainX + 80, MainY + 120);

  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX - 80, MainY + 60);
  Canvas.LineTo(MainX - 80, MainY + 120);

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
end;

procedure Hands4(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX + 90, MainY + 25);
  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX - 90, MainY + 25);

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
end;

procedure Hands5(MainX, MainY: integer; Canvas: TCanvas; size: double;
  gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(Round(MainX + 80 * size), Round(MainY - 35 * size));
  Canvas.LineTo(Round(MainX + 80 * size), Round(MainY - 100 * size));

  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(Round(MainX - 80 * size), Round(MainY - 35 * size));
  Canvas.LineTo(Round(MainX - 80 * size), Round(MainY - 100 * size));

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
end;

procedure Hands6(MainX, MainY: integer; Canvas: TCanvas; gym: boolean;
  size: double);
begin

  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(Round(MainX + 60 * size), Round(MainY - 80 * size));
  Canvas.LineTo(Round(MainX + 60 * size), Round(MainY - 180 * size));

  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(Round(MainX - 60 * size), Round(MainY - 80 * size));
  Canvas.LineTo(Round(MainX - 60 * size), Round(MainY - 180 * size));

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
end;

procedure Legs1(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY + 160);
  Canvas.LineTo(MainX + 70, MainY + 160 + 40);
  Canvas.LineTo(MainX + 70, MainY + 160 + 120);

  Canvas.MoveTo(MainX, MainY + 160);
  Canvas.LineTo(MainX - 70, MainY + 160 + 40);
  Canvas.LineTo(MainX - 70, MainY + 160 + 120);

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
end;

procedure Legs2(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY + 160);
  Canvas.LineTo(MainX + 40, MainY + 160 + 70);
  Canvas.LineTo(MainX + 40, MainY + 160 + 150);

  Canvas.MoveTo(MainX, MainY + 160);
  Canvas.LineTo(MainX - 40, MainY + 160 + 70);
  Canvas.LineTo(MainX - 40, MainY + 160 + 150);

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
end;

procedure Legs3(MainX, MainY: integer; Canvas: TCanvas; gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY + 160);
  Canvas.LineTo(MainX + 57, MainY + 160 + 57);
  Canvas.LineTo(MainX + 57, MainY + 160 + 137);

  Canvas.MoveTo(MainX, MainY + 160);
  Canvas.LineTo(MainX - 57, MainY + 160 + 57);
  Canvas.LineTo(MainX - 57, MainY + 160 + 137);

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + 1;
  end;
end;

procedure Legs4(MainX, MainY: integer; Canvas: TCanvas; size: double;
  gym: boolean);
begin
  Canvas.MoveTo(MainX, MainY + Round(size * 160));
  Canvas.LineTo(MainX + Round(size * 51), MainY + Round(size * 160) +
    Round(size * 61));
  Canvas.LineTo(MainX + Round(size * 51), MainY + Round(size * 160) +
    Round(size * 141));

  Canvas.MoveTo(MainX, MainY + Round(size * 160));
  Canvas.LineTo(MainX - Round(size * 51), MainY + Round(size * 160) +
    Round(size * 61));
  Canvas.LineTo(MainX - Round(size * 51), MainY + Round(size * 160) +
    Round(size * 141));

  if gym then
  begin
    Canvas.Pen.Width := Canvas.Pen.Width + Round(size);
  end;
end;

procedure Barrbel(MainX, MainY: integer; Canvas: TCanvas);
var
  i: integer;
begin
  i := Canvas.Pen.Width;
  Canvas.Pen.Width := 3;
  Canvas.MoveTo(MainX - 210, MainY);
  Canvas.LineTo(MainX + 210, MainY);
  Canvas.MoveTo(MainX + 320, MainY);
  Canvas.Brush.Color := clBlack;
  Canvas.Rectangle(MainX + 160, MainY, MainX + 190, MainY - 50);
  Canvas.Rectangle(MainX + 160, MainY, MainX + 190, MainY + 50);
  Canvas.Rectangle(MainX + 195, MainY, MainX + 215, MainY - 45);
  Canvas.Rectangle(MainX + 195, MainY, MainX + 215, MainY + 45);
  Canvas.MoveTo(MainX - 320, MainY);
  Canvas.Rectangle(MainX - 160, MainY, MainX - 190, MainY - 50);
  Canvas.Rectangle(MainX - 160, MainY, MainX - 190, MainY + 50);
  Canvas.Rectangle(MainX - 195, MainY, MainX - 215, MainY - 45);
  Canvas.Rectangle(MainX - 195, MainY, MainX - 215, MainY + 45);
  Canvas.Brush.Color := clWhite;
  Canvas.Pen.Width := i;
end;



procedure go(MainX, MainY: integer; Canvas: TCanvas; size: double);
begin
  Canvas.MoveTo(MainX, MainY + Round(160 * size));
  Canvas.LineTo(MainX - Round(40 * size), MainY + Round(160 * size) +
    Round(30 * size) + Round(60 * size));
  Canvas.MoveTo(MainX - Round(40 * size), MainY + Round(190 * size) +
    Round(60 * size));
  Canvas.LineTo(MainX - Round(30 * size), MainY + Round(190 * size) +
    Round(30 * size) + Round(80 * size));

  Canvas.MoveTo(MainX, MainY + Round(160 * size));
  Canvas.LineTo(MainX + Round(35 * size), MainY + Round(190 * size) +
    Round(30 * size) + Round(80 * size));
end;

procedure go1(MainX, MainY: integer; Canvas: TCanvas; size: double);
begin
  Canvas.MoveTo(MainX, MainY + Round(160 * size));
  Canvas.LineTo(MainX - Round(40 * size), MainY + Round(190 * size) +
    Round(30 * size) + Round(45 * size));
  Canvas.LineTo(MainX - Round(40 * size), MainY + Round(190 * size) +
    Round(30 * size) + Round(70 * size));
  Canvas.MoveTo(MainX, MainY + Round(160 * size));
  Canvas.LineTo(MainX, MainY + Round(190 * size) + Round(30 * size) +
    Round(45 * size));
  Canvas.LineTo(MainX, MainY + Round(190 * size) + Round(30 * size) +
    Round(70 * size));
end;

procedure go2(MainX, MainY: integer; Canvas: TCanvas; size: double);
begin
  Canvas.MoveTo(MainX, MainY + Round(160 * size));
  Canvas.LineTo(MainX - Round(30 * size), MainY + Round(160 * size) +
    Round(30 * size) + Round(60 * size));
  Canvas.MoveTo(MainX - Round(30 * size), MainY + Round(190 * size) +
    Round(60 * size));
  Canvas.LineTo(MainX - Round(35 * size), MainY + Round(190 * size) +
    Round(30 * size) + Round(80 * size));

  Canvas.MoveTo(MainX, MainY + Round(160 * size));
  Canvas.LineTo(MainX + Round(20 * size), MainY + Round(160 * size) +
    Round(30 * size) + Round(60 * size));
  Canvas.MoveTo(MainX + Round(20 * size), MainY + Round(160 * size) +
    Round(30 * size) + Round(60 * size));
  Canvas.LineTo(MainX + Round(45 * size), MainY + Round(160 * size) +
    Round(30 * size) + Round(30 * size) + Round(80 * size));
end;

procedure handsgo1(MainX, MainY: integer; Canvas: TCanvas; size: double);
begin
  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(Round(MainX - 15 * size), Round(MainY + 30 * size));
  Canvas.LineTo(Round(MainX - 45 * size), Round(MainY - 35 * size));

  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX - Round(10 * size), MainY + Round(20 * size));
  Canvas.LineTo(MainX - Round(45 * size), MainY - Round(5 * size));
end;

procedure handsgo2(MainX, MainY: integer; Canvas: TCanvas; size: double);
begin
  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(MainX - Round(45 * size), MainY + Round(15 * size));
  Canvas.LineTo(MainX - Round(85 * size), MainY - Round(20 * size));

  Canvas.MoveTo(MainX, MainY);
  Canvas.LineTo(Round(MainX + 15 * size), Round(MainY + 30 * size));
  Canvas.LineTo(Round(MainX + 5 * size), Round(MainY + 55 * size));
end;

end.
