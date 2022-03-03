json.extract! signature_request, :id, :subject, :document_id, :user_id, :created_date, :created_at, :updated_at
json.url signature_request_url(signature_request, format: :json)
