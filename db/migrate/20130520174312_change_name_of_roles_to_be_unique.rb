class ChangeNameOfRolesToBeUnique < ActiveRecord::Migration
  def change
    change_column :roles, :name, :string, unique: true
  end
end
