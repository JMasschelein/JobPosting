 require 'random_data'

 # Create Posts
 50.times do
 # #1
   Job.create!(
 # #2
     title:  RandomData.random_sentence,
     description:   RandomData.random_paragraph,
     deadline: "17/9/2015",
     budget: 20
   )
 end
 jobs = Job.all
 
 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     job: jobs.sample,
     body: RandomData.random_paragraph
   )
 end
 
 puts "Seed finished"
 puts "#{Job.count} posts created"
 puts "#{Comment.count} comments created"