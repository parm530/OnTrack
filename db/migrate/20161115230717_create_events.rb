class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :description
      t.datetime :start_time
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
