# Horilka

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/horilka`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'horilka'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install horilka

## Usage

TODO: Write usage instructions here

## Example

```ruby
file = "/Users/biow0lf/Sisyphus/files/SRPMS/catpkt-1.0-alt5.src.rpm"
# => "/Users/biow0lf/Sisyphus/files/SRPMS/catpkt-1.0-alt5.src.rpm"
rpm = Horilka::Base.new(file)
# => #<Horilka::Base:0x007fd70ae0f1d0 @file="/Users/biow0lf/Sisyphus/files/SRPMS/catpkt-1.0-alt5.src.rpm", @command=#<Cocaine::CommandLine:0x007fd70ae0f0e0 @binary="rpm", @params="-qp --queryformat=%\\{:tag\\} :file", @options={}, @runner=#<Cocaine::CommandLine::ProcessRunner:0x007fd70ae0eca8>, @logger=nil, @swallow_stderr=nil, @expected_outcodes=[0], @environment={}, @runner_options={}>>
rpm.name
# => "catpkt"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/biow0lf/horilka.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

