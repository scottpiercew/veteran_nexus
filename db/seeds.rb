# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organization.destroy_all
Comment.destroy_allter

team_rwb = Organization.create!(name: "Team RWB", org_type: "Social Impact", photo_url: "http://nuweb9.neu.edu/svo/wp-content/uploads/2013/01/4976529085_723038c367_z.jpg", location: "Washington, DC", facebook: "https://www.facebook.com/groups/Team.RWB.DMV/", twitter: "https://twitter.com/teamrwb", instagram: "https://www.instagram.com/teamrwb/", linkedin: "https://www.linkedin.com/company-beta/1455885", youtube: "https://www.youtube.com/user/TeamRWB", web_url: "https://www.teamrwb.org/")

c1_team_rwb = Comment.create!(name: "Susan", body: "I Love Team RWB", organization: team_rwb)
