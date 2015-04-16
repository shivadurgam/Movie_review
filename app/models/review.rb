class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  #ratyrate_rateable 'visual_effects', 'original_score', 'director', 'custome_design'
end