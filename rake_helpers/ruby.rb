class Ruby
  class << self
    # TODO: automate the updating of this constant
    RUBY_VERSION = '2.1.3'

    # Our philosophy is to always use the latest ruby we ensure the latest
    # ruby is used by sourcing `chruby ruby` in our ``~/.zshrc``
    def setup
      install_latest_ruby

      install_global_gems
    end
    alias_method :update, :setup

    private

    def install_latest_ruby
      puts 'installing latest ruby. WARNING this takes a while.'
      `ruby-install --no-reinstall ruby #{RUBY_VERSION}`
    end

    def use_latest_ruby
      puts 'using the latest ruby'
    end

    def install_global_gems
      puts 'installing global gems'

      `gem install bundler \
        gem-ctags \
        rubygems-bundler \
        rake \
        byebug \
        tmuxinator`
    end
  end
end
