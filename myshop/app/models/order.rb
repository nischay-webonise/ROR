class Order < ActiveRecord::Base
  belongs_to :product
  validates_numericality_of :quantity
  validates :quantity, presence: true
  before_validation :checkquantity
  after_create :update_quantity

  def checkquantity
    puts quantity
      if quantity.present? && (product.quantity < quantity)
        errors.add(:order, 'order quantity should be less than product')
      elsif quantity == 0
        errors.add(:order, 'order quantity should not be zero')
      end
  end

  def update_quantity
    qty = quantity
    prod = product
    z = prod.quantity - qty
    prod.update(quantity: z)
  end
end
