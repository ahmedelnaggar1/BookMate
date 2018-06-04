//Author: Ahmed El-Naggar
//aelna0@eq.edu.au

unit CGuest;

interface

uses CSeat;

type TGuest = class 

    private

        name        : String;
        id          : Integer;
        phone_num   : Integer;
        ref_num     : Integer;
        seat        : TSeat;

    published

        constructor create(name : String; id : Integer);

        procedure set_name(name : String);
        procedure set_phone(number : Integer);
        procedure set_ref_num(ref_num : Integer);
        function  set_seat(seat : TSeat) : Boolean;
        function  change_seat(new_seat : TSeat) : Boolean;

        function get_seat()     : Integer;
        function get_name()     : String;
        function get_id()       : Integer;
        function get_phone()    : Integer;
        function get_ref_num () : Integer;

end;

implementation

function TGuest.get_name() : String;
begin

    Result := self.name;
  
end;

function TGuest.get_id() : Integer;
begin

    Result := self.id;

end;

function TGuest.get_seat() : Integer;
begin

    Result := self.seat.get_num();
  
end;

function TGuest.set_seat(seat : TSeat) : Boolean;
begin

    self.seat := seat;
    //Make the seat occupied
    seat.occupy(true);

    Result := true;
  
end;

function TGuest.change_seat(new_seat : TSeat) : Boolean;
begin
    // Unoccupy old seat
    self.seat.occupy(false);
    
    // Occupy new seat
    self.seat := new_seat;
    self.seat.occupy(true);
end;

function TGuest.get_phone() : Integer;
begin

    Result := self.phone_num;

end;

constructor TGuest.create(name: String; id: Integer);
begin

    self.name := name;
    self.id := id;
  
end;

procedure TGuest.set_name(name: String);
begin

    self.name := name;
  
end;

procedure TGuest.set_phone(number: Integer);
begin
  
    self.phone_num := number;

end;

procedure TGuest.set_ref_num(ref_num : Integer);
begin
    // Sets the reference number
    self.ref_num := ref_num;
end;

function TGuest.get_ref_num() : Integer;
begin
    // Gets ref num
    Result := self.ref_num;
end;

end.
