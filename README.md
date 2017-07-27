# Vtex

Vtex API client ruby implementation

[![Build Status](https://travis-ci.org/mumoc/vtex.svg?branch=master)](https://travis-ci.org/mumoc/vtex)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vtex'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vtex


## Usage

You'll need to gatter the following information from your VTex account

- **X-VTEX-API-AppKey**

	Email from a user with access to the API.

- **X-VTEX-API-AppToken**

	VTEXId password of the user with access to the API.

- **Account name**

	VTex account name.

- **Environment**:
	- Use `vtexcommercestable` for production
	- Use `vtexcommmercebeta` for tests

*Note: It's recommended that you create an specific user to access the API ([vtex-auth](http://help.vtex.com/en/faq/how-do-you-authenticate-in-the-api))*


With all the information retrieve a client instance with it.

```ruby
client = Vtex::Client.new({ account_name: "demo",
                            environment: "vtexcommercebeta",
                            app_key: "api.user@email.com",
                            app_token: "VTEXIdPassword" })
```

## Design

VTex follows a design of resources as methods on the client. For example, for Products, you will call your client like this:

```ruby
client = Vtex::Client.new({ ... })
client.products #=> ProductsResource

```

VTex will return PORO objects that contain the information provided by the API. For example:

```ruby
client.products.by_id(id: 1)
# => Vtex::Product (Id:1, Name: "Guarda-Roupa Casal Lisboa 10 Portas 3 Gavetas - Araplac", ...)
```

*Note: Right now, Key Values are being used as they come from the API*

# All Resources and actions.

All resources, methods and properties are direct matches from the [VTex API](http://help.vtex.com/en/developer-docs)

## Products resource

Vtex API: [Catalog System - Product](https://documenter.getpostman.com/view/845/catalogsystem-102/Hs44#ee16e494-d3b0-36f0-cfed-219aef3f155e)

**Usage:**

```ruby
client = Vtex::Client.new({ ... })
client.products #=> ProductsResource
```

**Actions supported:**

* `client.products.by_id(id: 'id')`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mumoc/vtex. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Vtex project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mumoc/vtex/blob/master/CODE_OF_CONDUCT.md).
