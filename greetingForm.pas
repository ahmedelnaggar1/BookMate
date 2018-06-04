unit greetingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, main, Data.FMTBcd,
  Data.DB, Data.SqlExpr, Data.DbxSqlite, CGuest, CShow, CSeat, globalVars;

type
  TgreetingsForm = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  greetingsForm: TgreetingsForm;

implementation

{$R *.dfm}

procedure TgreetingsForm.Button1Click(Sender: TObject);
begin

  if(main.bookingForm.Visible) then
    main.bookingForm.Hide();

  globalVars.SelectionType := 0;
  main.bookingForm.Show();

end;


procedure TgreetingsForm.Button2Click(Sender: TObject);
begin

  globalVars.ref_num := StrToInt(inputbox('Reference Number', 'Please enter in your booking reference number:', '0'));

  if(main.bookingForm.Visible) then
    main.bookingForm.Hide();

  globalVars.SelectionType := 1;

  main.bookingForm.Show();

end;

procedure TgreetingsForm.FormHide(Sender: TObject);
begin

  self.Show();

end;

end.
