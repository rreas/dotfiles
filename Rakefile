Dir['./rake_helpers/*.rb'].each { |file| require file }

task default: 'dotfiles:update'
task bootstrap: [
  'dotfiles:encryption_check',
  'dotfiles:homebrew',
  'dotfiles:software'
]

namespace :dotfiles do
  task :encryption_check do
    FileEncryption.check
  end

  task :homebrew do
    Homebrew.setup
  end

  task :software do
    [Zsh, Vim, Tmux, Tmuxinator, Git].each(&:set_symlinks)
    [Zsh, Ruby, Vim].each(&:setup)
  end

  task :update do
    puts 'nyan nyan nyan ...'
    # Github.pull_master
    #
    # Homebrew.update
    #
    # Ruby.update
    #
    # Vim.update
  end
end
