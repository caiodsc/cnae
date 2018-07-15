# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Gerando os Kinds
#puts "Gerando os Kinds"
#['Débito', 'Juros', 'Financiamento', 'Crédito', 'Empréstimo'].each do |type|
#  Kind.create!(:description => type)
#end
require 'date'
require 'rest-client'
response = RestClient.get 'https://gist.githubusercontent.com/SauloSilva/6b9c47067df849c64f6d6d1c26f48ba7/raw/3c17e4ddf283752c173f981512b3c23dc7668555/CNAB.txt'
if response.code == 200
  record_list = response.body.split("\n")
  record_list.each do |r|
    begin
      data = Date.strptime(r[1..8]+r[42..47]+"-3","%Y%m%d%H%M%S%z")# rescue nil
      p r[1..8]
      p r[42..47]
      p data.minutes
      p "############"
      #puts r[0]
      #puts r[1..8]
      #puts Date.valid_date? r[1..4].to_i, r[5..6].to_i, r[7..8].to_i, r[42..43], r[44..45], r[46..47]

      #puts r[9..18]
      #puts r[19..29]
      #puts r[30..41]
      #puts r[42..47].to_time
    rescue
      #pass
    end

  end
end