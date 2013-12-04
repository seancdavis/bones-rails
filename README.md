# Bones for Rails

Bones for Rails packages the current build of [Bones CSS Framework](https://github.com/rocktreedesign/bones) 
and inserts applicable portions of it into the asset pipeline to help streamline the 
design of your application.

## Bones Documentation

A documentation website for Bones is in the works. For now, all documentation for the framework itself can be found 
[here](https://github.com/rocktreedesign/bones/tree/master/docs).

## Getting Started

Add this line to your application's Gemfile:

```ruby
gem 'bones-rails'
```

Install using:

```bash
$ bundle install
```

Or install it to your system:

```bash
$ gem install bones-rails
```

> If you prefer to have more control over Bones, I'd suggest checking out the [SCSS method of installation](https://github.com/rocktreedesign/bones/blob/master/docs/getting-started/installation.md). This installation of Bones is optimized for use in Ruby on Rails projects.

## Usage

We can add the necesasry files to the asset pipeline by running:

```bash
$ rails g bones:install
```

The installation generator performs a number of tasks you should be aware of:

### 1. application.scss

Bones requires that you use the `.scss` extension for your application stylesheet (your manifest file). If it detects anything other than `application.scss`, 
it will change the filename to `application.scss`

Once we're sure `application.scss` exists, the generator adds the following line to the top of your `application.scss` file:

```scss
@import 'bones/bones';
```

### 2. Controller

The controller (or manifest file) for Bones is `bones.scss`. This is where you configure which modules you'd like to load. First, we create a new directory: 
`app/assets/stylesheets/bones`. Then we place the new configuration file into this directory: `app/assets/stylesheets/bones/bones.scss`.

### 3. Bones Configuration Files

Last, we add all the configuration files to a new directory: `app/assets/stylesheets/bones/bones-config`.

In this directory is where you can configure Bones to your liking and see it change when you refresh your browser.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
