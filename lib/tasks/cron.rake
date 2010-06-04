namespace :cron => :environment do
  SecretPopulator.find_and_create
end