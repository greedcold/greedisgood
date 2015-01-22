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
  has_and_belongs_to_many :roles

 ROLES = %i[admin moderator author]
 def role?(base_role)
   ROLES.index(base_role.to_s) <= ROLES.index(role)
 end

# def roles=(roles)
#   roles = [*roles].map { |r| r.to_sym }
#   self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
# end

# def roles
#   ROLES.reject do |r|
#     ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
#  end
# end

 def has_role?(role)
  roles.include?(role)
 end
end
