# CheckInObjects

Rails plugin that do check-in/check-out of models of ActiveRecord.

[![Build Status](https://travis-ci.org/armando1339/check_in_objects.svg?branch=master)](https://travis-ci.org/armando1339/check_in_objects) [![Coverage Status](https://coveralls.io/repos/github/armando1339/check_in_objects/badge.svg?branch=feature/adding_travisci)](https://coveralls.io/github/armando1339/check_in_objects?branch=feature/adding_travisci)

## Usage

Add the `#acts_as_object_checkable` in the ActiveRecord models that want they have the functionality.
The method will add associations with the Attendance and Entry models where Entry inherits from Attendace. The association will give you access to the ActiveRecord relationship method

Example:

```ruby
class User < ActiveRecord::Base
  acts_as_object_checkable
end

# Then:

user = User.new
user.attendances.build_attendance
user.entries.build_entry

# for exit

entry = user.entries.last
entry.create_exit
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'check_in_objects'
```

And then execute:

```bash
$ bundle install
```

In the root directory:

```bash
$ rails generate check_in_objects
```

## Contributing

Bug report or pull request are welcome.

Make a pull request:

- Clone the repo
- Create your feature branch
- Commit your changes
- Push the branch
- Create new Pull-Request

Please write tests if necessary.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
