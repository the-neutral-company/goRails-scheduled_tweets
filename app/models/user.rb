# email: string
# password_digest:string
#
# Estos campos los crea el metodo has_secure_password 
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Debe ser un correo valido'  }
end
