json.extract! artigo, :id, :Titulo, :Descrição, :created_at, :updated_at
json.url artigo_url(artigo, format: :json)
