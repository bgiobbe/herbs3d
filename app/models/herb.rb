class Herb < ActiveRecord::Base
  MIN = -3
  NEUTRAL = 0
  MAX = 3
  has_and_belongs_to_many :foundational_actions
  has_and_belongs_to_many :affinities
  has_and_belongs_to_many :clinicial_actions
  validates :common_name, presence: true
  # There may be good reasons to include an herb more than once
  # with different energetics.
  validates :heat_cool, :relax_tone, :moisten_dry, numericality: {
      only_integer: true,
      greater_than_or_equal_to: MIN,
      less_than_or_equal_to: MAX
  }
  after_initialize :init_energetics

  def heat_cool_s
    energetic_s self.heat_cool, 'cooling', 'heating'
  end

  def relax_tone_s
    energetic_s self.relax_tone, 'toning', 'relaxing'
  end

  def moisten_dry_s
    energetic_s self.moisten_dry, 'drying', 'moistening'
  end

  private

    def init_energetics
      self.heat_cool = self.relax_tone = self.moisten_dry = 0
    end

    DEGREE = [ 'mildly', 'moderately', 'strongly' ]

    def energetic_s(value, lower_range_property, upper_range_property)
      case value
      when MIN..NEUTRAL-1
        DEGREE[NEUTRAL - value] + lower_range_property
      when NEUTRAL
        'neutral'
      when NEUTRAL+1..MAX
        DEGREE[value - NEUTRAL] + upper_range_property
      else
        raise RangeError, "#{value} is out of range for energetic property"
      end
    end
end
