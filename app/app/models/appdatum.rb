class Appdatum < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 4}
  validates :description, presence: true, length: { minimum: 4}
  validates :phone_number, presence: true, format: {with:/[0-9]+/, message: "only allows numbers"}, length: { minimum: 10}
  validates :address, presence: true, length: { minimum: 4}

  before_validation :foo

  protected

  def foo
    unless name.nil?
      self.name = name.capitalize unless name.blank?
    end
  end
end
