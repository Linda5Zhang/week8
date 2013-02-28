class Reservation < ActiveRecord::Base
  attr_accessible :credit_card, :flight_id, :user_id

  validates_presence_of :flight_id
  validates_presence_of :user_id
  validates_presence_of :credit_card

  belongs_to :flight
  belongs_to :user

  before_validation :sanitize_card_number

  def sanitize_card_number
    self.credit_card = self.credit_card.gsub('-','')
  end

  validate :require_visa_card

  def require_visa_card
    unless self.credit_card.starts_with?("4") && self.credit_card.length == 16
      errors.add(:credit_card, "must be a Visa card")
    end
  end

end
