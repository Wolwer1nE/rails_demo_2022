class CreateWishlists < ActiveRecord::Migration[7.0]
  def change

    create_table :wishlists do |t|
      t.string :title
      t.references :user
      t.timestamps
    end

    create_table :wish_states do |t|
      t.string :title
      t.timestamps
    end

    create_table :wishes do |t|
      t.string :title
      t.references :wishlist
      t.references :wish_state
      t.timestamps
    end

    create_table :wish_marks do |t|
      t.references :user
      t.references :wish
      t.timestamps
    end

  end
end
