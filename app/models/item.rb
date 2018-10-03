class Item < ApplicationRecord

  validates :name,  presence: true, length: { maximum: 100 }
  validates :code, presence: true, length: { maximum: 50 }
  
end
