class RemoveAllowAnonymousMapUpdatesFromFestivals < ActiveRecord::Migration[8.1]
  def change
    remove_column :festivals, :allow_anonymous_map_updates, :boolean
  end
end
