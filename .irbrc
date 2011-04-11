require 'rubygems'
#require 'utility_belt'
require 'irb/completion'
IRB.conf[:AUTO_INDENT] = true

if ENV['RAILS_ENV']
	load "#{ENV['HOME']}/.railsrc"
end
