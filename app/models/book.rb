class Book < ApplicationRecord

  validates :title, presence: true
  validates :body, presence: true,
                   length: {minimum: 1,maximum: 200}

  belongs_to :user



end

