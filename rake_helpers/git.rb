class Git
  class << self
    def set_symlinks
      `ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig`
      `ln -s ~/.dotfiles/git/gitignore ~/.gitignore`
    end

    def pull_from_origin_master
      `git checkout master && git pull master`
    end
    alias_method :pull_master, :pull_from_origin_master

    def pull_and_rebase_from_upstream
      # TODO
    end
    alias_method :pull_upstream, :pull_and_rebase_from_upstream
  end
end
