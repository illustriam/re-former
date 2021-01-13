class User < ApplicationRecord
    validates :username, presence: true, length: {maximum: 30}
    validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
    validates :password, presence: true
end
