class Movie < ActiveRecord::Base

	belongs_to :user
	has_many :reviews
	ratyrate_rateable 'visual_effects', 'original_score', 'director', 'custome_design'

	has_attached_file :image, styles: { :medium => "400x600#" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/



    def self.search(query)  
	    if query  
	      where('title LIKE ? OR description LIKE ?', "%#{query}%", "%#{query}%")  
	    else  
	      where(nil) 
	    end  
  	end
end
