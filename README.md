# Git::Info

Get Git information using system commands. 

## Installation

Add this line to your application's Gemfile:

    gem 'git-info'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install git-info

## Usage

`Git::Info.get_tags` - returns a hash of tags that the current ref is pointing to.

`Git::Info.get_ref` - returns a ref for the current working tree.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/git-info/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
