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
    bookTicketBtn: TButton;
    changeBookingBtn: TButton;
    procedure bookTicketBtnClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure changeBookingBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  greetingsForm: TgreetingsForm;

implementation

{$R *.dfm}

procedure TgreetingsForm.bookTicketBtnClick(Sender: TObject);
begin

  if(main.bookingForm.Visible) then
    main.bookingForm.Hide();

  globalVars.SelectionType := 0;
  main.bookingForm.Show();

end;


procedure TgreetingsForm.changeBookingBtnClick(Sender: TObject);
var input : String;
begin

  while(InputQuery('Reference Number', 'Please enter in your booking reference number:', input)) do
  begin
    if TryStrToInt(input, globalVars.ref_num) then
    begin

      globalVars.change_booking_query.SQL.Text := 'SELECT guests.name, guests.phone_num, bookings.seat, guests.id FROM guests JOIN bookings ON bookings.guest = guests.id WHERE bookings.ref_num = '+ IntToStr(globalVars.ref_num) + ' AND bookings.active=1 ORDER BY guests.id ASC';
      globalVars.change_booking_query.Active := true;
      if not globalVars.change_booking_query.IsEmpty then
      begin

        if(main.bookingForm.Visible) then
        main.bookingForm.Hide();

        globalVars.SelectionType := 1;

        main.bookingForm.Show();
        exit();

      end
      else
      begin
        showmessage('Booking not found!');
      end;
    end
    else
      showmessage('Please enter in a valid booking number');
  end;
end;

procedure TgreetingsForm.FormCreate(Sender: TObject);
begin
  globalVars.main_connection := TSQLConnection.Create(self);
  globalVars.main_query      := TSQLQuery.Create(self);
  globalVars.change_booking_query := TSQLQuery.Create(self);

  // Connect to Database
  globalVars.main_connection.DriverName := 'sqlite';
  globalVars.main_connection.Params.Add('Database=main.db');
  try
    globalVars.main_connection.Connected := true;
    // Succesfully connected to database
    globalVars.main_query.SQLConnection := globalVars.main_connection;
    globalVars.change_booking_query.SQLConnection := globalVars.main_connection;
  except
  begin
    showmessage('ERROR: Couldn''t connect to database. Make sure that main.db exists');
     // Disable buttons
    bookTicketBtn.Enabled := False;
    changeBookingBtn.Enabled := False;
  end;

  end;
end;

procedure TgreetingsForm.FormDestroy(Sender: TObject);
begin
// Disconnect from database
  globalVars.main_connection.Close();
end;

procedure TgreetingsForm.FormHide(Sender: TObject);
begin

  self.Show();

end;

end.
