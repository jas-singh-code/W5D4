# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string           not null
#  short_url  :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenedUrl < ApplicationRecord
    belongs_to( :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User 
    )

end 

# s1 = ShortenedUrl.new(long_url: "thisisalongurl", short_url: "short") 