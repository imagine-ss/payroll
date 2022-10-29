class CreateVacations < ActiveRecord::Migration[7.0]
  def change
    create_table :vacations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :vacation_days
      t.text :reason
      t.references :user, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
