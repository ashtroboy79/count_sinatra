class Counter
  attr_reader :count, :time

  def initialize
    @count = 0
    @time = Time.new
  end

  def increment
    @count += 1
    update_time
  end

  def decrement
    @count -= 1
    update_time 
  end

  def reset
    @count = 0
    update_time
  end

  def update_time
    @time = Time.now
  end

  def self.instance
    @counter ||= Counter.new
  end

end
