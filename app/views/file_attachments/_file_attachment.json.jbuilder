json.extract! file_attachment, :id, :name, :file, :created_date, :created_at, :updated_at
json.url file_attachment_url(file_attachment, format: :json)
