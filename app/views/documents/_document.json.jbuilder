json.id document.id.to_s
json.(document, :content, :sentiment)
json.url polymorphic_url(document, only_path: false)
