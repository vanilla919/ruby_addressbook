json.array!(@intros) do |intro|
  json.extract! intro, :id, :name, :sex, :tel, :email, :position, :info, :photo
  json.url intro_url(intro, format: :json)
end
