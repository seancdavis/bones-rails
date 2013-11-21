# Bones for Rails

Bones for Rails packages up the current build of Bones CSS Framework and inserts it into the asset pipeline to help streamline the design of your application.

## WARNING

Please note that Bones is still undergoing a rewrite, and Bones for Rails follows right behind it. Bones will be documented after the rewrite is complete.

## Getting Started

Add this line to your application's Gemfile:

    gem 'bones-rails'

Install using:

    $ bundle install

Or install it to your system:

    $ gem install bones-rails

## Usage

We can add the necesasry files to the asset pipeline by running:

    $ rails g bones:install

The installation generator performs two tasks:

### 1. Manifest File

It adds the following line to the top of your `application.scss` file:

    @import 'bones';

Note: this requires your application stylesheet to use the sass file extension -- `.scss`.

### 2. Configuration File

The generator also creates a file: `app/assets/stylesheets/bones_config.scss`. This file comes equipped with all the variables available in the Bones framework.

This file is loaded from the Bones manifest file. Therefore, it must remain in the exact location with the same filename.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
