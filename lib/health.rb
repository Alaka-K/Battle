class Health
  attr_reader :points

  def initialize
    @points = 100
  end

  def decrease
    @points -= 10
  end

  def self.instance
    @health ||= Health.new
  end
end