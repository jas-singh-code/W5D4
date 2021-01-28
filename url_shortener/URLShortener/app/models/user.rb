class User < ActiveRecord
    validates :email, presence: true, uniqueness: true
end 