# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :minitest do
  watch(%r{^test/.+_test\.rb})  
  watch(%r{^lib/(.+)\.rb})                           { |m| "test/lib/#{m[1]}_test.rb" }  
  watch('test/test_helper.rb')                       { "test" }  
  
  # Rails example  
  watch('test/test_helper.rb')                       { "test" }  
  watch('config/routes.rb')                          { "test/routing" }  
  watch('app/controllers/application_controller.rb') { "test/controllers" }  
  watch(%r{^test/.+_test\.rb})  
  watch(%r{^app/(.+)\.rb})                           { |m| "test/#{m[1]}_test.rb" }  
  watch(%r{^lib/(.+)\.rb})                           { |m| "test/lib/#{m[1]}_test.rb" }  
  watch(%r{^app/controllers/(.+)_(controller)\.rb})  { |m| ["test/routing/#{m[1]}_routing_test.rb",  "test/#{m[2]}s/#{m[1]}_#{m[2]}_test.rb", "test/acceptance/#{m[1]}_test.rb"] }  
end