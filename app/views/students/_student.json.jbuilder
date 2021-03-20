json.extract! student, :id, :name, :father_name, :address, :department, :phone, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
