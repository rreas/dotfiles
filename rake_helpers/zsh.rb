class Zsh
  class << self
    def set_symlinks
      puts 'setting ZSH symlinks'
      `ln -s #{zsh_config} "$HOME/.zshrc"`
    end

    def setup
      puts 'Change shell to homebrew version'
      `chsh -s /usr/local/bin/zsh`
    end

    private

    def zsh_config
      "$HOME/.dotfiles/zsh/zshrc"
    end
  end
end
