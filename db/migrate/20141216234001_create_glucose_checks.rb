class CreateGlucoseChecks < ActiveRecord::Migration
  def change
    create_table :glucose_checks do |t|
      t.decimal :glucose

      t.timestamps
    end
  end
end
