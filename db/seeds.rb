# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Platform.destroy_all
Topic.destroy_all
Issue.destroy_all

platforms = {
  "star-wars-jedi-fallen-order"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "need-for-speed-heat"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "plants-vs-zombies-battle-for-neighborville"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "nba-mobile"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "fifa-20"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "fifa-mobile"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "nhl-20"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "madden-nfl-mobile"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "madden-20"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "origin-access"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "the-sims-4"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "pogo"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "apex-legends"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "origin"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "the-simpsons-tapped-out"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "star-wars-galaxy-heroes"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "the-sims-mobile"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone'],
  "star-wars-the-old-republic"=> ['ios', 'ps4', 'kindle-fire', 'xbox-one', 'pc', 'mac', 'android-phone', 'iphone', 'ipad', 'ipod', 'android-tablet', 'windows-tablet', 'windows-phone']
}
topics = {
  "ios"=> ["Promotions and events", "Banned or suspended account", "Can't login", "Missing content", "Report a bug", "Report player", "Connection and tech support"],
  "ipod"=> ["Promotions and events", "Banned or suspended account", "Can't login", "Missing content", "Report a bug", "Report player", "Connection and tech support"],
  "ipad"=> ["Promotions and events", "Banned or suspended account", "Can't login", "Missing content", "Report a bug", "Report player", "Connection and tech support"],
  "ps4"=> ["Codes and promotions", "Game information", "Manage my account", "Missing content", "Orders", "Report a bug", "Report concerns or harassment", "Technical support", "Twitch Prime", "Warranty"],
  "xbox-one"=> ["Codes and promotions", "Game information", "Manage my account", "Missing content", "Orders", "Report a bug", "Report concerns or harassment", "Technical support", "Twitch Prime", "Warranty"],
  "pc"=> ["Codes and promotions", "Game information", "Manage my account", "Missing content", "Orders", "Report a bug", "Report concerns or harassment", "Technical support", "Twitch Prime", "Warranty"],
  "android-phone"=> ["Promotions and events", "Banned or suspended account", "Can't login", "Missing content", "Report a bug", "Report player", "Connection and tech support"],
  "iphone"=> ["Codes and promotions", "Game information", "Manage my account", "Missing content", "Orders", "Report a bug", "Report concerns or harassment", "Technical support"],
  "android-tablet"=> ["Promotions and events", "Banned or suspended account", "Can't login", "Missing content", "Report a bug", "Report player", "Connection and tech support"],
  "windows-tablet"=> ["Promotions and events", "Banned or suspended account", "Can't login", "Missing content", "Report a bug", "Report player", "Connection and tech support"],
  "windows-phone"=> ["Promotions and events", "Banned or suspended account", "Can't login", "Missing content", "Report a bug", "Report player", "Connection and tech support"],
  "mac"=> ["Codes and promotions", "Game information", "Manage my account", "Missing content", "Orders", "Report a bug", "Report concerns or harassment", "Technical support", "Twitch Prime", "Warranty"],
  "kindle-fire"=> ["Codes and promotions", "Manage my account", "Missing content", "Report a bug", "Technical support"]
}

issues = {
  "codes and promotions"=> ['Invalid code', 'Lost code', 'Promotions questions'],
  "report a bug"=> ['Give feedback', 'Report bug'],
  "connection and tech support"=> ['connectivity', 'game performance', 'game progress issue', "game won't launch", 'Installation'],
  "missing content"=> ['had content and lost it', 'never received content'],
  "game information"=> ['availability', 'features', 'game modes', 'getting started', 'news', 'patch notes', 'tips and tricks']
}

issue_id_maps = {}
issues.values.flatten.uniq.each do |issue|
  issue_id = Issue.create!({name: issue.downcase}).id
  issue_id_maps[issue.downcase] = issue_id
end

platform_id_maps = {}
platforms.values.flatten.uniq.each do |platform|
  platform_id = Platform.create!({name: platform.downcase}).id
  platform_id_maps[platform.downcase] = platform_id
end

topic_ids_map = {}
topics.values.flatten.uniq.each do |topic|
  topic_id = Topic.create!({name: topic.downcase}).id
  topic_ids_map[topic.downcase] = topic_id
end

product_ids_map = {}
platforms.keys.each do |product|
  product_id = Product.create!({name: product.downcase}).id
  product_ids_map[product.downcase] = product_id
end

topics.each do |k, v|
  v.each do |t|
    PlatformTopic.create!({topic_id: topic_ids_map[t.downcase], platform_id: platform_id_maps[k.downcase]})
  end
end

issues.each do |k, v|
  v.each do |t|
    TopicIssue.create!({topic_id: topic_ids_map[k.downcase], issue_id: issue_id_maps[t.downcase]})
  end
end

platforms.each do |k, v|
  v.each do |t|
    ProductPlatform.create!({platform_id: platform_id_maps[t.downcase], product_id: product_ids_map[k.downcase]})
  end
end

