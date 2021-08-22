class Record < ActiveRecord::Migration[5.2]
def up
  change_column :orders, :status,:boolean, default: 0
end
end
