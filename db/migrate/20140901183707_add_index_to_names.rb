class AddIndexToNames < ActiveRecord::Migration
  def change
    add_index :accounts, :name
  end
end
