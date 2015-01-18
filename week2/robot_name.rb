require "Pry"
#=========My code
# class Robot
#   attr_reader :name
#   def initilize
#     @name = nil
#     @mac = (0...4).map {rand(1000..9999).to_s}.join(':')
#   end

#   def name
#     if @name == nil
#       @name = ('A'..'Z').to_a.sample(2).join + (Random.rand(100..999)).to_s
#     else
#       @name
#     end
#   end

#   def reset
#     @name = nil
#   end

# end

#============The teacher's code
class Robot
  attr_reader  :instruction_count
  def initialize
  	@creation_time = @boot_time =Time.now
    @instruction_count = 0
    @name = alpha_prefix + numeric_suffix
    @mac = (0...4).map {rand(1000..9999).to_s}.join(':')
  end

  def reset
  	@boot_time = Time.now
    @instruction_count += 1
    @name = alpha_prefix + numeric_suffix
  end

  def name
    @instruction_count += 1
    @name
  end

  def timers
  	"#{(Time.now - @boot_time).round} seconds since last boot," +
  	 "#{(Time.now - @creation_time).round } seconds since creation"
  end

private

def alpha_prefix
  ('A'..'Z').to_a.sample(2).join
end

def numeric_suffix
  Random.rand(100..999).to_s
end

end

robot1 = Robot.new
robot2 = Robot.new
robot3 = Robot.new
binding.pry
