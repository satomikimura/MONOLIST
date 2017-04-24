class User < ApplicationRecord
    before_save {self.email.downcase!}
    validates :name, presence: true, length: {maximum: 50}
    
    has_secure_password
end
