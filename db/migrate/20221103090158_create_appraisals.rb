class CreateAppraisals < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :appraisals, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.text :collaboration
      t.text :work_ethic
      t.text :problem_solving
      t.text :decision_making
      t.text :communication
      t.references :user, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
