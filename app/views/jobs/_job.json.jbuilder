json.extract! job, :id, :job_name, :created_at, :updated_at
json.url job_url(job, format: :json)
