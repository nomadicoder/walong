class BookMetadata < ActiveFedora::OmDatastream
  set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable)
    t.creator(index_as: :stored_searchable)
    t.publisher(index_as: :stored_searchable)
    t.dateCopyrighted(index_as: :stored_searchable)
    t.abstract(index_as: :stored_searchable)
  end
end
