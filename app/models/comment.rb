class Comment < ActiveRecord::Base
   belongs_to:issue
   belongs_to:photo
   belongs_to:user
   validates :comment, presence: true
end