# Viagogo Tech Test

### What is it?

A small ruby program that given an X and Y co-ordinate, returns the 5 nearest venues, the cheapest priced ticket and distance.

### The challenge

* My program should randomly generate seed data.
* My program should operate in a world that ranges from -10 to +10 (Y axis), and -10 to +10 (X axis).
* My program should assume that each co-ordinate can hold a maximum of one event.
* Each event has a unique numeric identifier (e.g. 1, 2, 3).
* Each event has zero or more tickets.
* Each ticket has a non-zero price, expressed in US Dollars.
* The distance between two points should be computed as the Manhattan distance.

### My Approach

Looking at the above requirements I decided I needed a ticket, event, seeder and an interface class. Through construction of the app I realised I also needed a grid, distance and distance sorter.

The grid class generates a two dimensional array of all possible coordinates. The seed class then randomly destructively selects a set amount of references. A set amount of events are created, being fed the previously generated coordinates. A random amount of tickets are also created for that event, also with a random price.

The interface class controls the whole program using the distance class to calculate the distance between the users coordinates, and that of the event, using the Manhattan Distance. All events are stored in a hash with their distance from user, and sorted by proximity using the distance sorter class.

All files are required in app.rb, interface instantiated and necessary functions run.

My tests need improvement as no stubbing is done. I instead used them to get visibility to help identify what data structures I was dealing with.

The program itself is easy to alter to accommodate for larger grids, however, the program runs very slow if a massive grid is used. Scaling here wouldn't be an issue as it is unlikely data would be seeded randomly, however, if it was the grid class would need to be altered.

Dealing with multiple events at the same coordinates is also easily dealt with. If the data was randomly seeded, then the method of picking coordinates would be changed from destructive to selective. If it was manually entered, then it wouldn't be a problem.

### Installation

Open up terminal, change to the directory you want the repo and type ```git clone https://github.com/w-schwier/viagogo```

Change into the directory ```cd viagogo```

Install required gems by running ```bundle install``` If you don't already have bundle installed run ```brew install bundle```(this assumes you have homebrew installed)

To run the app enter: ``` ruby ./lib/app.rb ```

### User Stories

As a music enthusiast, so they I can conveniently go to a gig, I want to a list of the nearest gigs with ticket prices.

### Challenges

I had trouble with doubling and stubbing, however, I also feel with a bit more time I would of got there.
