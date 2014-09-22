class Zsh
  class << self
    def set_symlinks
      puts 'setting ZSH symlinks'
      `ln -s #{zsh_config} "$HOME/.zshrc"`
      `ln -s #{zshenv_config} "$HOME/.zshenv"`
    end

    def setup
      puts 'installing Oh-My-Zsh'
      `git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`
    end

    private

    def zsh_config
      "$HOME/.dotfiles/zsh/zshrc"
    end

    def zshenv_config
      "$HOME/.dotfiles/zsh/zshenv"
    end
  end
end
