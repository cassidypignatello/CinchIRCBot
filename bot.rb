#! /usr/bin/env ruby

require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.freenode.net'
    c.user = 'ruby005HelperBot'
    c.nick = 'ruby005HelperBot'
    c.realname = 'The ruby005 Helper Bot'
    c.channels = [ENV["CHANNEL"]]

  end
  
  on :message, "!hello" do |m|
    m.reply "Why hello there."
  end
end

bot.start