namespace :db do
  # takes filenames from db/content and loads file and runs content
  Dir[Rails.root.join('db', 'content', '*.rb')].each do |filename|
    task_name = File.basename(filename, '.rb')
    desc "Seed content " + task_name + ", based on the file with the same name in `db/content/*.rb`"
    task task_name.to_sym => :environment do
      load(filename) if File.exist?(filename)
    end
  end
end
