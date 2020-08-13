class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true
         validates :email, presence: true, uniqueness: true, inclusion: { in: ["@"] }
         validates :password, presence: true, confirmation: true, format: {with: /[a-z\d]{6,}/}
         validates :password_confirmation, presence: true
         validates :first_name, :family_name, presence: true, format: {with: /\A[あ-んア-ン一-龥]/}
         validates :first_name_kana, :family_name_kana, presence: true, format: {with: /\A[ア-ン]+\z/}
         validates :birth_date, presence: true

end

         