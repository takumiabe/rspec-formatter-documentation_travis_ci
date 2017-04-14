# Rspec::Formatter::DocumentationTravisCI

add the Travis-CI folding tag for RSpec built-in formatter Documentation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-formatter-documentation_travis_ci'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-formatter-documentation_travis_ci

## Usage

Specify formatter in command line options

    bundle exec rspec --format RSpec::Formatter::DocumentationTravisCIFormatter ...

Or write .rspec it.

```text:.rspec
--format pec::Formatter::DocumentationTravisCIFormatter
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takumiabe/rspec-formatter-documentation_travis_ci.
