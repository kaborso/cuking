begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new do |t|
    t.cucumber_opts = %w(--format pretty)
  end
rescue LoadError
  task :cucumber do
    abort "Cucumber is not available."
  end
end

task :default => :cucumber
