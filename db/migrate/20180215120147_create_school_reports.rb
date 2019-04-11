class CreateSchoolReports < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :emis
      t.integer :centreNo
      t.string :schoolName
      t.timestamps null: false
    end

    create_table :school_reports do |t1|
      t1.integer :school_id
      t1.integer :year_written
      t1.integer :written
      t1.integer :passed
    end
  end
end
