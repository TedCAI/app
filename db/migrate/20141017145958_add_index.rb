class AddIndex < ActiveRecord::Migration
  def change
		add_index :bvd_cos, :bvdid
		#add_index :bvd_cos, :first_primary_naics_id
		#add_index :bvd_cos, :primary_naics
		#add_index :bvd_cos, :name
		#add_index :bvd_cos, :country
		#add_index :bvd_cos, :city
		#add_index :bvd_cos, :secondary_naics
		#add_index :bvd_cos, :bvd_major_sector

		#remove_index :bvd_cos, :bvdid
		#remove_index :bvd_cos, :first_primary_naics_id
		#remove_index :bvd_cos, :primary_naics
		#remove_index :bvd_cos, :name
		#remove_index :bvd_cos, :country
		#remove_index :bvd_cos, :city
		#remove_index :bvd_cos, :secondary_naics
		#remove_index :bvd_cos, :bvd_major_sector
  end
end
