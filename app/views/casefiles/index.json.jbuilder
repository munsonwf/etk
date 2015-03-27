json.array!(@casefiles) do |casefile|
  json.extract! casefile, :id, :client, :matter, :file_number, :date_opened, :date_closed, :location
  json.url casefile_url(casefile, format: :json)
end
