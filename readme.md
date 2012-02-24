# Sinatra-Heroku Template

#### _A template to quickly get [Sinatra](http://sinatrarb.com) apps running and served up on [Heroku](http://heroku.com)._

## Installation

First be sure to have Ruby installed. Then download this template, `cd` to it, and install the gems

    $ bundle install

To run the app locally, install Shotgun and run

		$ gem install shotgun
    $ shotgun config.ru

Your app should then be running at `http://localhost:9393`.

## Heroku App Creation

Heroku relies on [Git](http://devcenter.heroku.com/articles/git) for deploying apps so initialize git for the app.

    $ git init
    $ git add .
    $ git commit -m "Initial Commit"

To create a Heroku app, first be sure you are [signed up](https://api.heroku.com/signup). Then type the following in Terminal while inside of the project directory.

    $ heroku create NAME_OF_YOUR_APP

Once this returns successfully, push your app to Heroku.

    $ git push heroku master

And there you are.