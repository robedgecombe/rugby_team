class Player < ActiveRecord::Base
  belongs_to :team
  validates :name, presence: true
  validates :position, presence: true
  # validates :team, presence: true

end
