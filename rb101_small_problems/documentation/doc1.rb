
File::path 
# Returns the string representation of the path

File.path("/dev/null")          #=> "/dev/null"
File.path(Pathname.new("/tmp")) #=> "/tmp"

File#path
# Returns the pathname used to create file as a string. Does not normalize the name.

File.new("testfile").path               #=> "testfile"
File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"

# The pathname may not point to the file corresponding to file. For instance, the pathname 
# becomes void when the file has been moved or deleted.

File::path is a class method, while File#path is an instance method.