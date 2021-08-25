started_seeding = Time.now

mario = User.create( username: "mario" )
link = User.create( username: "link" )

Todo.create( user: mario, content: "Find mushroom" )
Todo.create( user: mario, content: "Jump on enemies" )
Todo.create( user: mario, content: "Slay bowser" )
Todo.create( user: link, content: "Recover sword/shield" )
Todo.create( user: link, content: "Find Level 1" )

done_seeding = Time.now

puts "Seeded: #{ done_seeding - started_seeding } secs."
