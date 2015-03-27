# RailsSchool Starter App

This is provided as a quick way to get up and running with rails. In
the future, you'll probably want to explore `rails new` and setup your
favorite gem dependencies in the `Gemfile`.

## Pre-Requisites

We're assuming that you have ruby installed. If you don't have it
installed on your machine, see
[How Should I prepare for my first Ruby lesson?](https://www.railsschool.org/faq#How_should_I_prepare_for_my_first_Ruby_lesson)

You can also create a free [nitrous.io](https://www.nitrous.io/)
instance and follow these same instructions. The only difference is
that you won't be going to _localhost_ to view the site, but rather
you'll have to click _Preview_ and choose to share on port 3000.

## Setting Up

### Getting the codebase

#### With Git

If you've set up [git](http://git-scm.com/), then simply clone the
repository:

```bash
bash$ git clone https://github.com/rails-school/starter.git
```

#### Without Git

If you haven't setup git, or don't know what that is, you can
[download the sample app zip file](https://github.com/rails-school/sample/archive/master.zip)
and then unzip it into a place that will be easy to get to (like your
home directory, or a subdirectory off of your home directory).

### Running for the first time

1. Open up a terminal and navigate to where you installed the
codebase. For example,

    ```bash
    bash$ cd ~/sample
    ```

1. Install all the dependencies listed in the `Gemfile`

    ```bash
    bash$ bundle install
    ```

1. Create the initial database

    ```bash
    bash$ rake db:create
    bash$ rake db:migrate
    ```

1. Launch the server

    ```bash
    bash$ rails server
    ```

1. If everything went well, navigate to [localhost:3000](http://localhost:3000)
