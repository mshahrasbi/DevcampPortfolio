
# run this like this: >rails db:setup

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end
puts "3 Topics created"


10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Comfort reached gay perhaps chamber his six detract besides add. Moonlight newspaper up he it enjoyment agreeable depending. Timed voice share led his widen noisy young. On weddings believed laughing although material do exercise of. Up attempt offered ye civilly so sitting to. She new course get living within elinor joy. She her rapturous suffering concealed.",
        topic_id: Topic.last.id            
    )
end
puts "10 Blogs were created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end
puts "5 Skills were created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "Civility vicinity graceful is it at. Improve up at to on mention perhaps raising. Way building not get formerly her peculiar. Up uncommonly prosperous sentiments simplicity acceptance to so. Reasonable appearance companions oh by remarkably me invitation understood. Pursuit elderly ask perhaps all.",
        main_image: "https://place-hold.it/600x400",
        thumb_image: "https://place-hold.it/350x200"
    )
end
1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Angular",
        body: "Civility vicinity graceful is it at. Improve up at to on mention perhaps raising. Way building not get formerly her peculiar. Up uncommonly prosperous sentiments simplicity acceptance to so. Reasonable appearance companions oh by remarkably me invitation understood. Pursuit elderly ask perhaps all.",
        main_image: "https://place-hold.it/600x400",
        thumb_image: "https://place-hold.it/350x200"
    )
end
puts "9 Portfolio were created"
3.times do |technology|
    # Technology.create!(name: "Technolog #{technology}", portfolio_id: Portfolio.last.id)
    Portfolio.last.technologies.create!(name: "Technolog #{technology}")
end

puts "3 Technologies created"
