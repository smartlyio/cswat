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

`CSWat` is basically a fork of Ruby masters branch CSV library, renamed to
`CSWat` to avoid clashes. Use is as you would use `CSV`, with addition to a few
added options to relax some csv restrictions around the standards. For now there
are a few new options:

+ `nonstandard_quote` which is a boolean value determinig if it should try to
  handle non-standard quoting style of PHP standard library csv implementation.
  Look at the [tests] for more information.
+ `graceful_errors` which overrides default behaviour of raising MalformedCSV
  exceptions and instead returns them as rows.
+ `accept_backslash_escape` which causes the parser to accept escaping of quote
  character with a backslash (e.g. `\"`) the same as standard double-quote
  escaping (e.g. `""`).
+ `liberal_parsing` which accepts partially quoted column values, e.g. see
  [liberal parsing test] for concrete examples.

Additionally CSWat provides a niftly small executable (`cswat`, obviously) which
reads from `ARGF` and prints each row it parsed with `p` so you can see how
CSWat sees your local file.

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
[tests]: https://github.com/smartlyio/cswat/blob/master/test/test_features.rb
[liberal parsing test]: https://github.com/smartlyio/cswat/blob/master/test/test_features.rb#L127
