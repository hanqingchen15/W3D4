class AnswerChoice < ApplicationRecord
  validates :question_id, :answer_choice, presence:true

  has_one :response,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: 'Response'

  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: 'Question'

end
