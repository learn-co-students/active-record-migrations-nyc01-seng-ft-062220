# Learning the Mechanics of Migrate in Active Record
# Step 1 - create db/migrate/01_create_artists.rb
# Step 2 - add migration code

class CreateArtists < ActiveRecord::Migration[5.2]
    # Other methods we can use here are things like remove_table, rename_table, remove_column, add_column and others. See this list for more.

    def change
        # On the left we've given the data type we'd like to cast the column as, and on the right, 
        # we've given the name we'd like to give the column. The only thing that we're missing is the primary key. 
        # Active Record will generate that column for us, and for each row added, a key will be auto-incremented.
        create_table :artists do |t|
            t.string :name
            t.string :genre
            t.integer :age
            t.string :hometown
        end
    end

    # def up
    # end

    # def down
    # end
end