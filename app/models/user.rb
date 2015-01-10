class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  has_many :listings, dependent: :destroy
#существование списка зависит от существования пользователя который его создал,
#и для того чтобы при удалении пользователя не удалились его списки вписываем dependent destroy
end
