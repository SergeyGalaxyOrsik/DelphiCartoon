unit horizontalBar;

interface
procedure DrawParallelBars;
procedure DrawGymnast;
procedure InitializeGymanst;
procedure DrawPullingUp;
implementation

uses Unit1, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

procedure DrawParallelBars;
begin
  // Рисуем футбольные ворота (турник)
  Form1.Canvas.Pen.Width := 10; // Увеличиваем толщину линии
  Form1.Canvas.Pen.Color := clMaroon;
  Form1.Canvas.MoveTo(Form1.ClientWidth div 2 - 200, Form1.ClientHeight - 390);
  // Располагаем в центре
  Form1.Canvas.LineTo(Form1.ClientWidth div 2 - 200, Form1.ClientHeight); // Располагаем в центре
  Form1.Canvas.MoveTo(Form1.ClientWidth div 2 + 200, Form1.ClientHeight - 390);
  // Располагаем в центре
  Form1.Canvas.LineTo(Form1.ClientWidth div 2 + 200, Form1.ClientHeight); // Располагаем в центре

  Form1.Canvas.MoveTo(Form1.ClientWidth div 2 - 200, Form1.ClientHeight - 360);
  // Располагаем в центре
  Form1.Canvas.LineTo(Form1.ClientWidth div 2 + 200, Form1.ClientHeight - 360);
  // Располагаем в центре
end;

procedure DrawGymnast;
begin
  // Рисуем гимнаста
  Form1.Canvas.Pen.Color := clBlack;
  Form1.Canvas.Brush.Color := clBlack;

  // Голова
  Form1.Canvas.Ellipse(Form1.GymnastX - 40, Form1.GymnastY - 100, Form1.GymnastX + 40, Form1.GymnastY - 20);
  // Располагаем в центре
  // Туловище
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY - 20);
  Form1.Canvas.LineTo(Form1.GymnastX, Form1.GymnastY + 100);
  // Левая рука
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 20);
  Form1.Canvas.LineTo(Form1.LeftElbowX - 60, Form1.LeftElbowY - 20);
  // Правая рука
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 20);
  Form1.Canvas.LineTo(Form1.RightElbowX + 60, Form1.RightElbowY - 20);
  // Левая рука преплечье
  Form1.Canvas.MoveTo(Form1.LeftElbowX - 60, Form1.LeftElbowY - 20);
  Form1.Canvas.LineTo(Form1.LeftElbowX - 60 - 10, Form1.LeftElbowY - 30 - 60);
  // Правая рука  предплечье
  Form1.Canvas.MoveTo(Form1.RightElbowX + 60, Form1.RightElbowY - 20);
  Form1.Canvas.LineTo(Form1.RightElbowX + 60 + 10, Form1.RightElbowY - 30 - 60);

  // Левая нога
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 100);
  Form1.Canvas.LineTo(Form1.LeftLegX - 60, Form1.LeftLegY + 100);
  // Правая нога
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 100);
  Form1.Canvas.LineTo(Form1.RightLegX + 60, Form1.RightLegY + 100);
end;

procedure InitializeGymanst;
begin
  Form1.GymnastX := Form1.ClientWidth div 2; // Располагаем в центре
  Form1.GymnastY := (Form1.ClientHeight - 200) - 60; // Располагаем в центре

  Form1.LeftElbowX :=Form1. GymnastX - 20;
  Form1.LeftElbowY := Form1.GymnastY - 20;
  Form1.RightElbowX := Form1.GymnastX + 20;
  Form1.RightElbowY := Form1.GymnastY - 20;

  Form1.LeftLegX := Form1.GymnastX - 20;
  Form1.LeftLegY := Form1.GymnastY + 100;
  Form1.RightLegX := Form1.GymnastX + 20;
  Form1.RightLegY := Form1.GymnastY + 100;
  Form1.PullUpFrame := 0;
  Form1.PshUpFrame := 0;
  Form1.PullingUp := False;
  Form1.PushUp := False;
  Form1.Timer1.Enabled := True;
  Form1.Timer2.Enabled := false;
end;

procedure DrawPullingUp;
begin
  Form1.Canvas.Pen.Color := clGreen;
  Form1.Canvas.Brush.Color := clGreen;

  // Голова
  Form1.Canvas.Ellipse(Form1.GymnastX - 40, Form1.GymnastY - 100, Form1.GymnastX + 40, Form1.GymnastY - 20);
  // Располагаем в центре
  // Туловище
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY - 20);
  Form1.Canvas.LineTo(Form1.GymnastX, Form1.GymnastY + 100);
  // Левая рука
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 20);
  Form1.Canvas.LineTo(Form1.LeftElbowX - 60, Form1.LeftElbowY - 20);
  // Правая рука
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 20);
  Form1.Canvas.LineTo(Form1.RightElbowX + 60, Form1.RightElbowY - 20);
  // Левая рука преплечье
  Form1.Canvas.MoveTo(Form1.LeftElbowX - 60, Form1.LeftElbowY - 20);
  Form1.Canvas.LineTo(Form1.LeftElbowX - 60 - 10, Form1.LeftElbowY - 30 - 60);
  // Правая рука  предплечье
  Form1.Canvas.MoveTo(Form1.RightElbowX + 60, Form1.RightElbowY - 20);
  Form1.Canvas.LineTo(Form1.RightElbowX + 60 + 10, Form1.RightElbowY - 30 - 60);

  // Левая нога
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 100);
  Form1.Canvas.LineTo(Form1.LeftLegX - 60, Form1.LeftLegY + 100);
  // Правая нога
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 100);
  Form1.Canvas.LineTo(Form1.RightLegX + 60, Form1.RightLegY + 100);
end;



end.
