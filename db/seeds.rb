# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# User.create(first_name: "Lisa", last_name: "Simpson", username: "@littlelisa", email: "lisa@email.com", password: "test123")
# User.create(first_name: "Mike", last_name: "Tyson", username: "@ironmike", email: "ironmike@email.com", password: "test123")
# User.create(first_name: "Elvis", last_name: "Presley", username: "@thegreatelvis", email: "elvis@lasvegas.com", password: "elvis123")
# ProfileInterest.create(user_id: 1, python: false, rails: true, react: false, node_js: false, sql: true, blockchain: false, data_scraping: true, java: false, javascript: true, scss: false, mentor: true, mentee: false)
# ProfileInterest.create(user_id: 2, python: true, rails: true, react: true, node_js: false, sql: true, blockchain: false, data_scraping: true, java: false, javascript: true, scss: false, mentor: false, mentee: true)
# ProfileInterest.create(user_id: 3, python: true, rails: false, react: true, node_js: false, sql: true, blockchain: true, data_scraping: true, java: true, javascript: true, scss: false, mentor: true, mentee: false)

# ChatRoom.create(user_id: 1, title: "How Do You Make A Million Dollars?")
# ChatRoom.create(user_id: 3, title: "How Do You Get Hired As A Developer?")

# ChatRoom.create(user_id: 2, title: "Who's the most famous person in the world?")
# ChatRoom.create(user_id: 4, title: "What is the tastiest dish you've ever had?")
# ChatRoom.create(user_id: 1, title: "How many pennies are in a million dollars?")
# ChatRoom.create(user_id: 3, title: "If you had to do it all over again, would you marry the same spouse?")

# ChatRoom.create(user_id: 1, title: "What is the coolest country you've visited?")
# ChatRoom.create(user_id: 1, title: "When was Quora founded, is MentorMe better?")
# ChatRoom.create(user_id: 2, title: "What's the toughest challenge you've faced in your software development career?")
# ChatRoom.create(user_id: 2, title: "Is it bad for new programmers to be afraid to break code?")



User.create(first_name: "Lisa", last_name: "Simpson", username: "@littlelisa", email: "lisa@email.com", password: "test123")
User.create(first_name: "Mike", last_name: "Tyson", username: "@ironmike", email: "ironmike@email.com", password: "test123")
User.create(first_name: "Elvis", last_name: "Presley", username: "@thegreatelvis", email: "elvis@lasvegas.com", password: "elvis123")
ProfileInterest.create(user_id: 1, python: false, rails: true, react: false, node_js: false, sql: true, blockchain: false, data_scraping: false, java: true, javascript: true, scss: false, mentor: true, mentee: false, score: 0)
ProfileInterest.create(user_id: 2, python: true, rails: true, react: true, node_js: false, sql: true, blockchain: false, data_scraping: true, java: false, javascript: false, scss: false, mentor: false, mentee: true, score: 0)
ProfileInterest.create(user_id: 3, python: true, rails: false, react: true, node_js: false, sql: false, blockchain: true, data_scraping: true, java: true, javascript: true, scss: true, mentor: true, mentee: false, score:0)


User.create(first_name: "May", last_name: "Wong", username: "@maymay", email: "may@email.com", password: "test123")
User.create(first_name: "Tom", last_name: "Brown", username: "@brownie", email: "tommy@email.com", password: "test123")
User.create(first_name: "John", last_name: "Snow", username: "@winterishere", email: "johnsnow@lasvegas.com", password: "elvis123")
ProfileInterest.create(user_id: 4, python: false, rails: true, react: true, node_js: false, sql: true, blockchain: false, data_scraping: true, java: false, javascript: true, scss: false, mentor: true, mentee: false, score:0)
ProfileInterest.create(user_id: 5, python: true, rails: false, react: true, node_js: false, sql: false, blockchain: false, data_scraping: true, java: false, javascript: true, scss: true, mentor: false, mentee: true, score:0)
ProfileInterest.create(user_id: 6, python: true, rails: false, react: true, node_js: false, sql: false, blockchain: true, data_scraping: true, java: true, javascript: false, scss: false, mentor: true, mentee: false, score:0)


User.create(first_name: "Joe", last_name: "Smith", username: "@joey2", email: "joe@email.com", password: "test123")
User.create(first_name: "Sam", last_name: "Little", username: "@lilsam", email: "samlit@email.com", password: "test123")
User.create(first_name: "Carly", last_name: "Dane", username: "@greatdane", email: "carly@lasvegas.com", password: "elvis123")
ProfileInterest.create(user_id: 7, python: false, rails: true, react: false, node_js: false, sql: false, blockchain: false, data_scraping: false, java: true, javascript: true, scss: false, mentor: true, mentee: false, score:0)
ProfileInterest.create(user_id: 8, python: true, rails: true, react: true, node_js: false, sql: false, blockchain: false, data_scraping: true, java: true, javascript: false, scss: false, mentor: false, mentee: true, score:0)
ProfileInterest.create(user_id: 9, python: true, rails: false, react: true, node_js: false, sql: true, blockchain: true, data_scraping: true, java: false, javascript: true, scss: false, mentor: false, mentee: true, score:0)
