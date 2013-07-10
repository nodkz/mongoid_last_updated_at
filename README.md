# MongoidLastUpdatedAt

Gives collection last update time (if you use `updated_at` field).

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid_last_updated_at', github: "dmitrydims/mongoid_last_updated_at"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_last_updated_at

## Usage

```ruby
class Article
end

Article.last_modified # => (some date & time)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
