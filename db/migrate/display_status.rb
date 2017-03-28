class DisplayStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :message
    end
  end
end
