# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)

  pesho = User.new(name: 'Pesho')
  ivan = User.new(name: 'Ivan')
  chat_room = ChatRoom.new(name: 'ChatRoom1')
  chat_room.save!

  chat_room.messages << Message.create(user_name: pesho.name, content: 'Hello all')
  chat_room.messages << Message.create(user_name: ivan.name, content: 'Wazza Pesho')
  chat_room.save!
