json.extract! item_reviewed, :id, :type, :author_id, :datepublished, :created_at, :updated_at
json.url item_reviewed_url(item_reviewed, format: :json)
