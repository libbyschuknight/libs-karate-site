# If need to set up from scratch
#   rake db:drop
#   rake db:create
#   rake db:migrate
#   rake db:seed
#   rake db:seed_content


# Extensions Seed Data

# Seed Dump - https://github.com/rroblak/seed_dump

# rake db:seed:dump FILE=db/content/seed_content.rb APPEND=true MODELS=Refinery::Page

# Refinery::Page.create!([
#   {parent_id: 1, path: nil, slug: "page-not-found", custom_slug: nil, show_in_menu: false, link_url: nil, menu_match: "^/404$", deletable: false, draft: false, skip_to_first_child: false, lft: 2, rgt: 3, depth: 1, view_template: nil, layout_template: nil, title: "Page not found", menu_title: nil},
#   {parent_id: nil, path: nil, slug: "katas", custom_slug: nil, show_in_menu: true, link_url: "/katas", menu_match: "^/katas(/|/.+?|)$", deletable: false, draft: false, skip_to_first_child: false, lft: 9, rgt: 10, depth: 0, view_template: nil, layout_template: nil, title: "Katas", menu_title: nil},
#   {parent_id: nil, path: nil, slug: "home", custom_slug: nil, show_in_menu: true, link_url: "/", menu_match: "^/$", deletable: false, draft: false, skip_to_first_child: false, lft: 1, rgt: 4, depth: 0, view_template: "home", layout_template: nil, title: "Home", menu_title: ""},
#   {parent_id: nil, path: nil, slug: "about", custom_slug: nil, show_in_menu: true, link_url: "", menu_match: nil, deletable: true, draft: false, skip_to_first_child: false, lft: 5, rgt: 6, depth: 0, view_template: "show", layout_template: nil, title: "About", menu_title: ""},
#   {parent_id: nil, path: nil, slug: "meanings", custom_slug: nil, show_in_menu: true, link_url: "/meanings", menu_match: "^/meanings(/|/.+?|)$", deletable: false, draft: false, skip_to_first_child: false, lft: 7, rgt: 8, depth: 0, view_template: "show", layout_template: nil, title: "Meanings", menu_title: ""}
# ])



# rake db:seed:dump FILE=db/content/seed_content.rb APPEND=true MODELS=Refinery::PagePart

# Refinery::PagePart.create!([
#   {refinery_page_id: 4, slug: "body", body: nil, position: 0, title: "Body"},
#   {refinery_page_id: 4, slug: "side_body", body: nil, position: 1, title: "Side Body"},
#   {refinery_page_id: 6, slug: "body", body: nil, position: 0, title: "Body"},
#   {refinery_page_id: 6, slug: "side_body", body: nil, position: 1, title: "Side Body"},
#   {refinery_page_id: 1, slug: "body", body: "<p>I will be using this site to help me learn all I need to for my next lot of gradings in Seido Karate.</p>\r\n<p>As well as learn about using Refinery CMS and Rails!</p>\r\n<p>I train at Seido Karate Wellington.</p>\r\n<p>Let the adventure being!</p>\r\n<img src=\"http://localhost:3000/system/images/W1siZiIsIjIwMTcvMDkvMjQvNmkzdHY0cGh1cV9icm93bl9iZWx0LmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MFx1MDAzZSJdXQ/brown%20belt.jpg?sha=c3bd4a48aac296c4\" title=\"Brown Belt\" alt=\"Brown Belt\" data-rel=\"450x450\" width=\"338\" height=\"450\" class=\"image-align-right selected_by_wym\" />\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTcvMDkvMjQvOGxvODIwbzFmNF9zZWlkb19sb2dvLnBuZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MFx1MDAzZSJdXQ/seido-logo.png?sha=f03cd80786390b35\" title=\"Seido Logo\" alt=\"Seido Logo\" data-rel=\"450x450\" width=\"212\" height=\"192\" /></p>", position: 0, title: "Body"},
#   {refinery_page_id: 2, slug: "body", body: "<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\"/\">Return to the home page</a></p>", position: 0, title: "Body"},
#   {refinery_page_id: 3, slug: "body", body: "<p class=\"image-align-right\"></p>\r\n<p>Hi, I'm Libby.</p>\r\n<img src=\"http://localhost:3000/system/images/W1siZiIsIjIwMTcvMDkvMjQvMnNjZG9ueWUxa19tZV9vbmxpbmUuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1XHUwMDNlIl1d/me%20online.jpg?sha=91fea3a7e79825c6\" title=\"Me Online\" alt=\"Me Online\" data-rel=\"225x255\" width=\"225\" height=\"225\" class=\"image-align-right selected_by_wym\" /><p>I have created this site for two reasons:</p>\r\n<ol><li>to learn how to use RefineryCMS, building on my knowledge of Rails</li>\r\n<li>to learn what I need to for my next couple of gradings in <a href=\"http://seidowellington.co.nz/\" title=\"http://seidowellington.co.nz/\">Seido Karat</a>e.</li>\r\n</ol>I also hope to use it to learn a lot more tech stuff, like vanilla javascript and maybe a framework, improve my ability to right CSS, possibly look at using Foundation. <p>I got started with this RefineryCMS app by following the guides - <a href=\"http://www.refinerycms.com/guides\" title=\"http://www.refinerycms.com/guides\" target=\"_blank\">http://www.refinerycms.com/guides</a>.</p>\r\n<p>To see the code please go to <a href=\"https://github.com/libbyschuknight/libs-karate-site\" title=\"https://github.com/libbyschuknight/libs-karate-site\" target=\"_blank\">https://github.com/libbyschuknight/libs-karate-site</a>\r\n</p>", position: 0, title: "Body"},
#   {refinery_page_id: 7, slug: "body", body: nil, position: 0, title: "Body"},
#   {refinery_page_id: 7, slug: "side_body", body: nil, position: 1, title: "Side Body"},
#   {refinery_page_id: 8, slug: "body", body: nil, position: 0, title: "Body"},
#   {refinery_page_id: 8, slug: "side_body", body: nil, position: 1, title: "Side Body"}
# ])



