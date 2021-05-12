# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    my_movie_id = self.movie_id

    matching_movies = Movie.where({ :id => my_movie_id })

    the_movie = matching_movies.at(0)

    return the_movie
 end
belongs_to(:movie)
belongs_to(:actor)
#has_many(:movie, {:class_name => "Movie", :foreign_key => "actor_id"})
#  def actor
#    my_actor_id = self.movie_id

#    matching_actors = actor.where({ :id => my_actor_id })

#    the_actor = matching_actors.at(0)
    
#    return the_actor
#  end
end
