namespace :slurp do
  desc "TODO"
  task colors: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "colors_csv.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      c = Color.new
      c.category = row["category"]
      c.color_name = row["color_name"]
      c.hex_code = row["hex_code"]
      c.code_r = row["code_r"]
      c.code_g = row["code_g"]
      c.code_b = row["code_r"]
  
      c.save
      puts "#{c.color_name}, #{c.hex_code} saved"
    end



    puts "There are now #{Color.count} rows in the transactions table"

  end


  task color_combinations: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "combinations_csv.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

    csv.each do |row|
      comb = ColorCombination.new
      comb.category_id = row["category_id"]
      comb.base_color_name = row["base_color_name"]
      comb.base_color_hex = row["base_color_hex"]
      comb.base_color_r = row["base_color_r"]
      comb.base_color_g = row["base_color_g"]
      comb.base_color_b = row["base_color_b"]
      comb.combination_color_name = row["combination_color_name"]
      comb.hex_combination_color = row["hex_combination_color"]
      comb.combination_color_r = row["combination_color_r"]
      comb.combination_color_g = row["combination_color_g"]
      comb.combination_color_b = row["combination_color_b"]
  
      comb.save
      puts "#{comb.category_id}, #{comb.base_color_name} saved"
    end



    puts "There are now #{Color_combination.count} rows in the transactions table"

  end


  task a_garment_type: :environment do

  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "type_sheet.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
  ty = AGarmentType.new
  ty.garment_type_name = row["type"]
  ty.save

  puts "#{ty.garment_type_name}, saved"
  end

puts "There are now #{AGarmentType.count} rows in the transactions table"

end

task neutral_colors: :environment do

  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "neutral_colors_csv.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
  ne = NeutralColor.new
  ne.category = row["category"]
  ne.color_name = row["color_name"]
  ne.hex_code = row["hex_code"]
  ne.code_r = row["code_r"]
  ne.code_g = row["code_g"]
  ne.code_b = row["code_r"]
  ne.save

  puts "#{ne.color_name}, saved"
  end

puts "There are now #{NeutralColor.count} rows in the transactions table"

end



end
