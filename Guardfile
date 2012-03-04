# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec, :cli => "--color --format nested", 
    :spec_paths => ["spec", "spec_fast"]  do
  watch(%r{^app/presenters(.+)\.rb$})     { |m| "spec_fast" } 
  watch(%r{^spec_fast/(.+)\.rb$})     { |m| "spec_fast" } 
  watch(%r{^app/services(.+)\.rb$})     { |m| "spec_fast" } 
  watch(%r{^app/roles(.+)\.rb$})     { |m| "spec_fast" } 

  watch('spec/spec_helper.rb')                        { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
end
