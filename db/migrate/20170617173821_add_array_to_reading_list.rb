class AddArrayToReadingList < ActiveRecord::Migration[5.1]
  def change
    add_column :reading_lists, :articles, :integer, array: true, default: []

  end
end
