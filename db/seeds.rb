# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Exam.create(
  [
    {
      title:"Geography",
      level:0,
      topic:"Geography"
    },
    {
      title:"Poetry",
      level:5,
      topic:"Poetry"
    }
  ]
)

Question.create(
  [
    {
      body:"Which city served as Italy’s primary port to points east?",
      topic:"Geography",
      level:1
    }
  ]
)
Option.create(
  [
    {
      text:"Pisa",
      question_id:1
    },
    {
      text:"Ostia",
      question_id:1
    },
    {
      text:"Barium",
      question_id:1
    },
    {
      text:"Brundisium",
      question_id:1
    }
  ]
)
Topic.create(
  [
    {
      name:"Geography"
    },
    {
      name:"Poetry"
    }
  ]
)
