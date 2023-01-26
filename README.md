# ValidatesRfc

This projects aims to validate RFC documents (Registro Federal de Contibuyentes).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'validates_rfc'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install validates_rfc

## Usage

Just use as any other validator:

```ruby
class User < ActiveRecord::Base
  validates :rfc, rfc: true
  validates :company_rfc, rfc: { type: :company }
  validates :person_rfc, rfc: { type: :person }
end
```

## Testing

Require the matcher:

```ruby
require 'validates_rfc/require_a_valid_rfc_matcher'
```

Use in your tests:

```ruby
it { is_expected.to require_a_valid_rfc } # It will test the attribute :rfc by default
it { is_expected.to require_a_valid_rfc(:id) } # It will accept both person and company RFC's
it { is_expected.to require_a_valid_rfc(:id).for_company } # It will accept only company RFC's
it { is_expected.to require_a_valid_rfc(:id).for_person } # It will accept only person RFC's
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/plribeiro3000/validates_rfc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/plribeiro3000/validates_rfc/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ValidatesRfc project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/plribeiro3000/validates_rfc/blob/master/CODE_OF_CONDUCT.md).
