# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  
  belongs_to(:director)
  # def director
  #   key = self.director_id

  #   matching_set = Director.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end
  has_many(:characters)
  has_many(:cast, {:through => :characters, :source => :actor}) # :source refers to the actor method in the charasters table
  # def cast
  #   results = []
  #   self.characters.each do |character|
  #     results.push(character.actor)
  #   end

  #   return results
  # end
end
