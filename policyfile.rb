# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/chef/chef-dk/blob/master/POLICYFILE_README.md

name "taylordesktop"
default_source :supermarket
run_list "cygwin::default"

cookbook "cygwin", path: "." # Great for testing on workstation/mbp

default['cygwin']['packages'] = %w{ autoconf automake bzr cacertificates
chere cmake cmakedoc ctags cygutilsextra cyrussasl ddir dos2unix emacs
email exim gccg++ gettext gettextdevel m4 mosh mysql nc ncurses
openssldevel par2 patchutils perl_pods procps pythonsetuptools
rdiffbackup scons sqlite3 squid squid stow stow subversion
the_silver_searcher tmux tree vim xmlstarlet }
