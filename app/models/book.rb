class Book < ActiveFedora::Base
  has_metadata 'descMetadata', type: BookMetadata

  delegate :title, to: 'descMetadata', unique: true
  delegate :creator, to: 'descMetadata', unique: true
  delegate :publisher, to: 'descMetadata', unique: true
  delegate :dateCopyrighted, to: 'descMetadata', unique: true
  delegate :abstract, to: 'descMetadata', unique: true

end
