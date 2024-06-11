program Cartoon;
uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  horizontalBar in 'horizontalBar.pas',
  perehod in 'perehod.pas',
  background in 'background.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
