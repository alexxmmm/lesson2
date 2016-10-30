require 'yaml'
class Ball
  ANSWERS = YAML.load_file(File.join(__dir__, 'answers.yml'))

  def shake
    random_answer
    what_color_code
    colorize
    @answer
  end

  def random_answer
    @answer = ANSWERS.sample
  end

  def colorize
    puts "\e[#{@color_code}m#{@answer}\e[0m"
  end

  def what_color_code
    i = ANSWERS.index(@answer)

    if i.between?(0, 4)
      @color_code = 31
    elsif i.between?(5, 9)
      @color_code = 32
    elsif i.between?(10, 14)
      @color_code = 33
    elsif i.between?(15, 19)
      @color_code = 34
    end
  end
end
