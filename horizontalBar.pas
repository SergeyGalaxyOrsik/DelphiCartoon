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
  // ������ ���������� ������ (������)
  Form1.Canvas.Pen.Width := 10; // ����������� ������� �����
  Form1.Canvas.Pen.Color := clMaroon;
  Form1.Canvas.MoveTo(Form1.ClientWidth div 2 - 200, Form1.ClientHeight - 390);
  // ����������� � ������
  Form1.Canvas.LineTo(Form1.ClientWidth div 2 - 200, Form1.ClientHeight); // ����������� � ������
  Form1.Canvas.MoveTo(Form1.ClientWidth div 2 + 200, Form1.ClientHeight - 390);
  // ����������� � ������
  Form1.Canvas.LineTo(Form1.ClientWidth div 2 + 200, Form1.ClientHeight); // ����������� � ������

  Form1.Canvas.MoveTo(Form1.ClientWidth div 2 - 200, Form1.ClientHeight - 360);
  // ����������� � ������
  Form1.Canvas.LineTo(Form1.ClientWidth div 2 + 200, Form1.ClientHeight - 360);
  // ����������� � ������
end;

procedure DrawGymnast;
begin
  // ������ ��������
  Form1.Canvas.Pen.Color := clBlack;
  Form1.Canvas.Brush.Color := clBlack;

  // ������
  Form1.Canvas.Ellipse(Form1.GymnastX - 40, Form1.GymnastY - 100, Form1.GymnastX + 40, Form1.GymnastY - 20);
  // ����������� � ������
  // ��������
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY - 20);
  Form1.Canvas.LineTo(Form1.GymnastX, Form1.GymnastY + 100);
  // ����� ����
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 20);
  Form1.Canvas.LineTo(Form1.LeftElbowX - 60, Form1.LeftElbowY - 20);
  // ������ ����
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 20);
  Form1.Canvas.LineTo(Form1.RightElbowX + 60, Form1.RightElbowY - 20);
  // ����� ���� ���������
  Form1.Canvas.MoveTo(Form1.LeftElbowX - 60, Form1.LeftElbowY - 20);
  Form1.Canvas.LineTo(Form1.LeftElbowX - 60 - 10, Form1.LeftElbowY - 30 - 60);
  // ������ ����  ����������
  Form1.Canvas.MoveTo(Form1.RightElbowX + 60, Form1.RightElbowY - 20);
  Form1.Canvas.LineTo(Form1.RightElbowX + 60 + 10, Form1.RightElbowY - 30 - 60);

  // ����� ����
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 100);
  Form1.Canvas.LineTo(Form1.LeftLegX - 60, Form1.LeftLegY + 100);
  // ������ ����
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 100);
  Form1.Canvas.LineTo(Form1.RightLegX + 60, Form1.RightLegY + 100);
end;

procedure InitializeGymanst;
begin
  Form1.GymnastX := Form1.ClientWidth div 2; // ����������� � ������
  Form1.GymnastY := (Form1.ClientHeight - 200) - 60; // ����������� � ������

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

  // ������
  Form1.Canvas.Ellipse(Form1.GymnastX - 40, Form1.GymnastY - 100, Form1.GymnastX + 40, Form1.GymnastY - 20);
  // ����������� � ������
  // ��������
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY - 20);
  Form1.Canvas.LineTo(Form1.GymnastX, Form1.GymnastY + 100);
  // ����� ����
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 20);
  Form1.Canvas.LineTo(Form1.LeftElbowX - 60, Form1.LeftElbowY - 20);
  // ������ ����
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 20);
  Form1.Canvas.LineTo(Form1.RightElbowX + 60, Form1.RightElbowY - 20);
  // ����� ���� ���������
  Form1.Canvas.MoveTo(Form1.LeftElbowX - 60, Form1.LeftElbowY - 20);
  Form1.Canvas.LineTo(Form1.LeftElbowX - 60 - 10, Form1.LeftElbowY - 30 - 60);
  // ������ ����  ����������
  Form1.Canvas.MoveTo(Form1.RightElbowX + 60, Form1.RightElbowY - 20);
  Form1.Canvas.LineTo(Form1.RightElbowX + 60 + 10, Form1.RightElbowY - 30 - 60);

  // ����� ����
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 100);
  Form1.Canvas.LineTo(Form1.LeftLegX - 60, Form1.LeftLegY + 100);
  // ������ ����
  Form1.Canvas.MoveTo(Form1.GymnastX, Form1.GymnastY + 100);
  Form1.Canvas.LineTo(Form1.RightLegX + 60, Form1.RightLegY + 100);
end;



end.
