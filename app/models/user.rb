class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :comments
         has_many :items
         has_many :purchases

         with_options presence: true do
          validates :nickname
          validates :email,uniqueness: true, format: {with: /\A(?=.*@).*\z/}
          validates :password, confirmation: true, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]{6,}+\z/}
          validates :password_confirmation
          validates :first_name
          validates :family_name
          validates :first_name_kana
          validates :family_name_kana
          validates :birth_date
        end

         with_options format: {with: /\A[ぁ-んァ-ン一-龥]+\z/} do
          validates :first_name
          validates :family_name
         end
         
         with_options format: {with: /\A[ァ-ヶー－]+\z/} do
          validates :first_name_kana
          validates :family_name_kana
         end
end

         