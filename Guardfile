# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'livereload' do
  watch(%r{site/.+\.(css|js|html)})
end

group 'post' do
  guard 'livereload' do
    watch(%r{_posts/.+\.markdown})
  end
end
