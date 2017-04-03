class Article < ApplicationRecord
  def self.order_by_date
    order(:datetime)
  end
end
