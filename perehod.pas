unit perehod;

interface

Procedure DrawSticman(X, Y: integer; delta: integer);

implementation

uses Unit1,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;


Procedure DrawSticman(X, Y: integer; delta: integer);
begin

  Form1.Canvas.Pen.Width := 10;

  // тело
  Form1.Canvas.MoveTo(X, Y + delta);
  Form1.Canvas.LineTo(X, Y + 150 + delta);

  // левая рука
  Form1.Canvas.MoveTo(X, Y + 75 + delta);
  Form1.Canvas.LineTo(X - 100, Y - 40 + delta);

  // гимнастическая палка
  Form1.Canvas.Pen.Width := 6;
  Form1.Canvas.Pen.Color := clblue;

  Form1.Canvas.MoveTo(X - 120, Y - 40 + delta);
  Form1.Canvas.LineTo(X + 120, Y - 40 + delta);

  Form1.Canvas.Pen.Width := 10;
  Form1.Canvas.Pen.Color := clblack;
  Form1.Canvas.Brush.Color := clblack;
  // правая рука
  Form1.Canvas.MoveTo(X, Y + 75 + delta);
  Form1.Canvas.LineTo(X + 100, Y - 40 + delta);

  // голова
  Form1.Canvas.Ellipse(X - 30, Y - 30 + delta, X + 30, Y + 30 + delta);

  // левая нога
  Form1.Canvas.MoveTo(X, Y + 150 + delta);
  Form1.Canvas.LineTo(X - 50, Y + 200);

  Form1.Canvas.MoveTo(X - 50, Y + 200);
  Form1.Canvas.LineTo(X - 50, Y + 270);

  // правая нога
  Form1.Canvas.MoveTo(X, Y + 150 + delta);
  Form1.Canvas.LineTo(X + 50, Y + 200);

  Form1.Canvas.MoveTo(X + 50, Y + 200);
  Form1.Canvas.LineTo(X + 50, Y + 270);

end;


end.
