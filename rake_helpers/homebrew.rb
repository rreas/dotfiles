class Homebrew
  class << self
    def setup
      install_or_update_homebrew

      install_packages
    end

    def update
      puts 'Updating Homebrew'

      `brew update && brew upgrade`
    end

    private

    def install_or_update_homebrew
      puts 'Installing or updating homebrew'

      exists? ? update : install
    end

    def exists?
      File.exist?('/usr/local/bin/brew')
    end

    def install
      puts 'Installing homebrew'

      `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    end

    def install_packages
      puts 'Installing packages'

      `brew install \
      phantomjs \
      reattach-to-user-namespace \
      the_silver_searcher \
      tmux \
      wget \
      git \
      go \
      leiningen \
      openssl \
      postgresql \
      chruby \
      ruby-build \
      node \
      zsh \
      ruby-install \
      vim \
      wemux \
      ctags
      `
    end
  end
end
