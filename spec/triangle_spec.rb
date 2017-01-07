require File.expand_path(File.dirname(__FILE__) + '/../triangle')
describe Triangle do
  it 'scalene triangle' do
    triangle = Triangle.new([2, 3, 4])
    expect(triangle.triangle_checker).to eq '不等辺三角形ですね！'
  end
  it 'isosceles triangle' do
    triangle = Triangle.new([2, 2, 1])
    expect(triangle.triangle_checker).to eq '二等辺三角形ですね！'
  end
  it 'equilateral triangle' do
    triangle = Triangle.new([1, 1, 1])
    expect(triangle.triangle_checker).to eq '正三角形ですね！'
  end
  it 'not triangle' do
    triangle = Triangle.new([1, 2, 3])
    expect(triangle.triangle_checker).to eq '三角形じゃないです＞＜'
  end
end
