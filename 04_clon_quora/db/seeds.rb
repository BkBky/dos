#seed table user
user1 = User.create(name: 'Erick', email: 'e@gmail.com', password: '1')
user2 = User.create(name: 'Esme', email: 'esme@gmail.com', password: '1')
user3 = User.create(name: 'Fausto', email: 'f@gmail.com', password: '1')

#seed table question
quest1 = Question.create(user_id: user1.id, question: '¿Pregunta uno de Erick? 1/2')
quest2 = Question.create(user_id: user1.id, question: '¿Pregunta dos de Erick? 2/2')
quest3 = Question.create(user_id: user2.id, question: '¿Pregunta uno de Esme? 1/3')
quest4 = Question.create(user_id: user2.id, question: '¿Pregunta dos de Esme? 2/3')
quest5 = Question.create(user_id: user2.id, question: '¿Pregunta tres de Esme? 3/3')
quest6 = Question.create(user_id: user3.id, question: '¿Pregunta uno de Fausto? 1/2')
quest7 = Question.create(user_id: user3.id, question: '¿Pregunta dos de Fausto? 2/2')

#seed table answer
answer1 = Answer.create(question_id: quest3.id, responder_id:user1.id, answer:'Respuesta 1/5 de Erick en pregunta 3')
answer2 = Answer.create(question_id: quest4.id, responder_id:user2.id, answer:'Respuesta 2/5 de Erick en pregunta 4')
answer3 = Answer.create(question_id: quest5.id, responder_id:user3.id, answer:'Respuesta 3/5 de Erick en pregunta 5')
answer4 = Answer.create(question_id: quest6.id, responder_id:user3.id, answer:'Respuesta 4/5 de Erick en pregunta 6')
answer5 = Answer.create(question_id: quest7.id, responder_id:user3.id, answer:'Respuesta 5/5 de Erick en pregunta 7')
answer6 = Answer.create(question_id: quest4.id, responder_id:user2.id, answer:'Respuesta 1/2 de Fausto en pregunta 4')
answer7 = Answer.create(question_id: quest5.id, responder_id:user2.id, answer:'Respuesta 2/2 de Fausto en pregunta 5')
answer8 = Answer.create(question_id: quest1.id, responder_id:user2.id, answer:'Respuesta 1/3 de Esme en pregunta 1')
answer9 = Answer.create(question_id: quest2.id, responder_id:user1.id, answer:'Respuesta 2/3 de Esme en pregunta 2')
answer10 = Answer.create(question_id: quest3.id, responder_id:user1.id, answer:'Respuesta 3/3 de Fausto en pregunta 3')

answervote1 = AnswerVote.create(answer_id:answer1.id, user_id:user1.id, like: 1, unlike:0)
answervote2 = AnswerVote.create(answer_id:answer2.id, user_id:user2.id, like: 0, unlike:1)
answervote3 = AnswerVote.create(answer_id:answer3.id, user_id:user3.id, like: 1, unlike:0)
answervote4 = AnswerVote.create(answer_id:answer1.id, user_id:user3.id, like: 1, unlike:0)
answervote5 = AnswerVote.create(answer_id:answer2.id, user_id:user3.id, like: 1, unlike:0)
answervote6 = AnswerVote.create(answer_id:answer4.id, user_id:user1.id, like: 0, unlike:1)
answervote7 = AnswerVote.create(answer_id:answer7.id, user_id:user2.id, like: 1, unlike:0)
answervote8 = AnswerVote.create(answer_id:answer6.id, user_id:user1.id, like: 1, unlike:0)
answervote9 = AnswerVote.create(answer_id:answer7.id, user_id:user1.id, like: 1, unlike:0)
answervote10 = AnswerVote.create(answer_id:answer5.id, user_id:user1.id, like: 1, unlike:0)
answervote11 = AnswerVote.create(answer_id:answer3.id, user_id:user1.id, like: 1, unlike:0)
answervote12 = AnswerVote.create(answer_id:answer2.id, user_id:user1.id, like: 1, unlike:0)
answervote11 = AnswerVote.create(answer_id:answer3.id, user_id:user2.id, like: 1, unlike:0)
answervote12 = AnswerVote.create(answer_id:answer2.id, user_id:user3.id, like: 1, unlike:0)
answervote14 = AnswerVote.create(answer_id:answer6.id, user_id:user3.id, like: 1, unlike:0)
answervote15 = AnswerVote.create(answer_id:answer6.id, user_id:user2.id, like: 1, unlike:0)


answervote1 = QuestionVote.create(question_id:quest1.id, like: 1, unlike:0, user_id:user1.id)
answervote2 = QuestionVote.create(question_id:quest1.id, like: 1, unlike:0, user_id:user2.id)
answervote3 = QuestionVote.create(question_id:quest1.id, like: 1, unlike:0, user_id:user3.id)
answervote4 = QuestionVote.create(question_id:quest2.id, like: 1, unlike:0, user_id:user1.id)
answervote5 = QuestionVote.create(question_id:quest2.id, like: 1, unlike:0, user_id:user2.id)
answervote6 = QuestionVote.create(question_id:quest3.id, like: 1, unlike:0, user_id:user3.id)
answervote7 = QuestionVote.create(question_id:quest4.id, like: 1, unlike:0, user_id:user1.id)
answervote8 = QuestionVote.create(question_id:quest4.id, like: 1, unlike:0, user_id:user2.id)
answervote9 = QuestionVote.create(question_id:quest5.id, like: 1, unlike:0, user_id:user3.id)
answervote10 = QuestionVote.create(question_id:quest6.id, like: 1, unlike:0, user_id:user1.id)
answervote11 = QuestionVote.create(question_id:quest6.id, like: 1, unlike:0, user_id:user2.id)
answervote12 = QuestionVote.create(question_id:quest6.id, like: 0, unlike:1, user_id:user3.id)
answervote13 = QuestionVote.create(question_id:quest7.id, like: 0, unlike:1, user_id:user1.id)
answervote14 = QuestionVote.create(question_id:quest7.id, like: 0, unlike:1, user_id:user2.id)
answervote15 = QuestionVote.create(question_id:quest7.id, like: 0, unlike:1, user_id:user3.id)

