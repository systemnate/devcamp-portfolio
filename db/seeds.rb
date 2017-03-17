3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: Faker::Hipster.sentence,
    body:  Faker::Lorem.paragraph,
    topic: Topic.last
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio item #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: Faker::Lorem.paragraph,
    main_image: Faker::Placeholdit.image("600x400"),
    thumb_image: Faker::Placeholdit.image("350x200")
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio item #{portfolio_item}",
    subtitle: "Angular",
    body: Faker::Lorem.paragraph,
    main_image: Faker::Placeholdit.image("600x400"),
    thumb_image: Faker::Placeholdit.image("350x200")
  )
end

puts "10 portfolio items created"
