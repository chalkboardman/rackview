class Unit < ActiveRecord::Base
  belongs_to :lab_rack
  validates :name, :presence => true, :uniqueness => true
  validates :u_location, :presence => true
  validates_numericality_of :u_location, :only_integer => true
  validates_inclusion_of :u_location, :in => 1..42
end
