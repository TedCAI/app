class ChangeFieldTypesForDealOverviews < ActiveRecord::Migration
  change_column :deal_overviews , :deal_headline , :text
end
