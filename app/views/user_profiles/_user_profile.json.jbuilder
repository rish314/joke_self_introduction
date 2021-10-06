json.extract! user_profile, :id, :nick_name, :hash, :modifier_id, :job_id, :level_id, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
