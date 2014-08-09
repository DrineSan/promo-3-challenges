class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string    :name
      t.string    :email
    end
  end

  # create_table :posts do |t|
  #     t.integer :user_id
  #     t.string  :post_id
  #   end
  # end
end