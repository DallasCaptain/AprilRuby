class RemoveColumnCcinfoFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :ccinfo, :string
  end
end
