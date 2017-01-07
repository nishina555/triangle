# triangle
class Triangle
  def initialize(sides)
    @sides = sides.sort
  end

  def triangle_checker
    if @sides[0] + @sides[1] <= @sides[2]
      puts '三角形じゃないです＞＜'
    elsif @sides.all? { |side| side == @sides[0] }
      puts '正三角形ですね！'
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
      puts '二等辺三角形ですね！'
    else
      puts '不等辺三角形ですね！'
    end
  end
end

def main
  if ARGV.length != 3
    puts '引数は3つにしてください。'
    exit
  end
  if ARGV.include?('0')
    puts '0は入力しないでください。'
    exit
  end
  input = ARGV.map(&:to_i)
  triangle = Triangle.new(input)
  triangle.triangle_checker
end

main
