json.array!(@books) do |book|
  json.extract! book, :title, :creator, :publisher, :dateCopyrighted, :abstract
  json.url book_url(book, format: :json)
end
