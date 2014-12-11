require 'rubyXL'

    #filepath = join("tmp", "Advisors1.xlsx")

    workbook = RubyXL::Parser.parse("Advisors.xlsx")

    #sectors_page = workbook[0].extract_data.drop(1)
    users_page = workbook[0].extract_data.drop(1)

    users_page.each do |user|
      next unless user

      #advisor_id = user[0]
      advisor_name = "#{user[0]} #{user[1]}"
      advisor_company = user[2]

      #sector_row = sectors_page.find do |row|
      #  row[2] == advisor_id
      #end

      #next unless sector_row

      #sector = Sector.with_name_translation(sector_row[1]).first ||
      #  Sector.create!(name: sector_row[1], disabled: false, ancestry: "1")

      PeopleRecomendation.create name: advisor_name, country_name: user[5], company_name: advisor_company
		#p = PeopleRecomendation.new
		#p.name = advisor_name
		#p.country_name = user[5]
		#p.company_name = advisor_company
		#p.save!
    end


