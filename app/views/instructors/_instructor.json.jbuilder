json.extract! instructor, :id, :certification, :name, :surname, :date_of_birth, :PPS, :phone_number, :address, :manager, :username, :password, :image, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)