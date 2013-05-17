class Signature < ActiveRecord::Base

  validates :name, presence: true
  validates :signature, presence: true

end
