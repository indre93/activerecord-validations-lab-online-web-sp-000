class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, uniqueness: true, length: { is: 10 }
end
