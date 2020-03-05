module Test
  class Bot < SlackRubyBot::Bot
    help do
      title 'Asad Slack Bot'
      desc 'This is a bot'

      command :get_latest_article do
        title 'get_latest_article'
        desc 'Returns URL of the latest article'
        long_desc 'Returns URL of the latest article'
      end

      command :say_hello do
        title 'say_hello'
        desc 'Say Hello to bot'
        long_desc 'Say Hello to bot'
      end
    end
  end
end