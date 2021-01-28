# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many( :shortened_urls
        primary_key: id,
        foreign_key: :user_id,
        class_name: :ShortenedUrl
    )

    validates :email, presence: true, uniqueness: true
end 
