class Robot
  DIRECTIONS = {
    north: {
      flow: 'up',
      axis: 'y'
    },

    east: {
      flow: 'up',
      axis: 'x'
    },

    south: {
      flow: 'down',
      axis: 'y'
    },

    west: {
      flow: 'down',
      axis: 'x'
    }
  }

  attr_reader :x, :y, :direction

  def initialize(x = 0, y = 0, direction = 'north')
    @x = x
    @y = y
    @direction = direction
  end

  def place(x, y, direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction.to_s if direction_keys.include?(direction.to_s)
  end

  def step_forward
    direction = DIRECTIONS[@direction.to_sym]
    axis_value = instance_variable_get("@#{direction[:axis]}")
    axis_value += (direction[:flow] === 'up') ? 1 : -1
    instance_variable_set("@#{direction[:axis]}", axis_value)
  end
  alias :move :step_forward

  def right
    new_direction = case @direction
      when 'north' then 'east'
      when 'east' then 'south'
      when 'south' then 'west'
      else puts "Currently set direction hasn't been recognised, sorry."
    end

    rotate(new_direction)
  end

  def left
    new_direction = case @direction
      when 'north' then 'west'
      when 'west' then 'south'
      when 'south' then 'east'
      else puts "Currently set direction hasn't been recognised, sorry."
    end

    rotate(new_direction)
  end

  def report
    puts "X: #{@x}, Y: #{@y}, F: #{@direction}."
  end

private

  def direction_keys
    DIRECTIONS.keys.map(&:to_s)
  end

  def rotate(direction)
    direction = direction.to_s

    if direction_keys.include?(direction)
      @direction = direction
    end
  end
end