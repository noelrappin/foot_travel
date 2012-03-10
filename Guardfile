# A sample Guardfile
# More info at https://github.com/guard/guard#readme
group 'fast-specs' do
  guard :rspec, :cli => "--color", 
    :spec_paths => ["spec_fast"]  do
    watch(%r{^app/presenters(.+)\.rb$})     { |m| "spec_fast" } 
    watch(%r{^spec_fast/(.+)\.rb$})     { |m| "spec_fast" } 
    watch(%r{^app/services(.+)\.rb$})     { |m| "spec_fast" } 
    watch(%r{^app/roles(.+)\.rb$})     { |m| "spec_fast" } 
    watch(%r{^app/contexts(.+)\.rb$})     { |m| "spec_fast" } 
  end
end

group 'normal-specs' do
  guard :rspec, :cli => "--color", 
    :spec_paths => ["spec"]  do
    watch('spec/spec_helper.rb')                        { "spec" }
    watch('config/routes.rb')                           { "spec/routing" }
    watch('app/controllers/application_controller.rb')  { "spec/controllers" }
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
    watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  end
end
  
group 'cucumber' do
  guard 'cucumber', :cli => '--format pretty' do
    watch(%r{^features/.+\.feature$})
    watch(%r{^features/support/.+$})          { 'features' }
    watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
  end
end
