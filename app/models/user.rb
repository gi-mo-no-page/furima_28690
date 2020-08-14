class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true
         validates :email, presence: true, uniqueness: true, format: {with: /\A(?=.*@).*\z/}
         validates :password, presence: true, confirmation: true, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]{6,}+\z/}
         validates :password_confirmation, presence: true
         validates :first_name, :family_name, presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]+\z/}
         validates :first_name_kana, :family_name_kana, presence: true, format: {with: /\A[ァ-ンー－]+\z/}
         validates :birth_date, presence: true

end

         