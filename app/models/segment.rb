require_relative '../uploaders/audio_file_uploader'
class Segment < ActiveRecord::Base
	  belongs_to :buffer
	  mount_uploader :audio_file, AudioFileUploader
end
