# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all

user1 = User.create(username: "username1")
user2 = User.create(username: "username2")
user3 = User.create(username: "username3")

poll1 = Poll.create(title: "coffee", user_id: user1.id)
poll2 = Poll.create(title: "food", user_id: user2.id)

question1 = Question.create(question:"do you like coffee", poll_id: poll1.id)
question2 = Question.create(question:"what kind of food do you like", poll_id: poll2.id)

answer1 = AnswerChoice.create(answer_choice:"yes", question_id: question1.id)
answer2 = AnswerChoice.create(answer_choice:"no", question_id: question1.id)
answer3 = AnswerChoice.create(answer_choice:"chinese", question_id: question2.id)
answer4 = AnswerChoice.create(answer_choice:"indian", question_id: question2.id)
answer5 = AnswerChoice.create(answer_choice:"american", question_id: question2.id)
