draft = State.create(:name => "Draft")
published = State.create(:name => "Published")

category1 = Category.create(:name => "Opinion")
category2 = Category.create(:name => "Politics")
category3 = Category.create(:name => "Sports")
category4 = Category.create(:name => "World News")

BODY = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce faucibus sapien eu tortor accumsan sollicitudin euismod dolor viverra. Nulla lobortis vestibulum congue. Fusce euismod augue vel odio suscipit eu ultrices neque hendrerit. Mauris turpis est, feugiat sed aliquam at, sollicitudin non leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sodales faucibus nibh eu posuere. Suspendisse aliquet pellentesque urna. Nunc ac nisi ut velit euismod commodo a et turpis. Etiam volutpat cursus pellentesque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed eu mauris non velit blandit posuere quis vel ipsum. Donec hendrerit nisl vel ipsum aliquet aliquet. Donec non libero vitae lectus lobortis lacinia ut vitae nisi. Vestibulum diam est, aliquet ut dignissim ullamcorper, facilisis quis quam. Morbi eleifend lobortis ligula, non fringilla orci ullamcorper eu. Donec ligula metus, pulvinar et ornare quis, blandit quis sem. Duis vel quam a massa accumsan pharetra."

100.times do |n|
  puts "Creating user #{n+1}..."
  user = User.create(:name => "User #{n}", :email => "email#{n}@example.com")

  Article.create(:title => "I disagree with that!", :body => BODY, :user => user, :category => category1, :state => published)
  Article.create(:title => "Go Sabres!", :body => BODY, :user => user, :category => category2, :state => published)
  Article.create(:title => "US Deficit is what now?!", :body => BODY, :user => user, :category => category3, :state => published)
end
