require 'grades'
describe 'grade counter' do

  it 'can count the number of each type of grade' do
    results = Grade.new
    results.grade_counter("Green, Green, Amber, Red, Green")
    expect(results.number_green).to eq 3
    expect(results.number_amber).to eq 1
    expect(results.number_red).to eq 1
  end

  it 'can return the number of each type of grade' do
    results = Grade.new
    output = results.grade_counter("Green, Green, Amber, Red, Green")
    expect(output).to eq("Green: 3\nAmber: 1\nRed: 1")
  end

end
