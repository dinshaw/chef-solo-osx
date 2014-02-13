file_cache_path '/Users/dgobhai/chef-solo'

cookbook_path [
  File.expand_path("../cookbooks", __FILE__),
  File.expand_path("../site-cookbooks", __FILE__),
]

json_attribs File.expand_path("../nodes/node.json", __FILE__)
