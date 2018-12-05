class CreateWatchedMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :watched_movies do |t|
      t.integer :user_id
      t.integer :movie_id
    end
  end
end
