module Spsleep
  class Command
    class << self
      def run(options, argf)
        new.run(options, argf)
      end
    end

    def initialize
    end

    def run(options, argf)
      sleep_sec = options[0] ? options[0] : 1

      argf.each do |line|
        puts line
        sleep sleep_sec
      end
    end
  end
end
