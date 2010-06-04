namespace :scraper do
  task :find_and_create => :environment do 
    SecretPopulator.find_and_create
  end
end