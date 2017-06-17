class CreateReadingList < ActiveRecord::Migration[5.1]
  def change
    create_table :reading_lists do |t|
      t.string :title
    end
  end
end
