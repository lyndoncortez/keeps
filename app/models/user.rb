class User < ApplicationRecord
  has_many :categories
  has_one_attached :avatar
  after_commit :avatar, on: %i[create update]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
