# Dubin Core Metadat Element Set
# Extracted from http://www.ietf.org/rfc/rfc5013.txt
#
class DublinCoreDatastream < ActiveFedora::OmDatastream

  set_terminology do |t|
    t.root(path: "fields")
    t.title
    t.creator
    t.subject
    t.description
    t.publisher
    t.contributor
    t.date
    t.type
    t.format
    t.identifier
    t.source
    t.language
    t.relation
    t.coverage
    t.rights

  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
end
