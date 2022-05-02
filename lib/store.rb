class Store < ActiveRecord::Base
  has_many :employees
  
  validates_presence_of :name, :annual_revenue
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :carry_apparel

  def carry_apparel
    if womens_apparel == false && mens_apparel == false
      errors.add(:womens_apparel, "store must carry one or more")
      errors.add(:mens_apparel, "store must carry one or more")
    end
  end

end
