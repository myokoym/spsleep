module Spsleep
  class Command
    class << self
      def run(options)
        new.run(options)
      end
    end

    def initialize
    end

    def run(options)
      sleep_sec = options[0] ? options[0] : 1

      ARGF.each do |line|
        puts line
        sleep sleep_sec
      end
    end
  end
end
