class VideoMetadata < ActiveFedora::QualifiedDublinCoreDatastream
  set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable)
    t.creator(index_as: :stored_searchable)
    t.description(index_as: :stored_searchable)
  end
end
