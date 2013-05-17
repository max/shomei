class Signature < ActiveRecord::Base
  validates :name, presence: true
  validates :signature, presence: true

  def signature=(signature)
    self[:signature] = signature.to_json
  end
end
