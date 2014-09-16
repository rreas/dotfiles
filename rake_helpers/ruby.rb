class Ruby
  class << self
    RUBY_VERSION = '2.1.2'

    # Our philosophy is to always use the latest ruby
    def setup
      install_latest_ruby

      use_latest_ruby

      install_global_gems
    end
    alias_method :update, :setup

    private

    def install_latest_ruby
      puts 'installing latest ruby. WARNING this takes a while.'
      `ruby-install ruby #{RUBY_VERSION}`
    end

    def use_latest_ruby
      `chruby ruby-#{RUBY_VERSION}`
    end

    def install_global_gems
      `gem install bundler \
        gem-ctags \
        rubygems-bundler \
        rake \
        tmuxinator`
    end
  end
end
