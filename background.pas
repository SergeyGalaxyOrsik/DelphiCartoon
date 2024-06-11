unit background;

interface
uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.MPlayer, Vcl.StdCtrls;

procedure DrawBackground(Canvas: TCanvas);

implementation



procedure DrawBackground(Canvas: TCanvas);
const
  GroundHeight = 100; // ������ ����� �� ������� ����
  PoleWidth = 10;     // ������ ������ ��������
  PoleHeight = 70;    // ������ ������ ��������
  BarWidth = 60;      // ������ ����������� ��������
  BarHeight = 10;     // ������ ����������� ��������
  TreeTrunkWidth = 20;
  TreeTrunkHeight = 60;
  TreeCrownWidth = 60;
  TreeCrownHeight = 50;
var
  ImgWidth, ImgHeight: Integer;
  GroundRect: TRect;
  Pole1Rect, Pole2Rect, BarRect: TRect;
  TreeTrunkRect, TreeCrownRect: TRect;
begin
  ImgWidth := Canvas.ClipRect.Right;
  ImgHeight := Canvas.ClipRect.Bottom;

  // ��������� ����
  Canvas.Brush.Color := clSkyBlue;
  Canvas.FillRect(Rect(0, 0, ImgWidth, ImgHeight - GroundHeight));

  // ��������� �����
  Canvas.Brush.Color := clGreen;
  GroundRect := Rect(0, ImgHeight - GroundHeight, ImgWidth, ImgHeight);
  Canvas.FillRect(GroundRect);

  // ��������� ������� �������� (��������, ������)
  Canvas.Brush.Color := clRed;

  // ����� ����� ��������
  Pole1Rect := Rect(50, ImgHeight - GroundHeight - PoleHeight, 50 + PoleWidth, ImgHeight - GroundHeight);
  Canvas.FillRect(Pole1Rect);

  // ������ ����� ��������
  Pole2Rect := Rect(50 + BarWidth, ImgHeight - GroundHeight - PoleHeight, 50 + BarWidth + PoleWidth, ImgHeight - GroundHeight);
  Canvas.FillRect(Pole2Rect);

  // ����������� ��������
  BarRect := Rect(50, ImgHeight - GroundHeight - PoleHeight - BarHeight, 50 + BarWidth + PoleWidth, ImgHeight - GroundHeight - PoleHeight);
  Canvas.FillRect(BarRect);

  // ��������� ��������
  Canvas.Brush.Color := clMaroon;

  // ������ ������
  TreeTrunkRect := Rect(150, ImgHeight - GroundHeight - TreeTrunkHeight, 150 + TreeTrunkWidth, ImgHeight - GroundHeight);
  Canvas.FillRect(TreeTrunkRect);
  Canvas.Brush.Color := clGreen;
  TreeCrownRect := Rect(150 - (TreeCrownWidth div 2) + (TreeTrunkWidth div 2), ImgHeight - GroundHeight - TreeTrunkHeight - TreeCrownHeight, 150 + (TreeCrownWidth div 2) + (TreeTrunkWidth div 2), ImgHeight - GroundHeight - TreeTrunkHeight);
  Canvas.FillRect(TreeCrownRect);

  // ������ ������
  Canvas.Brush.Color := clMaroon;
  TreeTrunkRect := Rect(250, ImgHeight - GroundHeight - TreeTrunkHeight, 250 + TreeTrunkWidth, ImgHeight - GroundHeight);
  Canvas.FillRect(TreeTrunkRect);
  Canvas.Brush.Color := clGreen;
  TreeCrownRect := Rect(250 - (TreeCrownWidth div 2) + (TreeTrunkWidth div 2), ImgHeight - GroundHeight - TreeTrunkHeight - TreeCrownHeight, 250 + (TreeCrownWidth div 2) + (TreeTrunkWidth div 2), ImgHeight - GroundHeight - TreeTrunkHeight);
  Canvas.FillRect(TreeCrownRect);

  // ��������� ������� ��������
  Canvas.Brush.Color := clBlue;

  // ����� ����� ��������
  Pole1Rect := Rect(400, ImgHeight - GroundHeight - PoleHeight, 400 + PoleWidth, ImgHeight - GroundHeight);
  Canvas.FillRect(Pole1Rect);

  // ������ ����� ��������
  Pole2Rect := Rect(400 + BarWidth, ImgHeight - GroundHeight - PoleHeight, 400 + BarWidth + PoleWidth, ImgHeight - GroundHeight);
  Canvas.FillRect(Pole2Rect);

  // ����������� ��������
  BarRect := Rect(400, ImgHeight - GroundHeight - PoleHeight - BarHeight, 400 + BarWidth + PoleWidth, ImgHeight - GroundHeight - PoleHeight);
  Canvas.FillRect(BarRect);

  // �������������� �������� ������� �������� (��������, ������ �������)
  BarRect := Rect(400 + (BarWidth div 4), ImgHeight - GroundHeight - (PoleHeight div 2) - BarHeight, 400 + (3 * BarWidth div 4) + PoleWidth, ImgHeight - GroundHeight - (PoleHeight div 2));
  Canvas.FillRect(BarRect);
end;

end.
