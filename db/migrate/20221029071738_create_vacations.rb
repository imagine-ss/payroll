class CreateVacations < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :vacations, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :vacation_days
      t.text :reason
      t.string :status, default: "pending"
      t.references :user, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
