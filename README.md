# CSWat

For when you have to parse streaming CSV that doesn't make any sense whatsoever.

This is basically a gemified version of [Ruby CSV parser][stdlibcsv] with some
minor modifications to support more non-standard variants, so all the kudos goes
to [James Edward Gray II][jeg2].

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cswat'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cswat

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to [rubygems.org].

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/smartlyio/cswat. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant] code of conduct.


## License

The gem is available as open source under the terms of the [MIT License].

[rubygems.org]: https://rubygems.org
[MIT License]: http://opensource.org/licenses/MIT
[Contributor Covenant]: http://contributor-covenant.org
[stdlibcsv]: https://github.com/ruby/ruby/blob/trunk/lib/csv.rb
[jeg2]: https://twitter.com/jeg2
