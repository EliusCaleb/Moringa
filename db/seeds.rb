# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding DB⏳..."

# Mentor data
puts "Tutors⏳..."
Tutor.create(firstname: "John", lastname: "Doe", work_id: "SE/2022/101", email: "johndoe@gmail.com", password: "123456", password_confirmation: "123456")
Tutor.create(firstname: "Michael", lastname: "Hill", work_id: "SE/2022/002", email: "mikehill@gmail.com", password: "123456", password_confirmation: "123456")
Tutor.create(firstname: "Matt", lastname: "Smith", work_id: "SE/2022/003", email: "mattsmith@gmail.com", password: "123456", password_confirmation: "123456")
Tutor.create(firstname: "Jane", lastname: "Doe", work_id: "SE/2022/004", email: "janedoe@gmail.com", password: "123456", password_confirmation: "123456")
Tutor.create(firstname: "Mary", lastname: "Smith", work_id: "SE/2022/005", email: "marysmith@gmail.com", password: "123456", password_confirmation: "123456")

# Student data
puts "Students⏳..."
Student.create(firstname: "Wycliffe", lastname: "Ndiba", email: "w.ndiba@gmail.com", username: "wycliffendiba", password: "123456", password_confirmation: "123456")
Student.create(firstname: "Dennis" , lastname:"Shakava", email: "d.shakava@gmail.com", username: "dennishakava", password: "123456", password_confirmation: "123456")
Student.create(firstname: "Stephen", lastname: "Lukanu", email: "s.lukanu@gmail.com", username: "stephenlukanu", password: "123456", password_confirmation: "123456")
Student.create(firstname: "Michael", lastname: "Kaburu", email: "m.kaburu@gmail.com", username: "michaelkaburu", password: "123456", password_confirmation: "123456")
Student.create(firstname: "Elvis" , lastname: "Kimani", email: "e.kimani@gmail.com", username: "elviskimani", password: "123456", password_confirmation: "123456")
Student.create(firstname: "Maurice", lastname: "Nganga", email: "m.nganga@gmail.com", username: "mauricenganga", password: "123456", password_confirmation: "123456")
# Assessment data
puts "Assessments⏳..."
Assessment.create(tutor_id: 1, assessment_title: "Ruby Basics")
Assessment.create(tutor_id: 1, assessment_title: "Ruby Intermediate")
Assessment.create(tutor_id: 2, assessment_title: "Ruby Advanced")
Assessment.create(tutor_id: 2, assessment_title: "Javascript Basics")
Assessment.create(tutor_id: 3, assessment_title: "Javascript Intermediate")
Assessment.create(tutor_id: 3, assessment_title: "Javascript Advanced")

# Multiple Choice Question data
puts "Mcqs⏳..."
Mcq.create(assessment_id: 1, question: "What is the output of the following code? puts 'Hello World'", answers: ["Hello World", "Hello World!", "Hello World!", "Hello World"],correct_answer:"Hello World")
Mcq.create(assessment_id: 1, question: "How do we call a validation in a model?", answers: ["validate", "validates", "validate!", "::validates"], correct_answer:"validates")
Mcq.create(assessment_id: 1, question: "What version of Rails introduced Hotwire?", answers: ["Rails 6.1", "Rails 6.0", "Rails 7.0","Rails 5.1"],correct_answer:"Rails 7.0")
Mcq.create(assessment_id: 2, question: "What do WebSockets do?", answers: ["They allow for real time communication between the client and the server", "They allow for real time communication between the server and the client", "They allow for real time communication between the client and the client", "They allow real time communication between the server and the server"], correct_answer:"They allow for real time communication between the client and the server")
Mcq.create(assessment_id: 2, question: "What is the output of the following code? console.log('Hello World')", answers: ["Hello World", "Hello World!", "Hello World!", "Hello World"],correct_answer:"Hello World")
Mcq.create(assessment_id: 2, question: "What is the output of the following code? console.log('Hello World')", answers: ["Hello World", "Hello World!", "Hello World!", "Hello World"],correct_answer:"Hello World")

#Student profile
puts "Studentprofile
⏳..."
Studentprofile.create(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ4AGU7PcdzwW1smKQuMMTgKj1yGlUMa84fDyt0SJWoeUG_o5QpbBdN_wP1oaYpHSQSJ4&usqp=CAU", phone: "0795225110",student_id: 1)

#tutors profile
puts "TutorProfile⏳.." 
Tutorprofile.create(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcxQ32AdfMJt28qStJxIiuJ5cM9TKwuvmcDQ&usqp=CAU", phone: "0795225110",tutor_id: 1)

