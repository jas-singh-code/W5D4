# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    belongs_to( :instructors   #def method
        primary_key: :id
        foreign_key: :instructor_id
        class_name: :User 
    )

    belongs_to( :prereqs,
        primary_key: :id, 
        foreign_key: :prereq_id,
        class_name: :Course
    )
    

end
