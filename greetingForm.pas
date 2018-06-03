unit greetingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, main, Data.FMTBcd,
  Data.DB, Data.SqlExpr, Data.DbxSqlite, CGuest, CShow, CSeat;

type
  TgreetingsForm = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
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

  main.Form1.Show();

end;


procedure TgreetingsForm.FormHide(Sender: TObject);
begin

  self.Show();

end;

end.
