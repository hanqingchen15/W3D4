class Poll < ApplicationRecord
  validates :user_id, :title, presence:true, uniqueness:true

  has_many :questions,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: 'Question'

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'

end
