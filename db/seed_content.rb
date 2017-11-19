# Extensions Seed Data

# Seed Dump - https://github.com/rroblak/seed_dump

# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::Page

#
# Refinery::Page.create!([
#   {parent_id: 1, path: nil, slug: "page-not-found", custom_slug: nil, show_in_menu: false, link_url: nil, menu_match: "^/404$", deletable: false, draft: false, skip_to_first_child: false, lft: 2, rgt: 3, depth: 1, view_template: nil, layout_template: nil, title: "Page not found", menu_title: nil},
#   {parent_id: nil, path: nil, slug: "katas", custom_slug: nil, show_in_menu: true, link_url: "/katas", menu_match: "^/katas(/|/.+?|)$", deletable: false, draft: false, skip_to_first_child: false, lft: 9, rgt: 10, depth: 0, view_template: nil, layout_template: nil, title: "Katas", menu_title: nil},
#   {parent_id: nil, path: nil, slug: "home", custom_slug: nil, show_in_menu: true, link_url: "/", menu_match: "^/$", deletable: false, draft: false, skip_to_first_child: false, lft: 1, rgt: 4, depth: 0, view_template: "home", layout_template: nil, title: "Home", menu_title: ""},
#   {parent_id: nil, path: nil, slug: "about", custom_slug: nil, show_in_menu: true, link_url: "", menu_match: nil, deletable: true, draft: false, skip_to_first_child: false, lft: 5, rgt: 6, depth: 0, view_template: "show", layout_template: nil, title: "About", menu_title: ""},
#   {parent_id: nil, path: nil, slug: "meanings", custom_slug: nil, show_in_menu: true, link_url: "/meanings", menu_match: "^/meanings(/|/.+?|)$", deletable: false, draft: false, skip_to_first_child: false, lft: 7, rgt: 8, depth: 0, view_template: "show", layout_template: nil, title: "Meanings", menu_title: ""}
# ])

# Seed katas
# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::Katas::Kata
Refinery::Katas::Kata.create!([
  {title: "Taikyoku", meaning: "<p>Overview, the large view</p>\r\n<p>View the whole rather than the parts.</p>", interpretation: "", position: nil},
  {title: "Pinan", meaning: "Peace and harmony", interpretation: nil, position: nil}
])

# Seed meanings
# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::Meanings::Meaning
Refinery::Meanings::Meaning.create!([
  {japanese_name: "Hara", english_name: "Abdomen", description: "<p>Central point of body /&#160;centre of gravity /&#160;abdominal tension.</p>\r\n<p>\"The center of one’s being, or the source of one’s vitality or energy. It also has the emotional attachment of courage, fortitude and even anger.\"</p>\r\n<p><a href=\"https://www.facebook.com/WelshShotokanKarateOrganisation/posts/10153372643006898\" title=\"https://www.facebook.com/WelshShotokanKarateOrganisation/posts/10153372643006898\" target=\"_blank\">https://www.facebook.com/WelshShotokanKarateOrganisation/posts/10153372643006898</a>\r\n</p>", position: nil},
  {japanese_name: "Hidari", english_name: "Left", description: "<p>Just left!</p>", position: nil}
])



# # rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::People::Person
# Refinery::People::Person.create!([
#   {first_name: "Libby", last_name: "Schumacher-Knight", photo_id: 2, dojo: "Brooklyn, Wellington", position: nil, grade_id: 2},
#   {first_name: "Kung Fu", last_name: "Panada", photo_id: 3, dojo: "Hong Kong", position: nil, grade_id: 3},
#   {first_name: "LibbyBB", last_name: "Schumacher-Knight", photo_id: 4, dojo: "Auckland", position: nil, grade_id: 4},
#   {first_name: "Cat", last_name: "Kitten", photo_id: 4, dojo: "Wellington", position: nil, grade_id: 1},
#   {first_name: "Hong", last_name: "Kong Fuey", photo_id: 5, dojo: "Wellington", position: nil, grade_id: 2},
#   {first_name: "Bot", last_name: "Robot", photo_id: 6, dojo: "Auckland", position: nil, grade_id: 3},
#   {first_name: "Ro", last_name: "Bot", photo_id: 7, dojo: "Wellington", position: nil, grade_id: 4},
#   {first_name: "Robo", last_name: "Bot", photo_id: 8, dojo: "Wellington", position: nil, grade_id: 5}
# ])
#
#
# # rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::People::Grade
# Refinery::People::Grade.create!([
#   {dan: true, level: 1, position: nil, title: "Shodan", kyu: false},
#   {dan: true, level: 2, position: nil, title: "Nidan", kyu: false},
#   {dan: true, level: 3, position: nil, title: "Sandan", kyu: false},
#   {dan: true, level: 4, position: nil, title: "Sensei", kyu: false},
#   {dan: true, level: 5, position: nil, title: "Kyoshi", kyu: false}
# ])



# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::PagePart

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

Refinery::Page.where(slug: "home").first.parts.where(slug: "side_body").first.destroy
Refinery::Page.where(slug: "home").first.parts.where(slug: "body").first.update(
  body: "<p>I will be using this site to help me learn all I need to for my next lot of gradings in Seido Karate.</p>\r\n<p>As well as learn about using Refinery CMS and Rails!</p>\r\n<p>I train at Seido Karate Wellington.</p>\r\n<p>Let the adventure being!</p>\r\n<img src=\"http://localhost:3000/system/images/W1siZiIsIjIwMTcvMDkvMjQvNmkzdHY0cGh1cV9icm93bl9iZWx0LmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MFx1MDAzZSJdXQ/brown%20belt.jpg?sha=c3bd4a48aac296c4\" title=\"Brown Belt\" alt=\"Brown Belt\" data-rel=\"450x450\" width=\"338\" height=\"450\" class=\"image-align-right selected_by_wym\" />\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTcvMDkvMjQvOGxvODIwbzFmNF9zZWlkb19sb2dvLnBuZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MFx1MDAzZSJdXQ/seido-logo.png?sha=f03cd80786390b35\" title=\"Seido Logo\" alt=\"Seido Logo\" data-rel=\"450x450\" width=\"212\" height=\"192\" /></p>"
)

# Update about page

Refinery::Page.where(slug: "about").first.parts.where(slug: "side_body").first.destroy
Refinery::Page.where(slug: "about").first.parts.where(slug: "body").first.update(
  body: "<p class=\"image-align-right\"></p>\r\n<p>Hi, I'm Libby.</p>\r\n<img src=\"http://localhost:3000/system/images/W1siZiIsIjIwMTcvMDkvMjQvMnNjZG9ueWUxa19tZV9vbmxpbmUuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1XHUwMDNlIl1d/me%20online.jpg?sha=91fea3a7e79825c6\" title=\"Me Online\" alt=\"Me Online\" data-rel=\"225x255\" width=\"225\" height=\"225\" class=\"image-align-right selected_by_wym\" /><p>I have created this site for two reasons:</p>\r\n<ol><li>to learn how to use RefineryCMS, building on my knowledge of Rails</li>\r\n<li>to learn what I need to for my next couple of gradings in <a href=\"http://seidowellington.co.nz/\" title=\"http://seidowellington.co.nz/\">Seido Karat</a>e.</li>\r\n</ol>I also hope to use it to learn a lot more tech stuff, like vanilla javascript and maybe a framework, improve my ability to right CSS, possibly look at using Foundation. <p>I got started with this RefineryCMS app by following the guides - <a href=\"http://www.refinerycms.com/guides\" title=\"http://www.refinerycms.com/guides\" target=\"_blank\">http://www.refinerycms.com/guides</a>.</p>\r\n<p>To see the code please go to <a href=\"https://github.com/libbyschuknight/libs-karate-site\" title=\"https://github.com/libbyschuknight/libs-karate-site\" target=\"_blank\">https://github.com/libbyschuknight/libs-karate-site</a>\r\n</p>"
)

# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::People::Person
Refinery::People::Person.create!([
  {first_name: "Cat", last_name: "Kitten", photo_id: 1, dojo: "Wellington", position: nil, grade_id: 6},
  {first_name: "Hong", last_name: "Kong Fuey", photo_id: 2, dojo: "Auckland", position: nil, grade_id: 7},
  {first_name: "Bob", last_name: "Bobbit", photo_id: 3, dojo: "Wellington", position: nil, grade_id: 1},
  {first_name: "Kate", last_name: "Short", photo_id: 4, dojo: "South Wellington", position: nil, grade_id: 2},
  {first_name: "Red", last_name: "Long", photo_id: 5, dojo: "Wellington", position: nil, grade_id: 1}
])
