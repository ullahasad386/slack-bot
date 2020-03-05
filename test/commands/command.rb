require 'rss'
require 'open-uri'

module Test
  module Commands
    class Command < SlackRubyBot::Commands::Base
      command 'get_latest_article' do |client, data, _match|
        url = "https://medium.com/feed/@nashmia.habib"
        rss = RSS::Parser.parse(open(url), false).items.last
        client.say(channel: data.channel, text: rss.link)
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end
    end
  end
end

class HelloText
  def self.say_hello
    'Hi This is a Bot!'
  end
end