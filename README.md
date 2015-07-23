# Omniauth::Ruffnote

[![Code Climate](https://codeclimate.com/github/ruffnote/omniauth-ruffnote/badges/gpa.svg)](https://codeclimate.com/github/ruffnote/omniauth-ruffnote)
[![Test Coverage](https://codeclimate.com/github/ruffnote/omniauth-ruffnote/badges/coverage.svg)](https://codeclimate.com/github/ruffnote/omniauth-ruffnote/coverage)

## API Document

https://ruffnote.net/apidoc

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-ruffnote', github: 'ruffnote/omniauth-ruffnote'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-ruffnote

## Example

Register application on https://ruffnote.net/oauth/applications/new.  
(Redirect URI: `http://localhost:PORT/auth/ruffnote/callback`)

```
$ cd example

# .env
RUFFNOTE_CLIENT_ID="ID"
RUFFNOTE_CLIENT_SECRET="SECRET"
RUFFNOTE_SITE="https://ruffnote.com/"

$ rails s -p PORT
$ open http://localhost:PORT/
```

## Acknowledgements

https://github.com/intridea/omniauth-github

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