# Update home page

if Refinery::Page.where(slug: "home").first.parts.where(slug: "side_body").first
  Refinery::Page.where(slug: "home").first.parts.where(slug: "side_body").first.destroy
end

Refinery::Page.where(slug: "home").first.parts.where(slug: "body").first.update(
  body: "<p>I will be using this site to help me learn all I need to for my next lot of gradings in Seido Karate.</p>\r\n<p>As well as learn about using Refinery CMS and Rails!</p>\r\n<p>I train at Seido Karate Wellington.</p>\r\n<p>Let the adventure being!</p>\r\n<img src=\"http://localhost:3000/system/images/W1siZiIsIjIwMTcvMDkvMjQvNmkzdHY0cGh1cV9icm93bl9iZWx0LmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MFx1MDAzZSJdXQ/brown%20belt.jpg?sha=c3bd4a48aac296c4\" title=\"Brown Belt\" alt=\"Brown Belt\" data-rel=\"450x450\" width=\"338\" height=\"450\" class=\"image-align-right selected_by_wym\" />\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTcvMDkvMjQvOGxvODIwbzFmNF9zZWlkb19sb2dvLnBuZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MFx1MDAzZSJdXQ/seido-logo.png?sha=f03cd80786390b35\" title=\"Seido Logo\" alt=\"Seido Logo\" data-rel=\"450x450\" width=\"212\" height=\"192\" /></p>"
)



## TODO: check and deal with duplication
# may only be useful for a clean seed

# Update about page

if Refinery::Page.where(slug: "about").first.parts.where(slug: "side_body").first
  Refinery::Page.where(slug: "about").first.parts.where(slug: "side_body").first.destroy
end

Refinery::Page.where(slug: "about").first.parts.where(slug: "body").first.update(
  body: "<p class=\"image-align-right\"></p>\r\n<p>Hi, I'm Libby.</p>\r\n<img src=\"http://localhost:3000/system/images/W1siZiIsIjIwMTcvMDkvMjQvMnNjZG9ueWUxa19tZV9vbmxpbmUuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1XHUwMDNlIl1d/me%20online.jpg?sha=91fea3a7e79825c6\" title=\"Me Online\" alt=\"Me Online\" data-rel=\"225x255\" width=\"225\" height=\"225\" class=\"image-align-right selected_by_wym\" /><p>I have created this site for two reasons:</p>\r\n<ol><li>to learn how to use RefineryCMS, building on my knowledge of Rails</li>\r\n<li>to learn what I need to for my next couple of gradings in <a href=\"http://seidowellington.co.nz/\" title=\"http://seidowellington.co.nz/\">Seido Karat</a>e.</li>\r\n</ol>I also hope to use it to learn a lot more tech stuff, like vanilla javascript and maybe a framework, improve my ability to right CSS, possibly look at using Foundation. <p>I got started with this RefineryCMS app by following the guides - <a href=\"http://www.refinerycms.com/guides\" title=\"http://www.refinerycms.com/guides\" target=\"_blank\">http://www.refinerycms.com/guides</a>.</p>\r\n<p>To see the code please go to <a href=\"https://github.com/libbyschuknight/libs-karate-site\" title=\"https://github.com/libbyschuknight/libs-karate-site\" target=\"_blank\">https://github.com/libbyschuknight/libs-karate-site</a>\r\n</p>"
)

