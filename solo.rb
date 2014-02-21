file_cache_path "/Users/#{ENV['USER']}/chef-solo"
file_backup_path "/Users/#{ENV['USER']}/chef-solo"

cookbook_path [
  File.expand_path("../cookbooks", __FILE__),
  File.expand_path("../site-cookbooks", __FILE__),
]

json_attribs File.expand_path("../nodes/node.json", __FILE__)
