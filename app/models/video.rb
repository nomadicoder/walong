class Video < ActiveFedora::Base
  has_metadata 'descMetadata', type: VideoMetadata
  has_file_datastream "mediaContent"

  delegate :title, to: 'descMetadata', unique: true
  delegate :creator, to: 'descMetadata', unique: false
  delegate :description, to: 'descMetadata', unique: true

end
