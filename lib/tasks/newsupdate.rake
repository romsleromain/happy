namespace :company do
  desc "scrapping feed / update all companyes events"
  task update: :environment do
    puts "Task starting."
    # Company.all.each do |company|
    #   company.enrich(methode to update)
    # end
    # patern classique : NewsfeedJob.perform_later (pour heroku)
    puts "Task done."
end

