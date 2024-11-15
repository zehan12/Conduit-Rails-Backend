class User < ApplicationRecord
  # Include default devise modules. Others available are:
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :articles, foreign_key: "author_id"
  has_many :comments, foreign_key: :author_id, dependent: :destroy
end
