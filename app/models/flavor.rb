class Flavor < ActiveRecord::Base
  has_many :herbs
  validates :name, presence: true, uniqueness:  { case_sensitive: false }
end
