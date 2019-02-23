# BookMate

BookMate is an application developed as a piece of assessment and aims to digitalise the booking of tickets for a fashion show.

**Submission Date: 12/06/2018**

## Installation & Usage

Download the latest release here.

### Booking Tickets

1. Start the application
2. Click the "Book a ticket" button:

	![Link Text](https://i.imgur.com/sNfRSzS.png)
  
3. Hover your mouse over the desired seat, then click it:

	![Link Text](https://i.imgur.com/cGmV9fo.png)
 
4. After selecting a seat, you must give details of the guest such as name and phone number:

	![Link Text](https://i.imgur.com/ttWH8L4.png)
  
	![Link Text](https://i.imgur.com/88JIgRu.png)
  
5. After entering the details of the guest, click on "Add ticket":

	![Link Text](https://i.imgur.com/EXzt5X2.png)

**Please note that you may book more than one ticket per session by repeating steps 2-3.**

**You can remove a guest by right clicking on his/her entry in the list.**
### Modify Booking

To be written...

## Design
### Application: An Object-oriented Based Approach

The design approach used for this application is a modular based design. 
This means that the program will utilise classes to achieve the required results. 
The design logic shall be as follows: a show contains seats and guests. Thus, there will be classes called show, seat, and guest. 
Then, all of these classes will be shown to the user via another module called Render, which shall take all of this information and generate a demo stage showing all of the seats.
All of these classes will make up what is known as the “Interactive module”:

 ![Link Text](https://i.imgur.com/2GWx81p.png)
 
 ### Database
 
 The program uses SQLite to save the data into a database named “main.db”.
 The database will contain three tables: bookings, shows and guests:
 
 
 ![Link Text](https://i.imgur.com/F3lXFW5.png)
 
 ### Overview
 
 ![Link Text](https://i.imgur.com/SvSIFQ2.png)

## License
[MIT](https://choosealicense.com/licenses/mit/)
