started_seeding = Time.now

josh = User.create( username: "josh" )

Todo.create( user: josh, content: "Finish front end", finished: false )
Todo.create( user: josh, content: "Start back end", finished: true )
Todo.create( user: josh, content: "Install pg gem", finished: true )

done_seeding = Time.now

puts "Seeded: #{ done_seeding - started_seeding } secs."
