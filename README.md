# ‖ HeroHub ‖ In dire need for supernatural powers? Book a day with your favorite SuperHero. 🦸🏻‍♂️ 

_HeroHub is a computer-first web app where users can book a superhero for a day. The project is a C2C platform working like an AirBnB website, where users can book a service, and owners(superheroes) can either choose to accept or decline the booking._

#### Visitors can:
- land on the homepage, to learn more about HeroHub services
- view a list of the superheroes who are offering their services, with each card giving a short description of the service
- choose a superhero and see more details about it

#### After signing up / logging in, users can book a superhero of his choice:
- They enter a date and write a comment as to explain the purpose of the booking
- The booking is then pending, waiting for the superhero to confirm or decline the booking
- The dashboard lets users see and manage their previous / pending / and coming bookings

#### After signing up / logging in, superheroes can access their "I am a Superhero" menu:
- They can create a page to offer their services, giving a picture and detailed information such as race, powers and price
- They can visualize their own service page
- They have their own dashboard to confirm bookings, showing previous and coming bookings, too
- Superheroes can also be users and therefore book the services of another superhero 

#### Screenshots:
<img width="500" alt="homepage" src="https://github.com/missdaji/herohub/blob/master/app/assets/images/homepage.jpg"> <img width="500" alt="list-view" src="https://github.com/missdaji/herohub/blob/master/app/assets/images/list.jpg"> <img width="500" alt="show-one" src="https://github.com/missdaji/herohub/blob/master/app/assets/images/hero-page.jpg"> <img width="500" alt="booking-user" src="https://github.com/missdaji/herohub/blob/master/app/assets/images/booking-user.jpg"><img width="500" alt="booking-hero" src="https://github.com/missdaji/herohub/blob/master/app/assets/images/booking-hero.jpg">

#### Create your own account and explore the app: 
https://herohub-tokyo-b8670f0c5306.herokuapp.com
   
## Getting Started
### Setup

Install gems
```
bundle install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling

## Acknowledgements
Inspired by the characters from the Marvel and DC Comics universes.

## Team Members
- [Stéphanie DI DINO](https://www.linkedin.com/in/ssdidino/) - Lead Developer
- [Julien LESUEUR](https://www.linkedin.com/in/julien-lesueur/) - Project Manager
- [Chris BOURGEONNIER](https://www.linkedin.com/in/chrisbourgeonnier/) - Fullstack Developer
- [Jonatan JAKOBSSON](https://www.linkedin.com/in/jonatan--jakobsson/) - Fullstack Developer
