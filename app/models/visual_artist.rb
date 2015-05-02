class VisualArtist < ActiveRecord::Base

	has_many :graphic_artists
	has_many :photographers
	has_many :directors

end
