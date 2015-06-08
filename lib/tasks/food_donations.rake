require 'csv'

namespace :csv do

  desc "Import Food Bank Data"
  task :food_banks => :environment do

    csv_file_path = 'db/food_banks.csv'

    CSV.foreach(csv_file_path) do |row|
      sleep(0.2)
      pantry_site = FoodDonation.new({
        :name => row[0],
        :street_address => row[3],
        :city => row[4],
        :state => row[5],
        :zipcode => row[6],
        :phone_number => row[7],
        :hours => row[9],
        :address => row[3].strip + ', ' + row[4].strip + ', ' + row[5].strip + ', ' + row[6].strip
      })

      if pantry_site.valid?
        pantry_site.save
        puts "Row added!"
      else
        puts "Duplicate!!"
      end

    end
  end
end