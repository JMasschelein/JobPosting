 require 'random_data'

 15.times do
   Category.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
categories = Category.all

 # Create Posts
 50.times do

   Job.create!(
     category: categories.sample,
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
puts "#{Category.count} categories created"
 puts "#{Job.count} posts created"
 puts "#{Comment.count} comments created"