# rake db:seed:dump FILE=db/content/seed_content.rb APPEND=true MODELS=Refinery::Grades::Grade
Refinery::Grades::Grade.create!([
  {title: "Shodan", dan: true, kyu: false, level: 1, position: nil},
  {title: "Nidan", dan: true, kyu: false, level: 2, position: nil},
  {title: "Sandan", dan: true, kyu: false, level: 3, position: nil},
  {title: "Sensei", dan: true, kyu: false, level: 4, position: nil},
  {title: "Kyoshi", dan: true, kyu: false, level: 5, position: nil},
  {title: "Jun Shihan", dan: true, kyu: false, level: 6, position: nil},
  {title: "Sei Shihan", dan: true, kyu: false, level: 6, position: nil}
])

# rake db:seed:dump FILE=db/content/seed_content.rb APPEND=true MODELS=Refinery::People::Person
Refinery::People::Person.create!([
  {first_name: "Ben", last_name: "Otang", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 7},
  {first_name: "Peter", last_name: "Flowers", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 6},
  {first_name: "Glenys", last_name: "??", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 6},
  {first_name: "Fiona", last_name: "Ramsey", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 6},
  {first_name: "Kim", last_name: "Sawers", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 5},
  {first_name: "Anna", last_name: "??", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 5},
  {first_name: "Avis", last_name: "M?", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 5},
  {first_name: "Bruce", last_name: "??", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 4},
  {first_name: "Julie", last_name: "Herron", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 4},
  {first_name: "Garry", last_name: "??", photo_id: 6, dojo: "Wellington", position: nil, grade_id: 4}
])


# Seed katas
# rake db:seed:dump FILE=db/content/seed_content.rb APPEND=true MODELS=Refinery::Katas::Kata
Refinery::Katas::Kata.create!([
  {title: "Taikyoku", meaning: "<p>Overview, the large view</p>\r\n<p>View the whole rather than the parts.</p>", interpretation: "", position: nil},
  {title: "Pinan", meaning: "Peace and harmony", interpretation: nil, position: nil}
])

# Seed meanings
# rake db:seed:dump FILE=db/content/seed_content.rb APPEND=true MODELS=Refinery::Meanings::Meaning
Refinery::Meanings::Meaning.create!([
  {japanese_name: "Hara", english_name: "Abdomen", description: "<p>Central point of body /&#160;centre of gravity /&#160;abdominal tension.</p>\r\n<p>\"The center of one’s being, or the source of one’s vitality or energy. It also has the emotional attachment of courage, fortitude and even anger.\"</p>\r\n<p><a href=\"https://www.facebook.com/WelshShotokanKarateOrganisation/posts/10153372643006898\" title=\"https://www.facebook.com/WelshShotokanKarateOrganisation/posts/10153372643006898\" target=\"_blank\">https://www.facebook.com/WelshShotokanKarateOrganisation/posts/10153372643006898</a>\r\n</p>", position: nil},
  {japanese_name: "Hidari", english_name: "Left", description: "<p>Just left!</p>", position: nil}
])


# Seed stances
# rake db:seed:dump FILE=db/content/seed_content.rb APPEND=true MODELS=Refinery::Stances::Stance
Refinery::Stances::Stance.create!([
  {japanese_name: "Zenkutsu Dachi", english_name: "Front learning Stance", description: "<p>70 front, 30 back, shoulder width apart, front leg, knee bent over ankle, back leg straight, foot at 45deg, length about 2 shoulder widths.</p>", photo_id: 5, position: nil}
])


# Seed katas_stances
# rake db:seed:dump FILE=db/content/seed_content.rb APPEND=true MODELS=KatasStance
KatasStance.create!([
  {kata_id: 1, stance_id: 1}
])
