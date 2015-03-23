#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

require 'rubygems'

# railsrc_path = File.expand_path('~/.railsrc')
# if ( ENV['RAILS_ENV'] || defined? Rails ) && File.exist?( railsrc_path )
#   begin
#     load railsrc_path
#   rescue Exception
#     warn "Could not load: #{ railsrc_path }" # because of $!.message
#   end
# end
