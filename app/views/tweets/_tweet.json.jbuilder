json.partial! 'documents/document', document: tweet
json.(tweet, :username, :details_url)
