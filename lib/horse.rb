# frozen_string_literal: true

class Horse
  VERSION = '0.1.0'

  UPPER_LINE_CHAR = '-'
  BOTTOM_LINE_CHAR = '='
  TALK_LINE_CHAR = '/'

  class << self
    def say(text)
      text = interpolate_text(text.gsub(/[\n\t]/, ''))
      puts(text)
    end

    def interpolate_text(text)
      "
                                          #{UPPER_LINE_CHAR * text.length}
                                        < #{text} >
                                          #{BOTTOM_LINE_CHAR * text.length}
                                      #{TALK_LINE_CHAR}
                                     #{TALK_LINE_CHAR}
                                    #{TALK_LINE_CHAR}
#{self}
      "
    end

    def to_s
      @to_s ||= File.read('lib/horse.txt')
    end
  end
end
