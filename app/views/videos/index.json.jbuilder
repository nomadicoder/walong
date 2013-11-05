json.array!(@videos) do |video|
  json.extract! video, :title, :creator, :description
  json.url video_url(video, format: :json)
end
