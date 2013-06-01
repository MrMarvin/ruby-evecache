require 'mkmf'

# swig -c++ -ruby -o evecache.cxx libevecache.i
# unless File.exists?("evecache.cxx")
# 	require 'FileUtils'
# 	FileUtils.mv("libevecache_wrap.cxx","evecache.cxx")
# end
create_makefile('evecache')
