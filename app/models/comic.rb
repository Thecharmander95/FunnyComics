class Comic < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }
  validates :decrpition, presence: true, length: { minimum: 7}
  validates :by, presence: true, length: { minimum: 3 }
  validates :number, presence: true, length: { minimum: 1 }

  has_one_attached :picture

end
