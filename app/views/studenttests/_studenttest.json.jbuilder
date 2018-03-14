json.extract! studenttest, :id, :name, :lastname, :birthday, :created_at, :updated_at
json.url studenttest_url(studenttest, format: :json)
