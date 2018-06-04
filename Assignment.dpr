program Assignment;

uses
  Vcl.Forms,
  main in 'main.pas' {bookingForm},
  CGuest in 'CGuest.pas',
  CRender in 'CRender.pas',
  CSeat in 'CSeat.pas',
  CShow in 'CShow.pas',
  ShowFrame in 'ShowFrame.pas' {Frame1: TFrame},
  greetingForm in 'greetingForm.pas' {greetingsForm},
  Unit2 in 'Unit2.pas' {Form2},
  globalVars in 'globalVars.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TgreetingsForm, greetingsForm);
  Application.CreateForm(TbookingForm, bookingForm);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
