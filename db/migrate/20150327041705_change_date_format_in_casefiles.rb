class ChangeDateFormatInCasefiles < ActiveRecord::Migration
	  def up
	    change_column :casefiles, :date_opened, :date
	  end

	  def down
	    change_column :casefiles, :date_opened, :datetime
	  end
	end
