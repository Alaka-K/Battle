require 'health'

describe Health do
  it 'decreases hitpoints' do
    subject = Health.new
    subject.decrease
    expect(subject.points).to eq(90)
  end
end
