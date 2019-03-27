class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.integer :gm_id, null: false
      t.string :title, null: false
      t.string :description

      t.timestamps
    end
  end
end
