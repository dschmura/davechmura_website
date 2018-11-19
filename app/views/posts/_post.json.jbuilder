json.extract! post, :id, :title, :status, :audience, :created_at, :updated_at
json.url post_url(post, format: :json)
