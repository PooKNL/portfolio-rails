class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :bio, presence: true

  def self.order_by_date
    order(:datetime)
  end
end
