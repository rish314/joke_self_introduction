json.extract! profile, :id, :nick_name, :hash, :job_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
