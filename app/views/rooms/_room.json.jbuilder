json.extract! room, :id, :room_no, :floor, :block_id, :created_at, :updated_at
json.url room_url(room, format: :json)
