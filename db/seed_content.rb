# Extensions Seed Data

# rake db:seed:dump FILE=db/seed_content.rb APPEND=true

# Refinery::Katas::Kata.create(title: "Pinan", meaning: "Peace and harmony")

# Seed Dump - https://github.com/rroblak/seed_dump

# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::Page


Refinery::Page.create!([
  {parent_id: 1, path: nil, slug: "page-not-found", custom_slug: nil, show_in_menu: false, link_url: nil, menu_match: "^/404$", deletable: false, draft: false, skip_to_first_child: false, lft: 2, rgt: 3, depth: 1, view_template: nil, layout_template: nil, title: "Page not found", menu_title: nil},
  {parent_id: nil, path: nil, slug: "katas", custom_slug: nil, show_in_menu: true, link_url: "/katas", menu_match: "^/katas(/|/.+?|)$", deletable: false, draft: false, skip_to_first_child: false, lft: 9, rgt: 10, depth: 0, view_template: nil, layout_template: nil, title: "Katas", menu_title: nil},
  {parent_id: nil, path: nil, slug: "home", custom_slug: nil, show_in_menu: true, link_url: "/", menu_match: "^/$", deletable: false, draft: false, skip_to_first_child: false, lft: 1, rgt: 4, depth: 0, view_template: "home", layout_template: nil, title: "Home", menu_title: ""},
  {parent_id: nil, path: nil, slug: "about", custom_slug: nil, show_in_menu: true, link_url: "", menu_match: nil, deletable: true, draft: false, skip_to_first_child: false, lft: 5, rgt: 6, depth: 0, view_template: "show", layout_template: nil, title: "About", menu_title: ""},
  {parent_id: nil, path: nil, slug: "meanings", custom_slug: nil, show_in_menu: true, link_url: "/meanings", menu_match: "^/meanings(/|/.+?|)$", deletable: false, draft: false, skip_to_first_child: false, lft: 7, rgt: 8, depth: 0, view_template: "show", layout_template: nil, title: "Meanings", menu_title: ""}
])

# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::Katas::Kata
Refinery::Katas::Kata.create!([
  {title: "Taikyoku", meaning: "<p>Overview, the large view</p>\r\n<p>View the whole rather than the parts.</p>", interpretation: "", position: nil},
  {title: "Pinan", meaning: "Peace and harmony", interpretation: nil, position: nil}
])

# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::Meanings::Meaning
Refinery::Meanings::Meaning.create!([
  {japanese_name: "Hidari", english_name: "Left", description: "<p>Just left!</p>", position: nil}
])

# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::People::Person
Refinery::People::Person.create!([
  {first_name: "Libby", last_name: "Schumacher-Knight", photo_id: 2, dojo: "Brooklyn, Wellington", position: nil, grade_id: 2},
  {first_name: "Kung Fu", last_name: "Panada", photo_id: 3, dojo: "Hong Kong", position: nil, grade_id: 3},
  {first_name: "LibbyBB", last_name: "Schumacher-Knight", photo_id: 4, dojo: "Auckland", position: nil, grade_id: 4}
])


# rake db:seed:dump FILE=db/seed_content.rb APPEND=true MODELS=Refinery::People::Grade
Refinery::People::Grade.create!([
  {dan: false, level: 2, position: nil, title: "2nd kyu", kyu: true},
  {dan: true, level: 1, position: nil, title: "Senpai (1st dan)", kyu: false},
  {dan: true, level: 2, position: nil, title: "Senpai (2nd dan)", kyu: true},
  {dan: true, level: 3, position: nil, title: "Senpai (3rd dan)", kyu: false},
  {dan: true, level: 4, position: nil, title: "Sensei", kyu: false},
  {dan: true, level: 5, position: nil, title: "Kyoshi", kyu: false}
])
