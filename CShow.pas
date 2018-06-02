//CShow class
//This class will handle everything related to a show
//A show contains seats and has guests

//Author: Ahmed El-Naggar
//aelna0@eq.edu.au

unit CShow;

interface

uses CSeat, 
     CGuest,
     System.Generics.Collections, // TObjectList
     Vcl.Forms,
     Vcl.ExtCtrls; //TShape
  

type
  TShow = class

  private
    id        : Integer;
    seats     : TObjectList<CSeat.TSeat>;  // Seats, instances of CSeat

    gfx_seats : TObjectList<TShape>; // The actual viewable seats

    seat      : CSeat.TSeat;
    num_seats : Integer; //Number of seats in the show
    guests    : TObjectList<CGuest.TGuest>; // Guests, instances of Guests

    name      : String; // Name of the show

  published

    constructor create(name : String);

    function add_guest(guest   : CGuest.TGuest)              : Boolean;
    function add_guests(guests : TObjectList<CGuest.TGuest>) : Boolean;
    function add_seat(seat   : CSeat.TSeat)                  : Boolean;
    function add_seats(seats : TObjectList<CSeat.TSeat>)     : Boolean;

    function get_seats()                                     : TObjectList<TSeat>;

end;

implementation

constructor TShow.create(name : String);
begin
  self.name := name;

  self.seats      := TObjectList<CSeat.TSeat>.Create();
  self.guests     := TObjectList<CGuest.TGuest>.Create();

  self.gfx_seats  := TObjectList<TShape>.Create();

end;

function TShow.add_guest(guest : CGuest.TGuest) : Boolean;
begin

  //Assign the user his/her seat
  //Make sure that seats are made first

  self.guests.Add(guest);

  guest.set_seat(self.seats[guest.get_seat()]);

  Result := true;
end;
function TShow.add_guests(guests : TObjectList<CGuest.TGuest>) : Boolean;
begin

  Result := true;
end;

function TShow.add_seat(seat : CSeat.TSeat) : Boolean;
begin
  
  self.seats.Add(seat);
  Result := true;
end;

//Adds seats to show
//Parameters:
// seats (array of TSeat instances)
function TShow.add_seats(seats : TObjectList<CSeat.TSeat>) : Boolean;
begin
  
end;

function TShow.get_seats() : TObjectList<CSeat.TSeat>;
begin
  Result := self.seats;
end;

end.
