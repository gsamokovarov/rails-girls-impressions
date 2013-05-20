class ChangeNameOfRolesToNotAllowNull < ActiveRecord::Migration
  def change
    change_column_null :roles, :name, false
  end
end
