# Onedrive

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/onedrive`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'onedrive'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install onedrive

## Usage

This version of Onedrive Ruby assumes you already have an OAuth token to play with.

First thing you'll need to do is instantiate a Onedrive::Client with the token:

```ruby
client = Onedrive::Client.new token: 'abcdef'
```

With that client, simply interact using the same concepts exposed via Onedrive's REST HTTP API:

```ruby
client.drive      # Returns the user's default `Drive`
client.drives     # Lists all available `Drives`
client.drive(id)  # Returns a specific `Drive` by its `id`
client.item(id)   # Returns an `Item` by its `id`
```

The previous methods from the client will return either `Drive` or `Item` objects (or an array of).
A `Drive` object can be traversed in depth by checking its content like this:

```ruby
drive = client.drive  # Returns default `Drive`
drive.children        # Returns the contents of `drive`
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/onedrive/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
