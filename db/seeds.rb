# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
  {
    name: "Taylor Smith",
    email: "taylor@themakersquare.com"
  },
  {
    name: "Mike Ornellas",
    email: "mike@themakersquare.com"
  }
  ])


video1 = Video.create(
    title: "Gladiator",
    description: "A great movie",
    youtube_id: "rNdKBPcVGJI",
    user_id: 1)

video2 = Video.create(
    title: "Pacific Rim",
    description: "Giant robots fighting giant sea monsters",
    youtube_id: "SSNU6t0pmkw",
    user_id: 2)

video3 = Video.create(
    title: "Frozen",
    description: "Cold 3D Animation",
    youtube_id: "FLzfXQSPBOg",
    user_id: 1)



Sound.create([ 
  {
    title: "Sound1",
    soundcloud_url: "https://soundcloud.com/makersquare/files"
  },
  {
    title: "Sound2",
    soundcloud_url: "https://soundcloud.com/makersquare/sitcom-don"
  }
  ])

video1.comments.create(comment: "Gladiator is le worst thing evar")
video2.comments.create(comment: "I am here from le reddit to tip my fedora at thee")
video2.comments.create(comment: "dingus dingus dingus.")


