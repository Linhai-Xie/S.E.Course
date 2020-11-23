class AddIndexToUsersEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :email, unique: true  #代码清单 6.29：添加电子邮件唯一性约束的迁移
  end
end
