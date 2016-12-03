json.success @success
json.message @message
json.merge! nil_to_string(JSON.parse(yield))
json.status_code @status_code if @status_code
