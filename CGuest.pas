{
   ____ ____                 _   
  / ___/ ___|_   _  ___  ___| |_ 
 | |  | |  _| | | |/ _ \/ __| __|
 | |__| |_| | |_| |  __/\__ \ |_ 
  \____\____|\__,_|\___||___/\__|

This class will handle everything related to a Guest.
This class shall be used by CShow.
                        
}

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

constructor TGuest.create(name: String; id: Integer);
begin
{
    Constructor of Guest
    Parameter:
      name (String): the name of the guest
      id  (Integer): the ID of the guest
}

    self.name := name;
    self.id := id;
  
end;

function TGuest.get_name() : String;
begin
{
    Retrieves the name of the Guest
    Return:
        name (String): name of Guest
}
    Result := self.name;
  
end;

function TGuest.get_id() : Integer;
begin
{
    Retrieves the ID of Guest
    Return:
        result (Integer): ID of guest
}

    Result := self.id;

end;

function TGuest.get_seat() : Integer;
begin
{
    Retrieves the ID of the seat occupied by Guest
    Return:
        result (Boolean): ID seat
}

    Result := self.seat.get_num();
  
end;

function TGuest.set_seat(seat : TSeat) : Boolean;
begin
{
    Sets the Seat of Guest
    Parameter:
      seat (TSeat): an instance of TSeat
    Return:
        result (Boolean): whether the operation was successful or not
}
    self.seat := seat;
    //Make the seat occupied
    seat.occupy(true);

    Result := true;
  
end;

function TGuest.change_seat(new_seat : TSeat) : Boolean;
begin
{
    Changes the Seat of Guest
    Parameter:
      new_seat (TSeat): the new seat, an instance of TSeat
    Return:
        result (Boolean): whether the operation was succesful or not
}
    // Unoccupy old seat
    self.seat.occupy(false);
    
    // Occupy new seat
    self.seat := new_seat;
    self.seat.occupy(true);
end;

function TGuest.get_phone() : Integer;
begin
{
    Retrieves the phone number of Guest
    Return:
        result (Integer): phone number
}

    Result := self.phone_num;

end;

procedure TGuest.set_name(name: String);
begin
{
    Sets the name of Guest
    Parameter:
      name (String): the name
}

    self.name := name;
  
end;

procedure TGuest.set_phone(number: Integer);
begin
{
    Sets the phone number of Guest
    Parameter:
      number (Integer): phone number
}
  
    self.phone_num := number;

end;

procedure TGuest.set_ref_num(ref_num : Integer);
begin
{
    Sets the Guest's booking reference number
    Parameter:
      ref_num (Integer): reference number
}

    self.ref_num := ref_num;
end;

function TGuest.get_ref_num() : Integer;
begin
{
    Retrieves Guest's booking reference number
    Return:
        result (Integer): the reference number
}

    Result := self.ref_num;
end;

end.
