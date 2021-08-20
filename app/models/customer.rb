class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :receivers, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :cart_items, dependent: :destroy

  with_options presence: true do
  validates :email
  validates :first_name
  validates :last_name
  validates :kana_first_name
  validates :kana_last_name
  validates :postal_code
  validates :address
  validates :phone_number
  end

  # 姓＋名をフルネームにする-------------------------------
  def full_name
    self.last_name + self.first_name
  end
  

end
