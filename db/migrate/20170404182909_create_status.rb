class CreateStatus < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.string :message
    end
  end
end
