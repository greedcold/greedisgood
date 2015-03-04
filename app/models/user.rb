class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates_presence_of :name
 validates_uniqueness_of :name

  has_many :listings, dependent: :destroy
#существование списка зависит от существования пользователя который его создал,
#и для того чтобы при удалении пользователя не удалились его списки вписываем dependent destroy
  ROLES = %w[admin author]

  ROLES.freeze

  def role_symbols
    [role.to_sym]
  end
end
