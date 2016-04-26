class Product < ActiveRecord::Base
  has_many :orders,
              dependent: :destroy

  validates :name, presence: true, length: { minimum: 4}
  validates :info, presence: true, length: { minimum: 4}
  validates :price, presence: true, format: {with:/[0-9]+/, message: "only allows numbers"}, length: { minimum: 1}
  validates :quantity, presence: true, format: {with:/[0-9]+/, message: "only allows numbers"}, length: { minimum: 1}


end
