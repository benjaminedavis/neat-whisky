class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :whiskeys, :type, :wtype
  end
end
