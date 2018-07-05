class UpdateArtistAndGenreNameFields < ActiveRecord::Migration
  def change
    rename_column :artists, :name, :artist_name
    rename_column :genres, :name, :genre_name
  end
end
