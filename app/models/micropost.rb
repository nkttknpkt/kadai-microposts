class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites　 #foreign_key: 'micropost_id'はいらない?

  
  validates :content, presence: true, length: { maximum: 255 }
end
