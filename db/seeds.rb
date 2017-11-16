# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Meanings extension
Refinery::Meanings::Engine.load_seed

# Added by Refinery CMS Katas extension
Refinery::Katas::Engine.load_seed


# Extensions Seed Data
# Refinery::Katas::Kata.create(title: "Pinan", meaning: "Peace and harmony")

# Seed Dump - https://github.com/rroblak/seed_dump

# rake db:seed:dump APPEND=true MODELS=Refinery::Page
Refinery::Page.create!([
  {parent_id: 1, path: nil, slug: "page-not-found", custom_slug: nil, show_in_menu: false, link_url: nil, menu_match: "^/404$", deletable: false, draft: false, skip_to_first_child: false, lft: 2, rgt: 3, depth: 1, view_template: nil, layout_template: nil, title: "Page not found", menu_title: nil},
  {parent_id: nil, path: nil, slug: "katas", custom_slug: nil, show_in_menu: true, link_url: "/katas", menu_match: "^/katas(/|/.+?|)$", deletable: false, draft: false, skip_to_first_child: false, lft: 9, rgt: 10, depth: 0, view_template: nil, layout_template: nil, title: "Katas", menu_title: nil},
  {parent_id: nil, path: nil, slug: "home", custom_slug: nil, show_in_menu: true, link_url: "/", menu_match: "^/$", deletable: false, draft: false, skip_to_first_child: false, lft: 1, rgt: 4, depth: 0, view_template: "home", layout_template: nil, title: "Home", menu_title: ""},
  {parent_id: nil, path: nil, slug: "about", custom_slug: nil, show_in_menu: true, link_url: "", menu_match: nil, deletable: true, draft: false, skip_to_first_child: false, lft: 5, rgt: 6, depth: 0, view_template: "show", layout_template: nil, title: "About", menu_title: ""},
  {parent_id: nil, path: nil, slug: "meanings", custom_slug: nil, show_in_menu: true, link_url: "/meanings", menu_match: "^/meanings(/|/.+?|)$", deletable: false, draft: false, skip_to_first_child: false, lft: 7, rgt: 8, depth: 0, view_template: "show", layout_template: nil, title: "Meanings", menu_title: ""}
])

# rake db:seed:dump APPEND=true MODELS=Refinery::Katas::Kata
Refinery::Katas::Kata.create!([
  {title: "Taikyoku", meaning: "<p>Overview, the large view</p>\r\n<p>View the whole rather than the parts.</p>", interpretation: "", position: nil},
  {title: "Pinan", meaning: "Peace and harmony", interpretation: nil, position: nil}
])

# rake db:seed:dump APPEND=true MODELS=Refinery::Meanings::Meaning
Refinery::Meanings::Meaning.create!([
  {japanese_name: "Hidari", english_name: "Left", description: "<p>Just left!</p>", position: nil}
])
