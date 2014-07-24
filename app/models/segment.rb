class Segment < ActiveRecord::Base
	  mount_uploader :audio_file, AudioFileUploader
end
