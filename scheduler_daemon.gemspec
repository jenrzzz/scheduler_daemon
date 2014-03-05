# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "scheduler_daemon"
  s.version = "1.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steven Soroka"]
  s.date = "2013-11-18"
  s.description = "a Rails 2.3, Rails 3, and Ruby compatible scheduler daemon.  Replaces cron/rake pattern of periodically running rake tasks to perform maintenance tasks, only loading the environment ONCE."
  s.email = "ssoroka78@gmail.com"
  s.executables = ["scheduler_daemon"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "MIT-LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "bin/scheduler_daemon",
    "lib/loader/scheduler_loader.rb",
    "lib/scheduler_daemon.rb",
    "lib/scheduler_daemon/base.rb",
    "lib/scheduler_daemon/command_line_args_to_hash.rb",
    "lib/scheduler_daemon/exception_handler.rb",
    "lib/scheduler_daemon/rails/generators/scheduler/USAGE",
    "lib/scheduler_daemon/rails/generators/scheduler/scheduler_generator.rb",
    "lib/scheduler_daemon/rails/generators/scheduler/templates/README",
    "lib/scheduler_daemon/rails/generators/scheduler/templates/lib/scheduled_tasks/session_cleaner_task.rb",
    "lib/scheduler_daemon/rails/generators/scheduler_task/scheduler_task_generator.rb",
    "lib/scheduler_daemon/rails/generators/scheduler_task/templates/README",
    "lib/scheduler_daemon/rails/generators/scheduler_task/templates/scheduled_tasks/example_task.rb",
    "lib/scheduler_daemon/rails/railtie.rb",
    "lib/scheduler_daemon/scheduler_task.rb",
    "scheduler_daemon.gemspec",
    "spec/command_line_args_to_hash_spec.rb",
    "spec/scheduled_tasks/session_cleaner_task_spec.rb",
    "spec/scheduler_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/ssoroka/scheduler_daemon"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Rails 3 compatible scheduler daemon.  Replaces cron/rake pattern of periodically running rake tasks  to perform maintenance tasks in Rails apps. Scheduler Daemon is made specifically for your Rails app,  and only loads the environment once, no matter how many tasks run.  What's so great about it?  Well, I'm glad you asked!  - Only loads your Rails environment once on daemon start, not every time a task is run - Allows you to easily deploy the scheduled tasks with your Rails app instead of depending on an administrator to update crontab - It doesn't use rake or cron! - Gets you up and running with your own daemon in under 2 minutes"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.8"])
      s.add_runtime_dependency(%q<daemons>, [">= 1.0.10"])
      s.add_runtime_dependency(%q<rufus-scheduler>, ["~> 2.0.24"])
      s.add_runtime_dependency(%q<chronic>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13.0"])
    else
      # s.add_dependency(%q<scheduler_daemon>, [">= 0"])
      s.add_dependency(%q<eventmachine>, [">= 0.12.8"])
      s.add_dependency(%q<daemons>, [">= 1.0.10"])
      s.add_dependency(%q<rufus-scheduler>, ["~> 2.0.24"])
      s.add_dependency(%q<chronic>, [">= 0.2.0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.13.0"])
    end
  else
    # s.add_dependency(%q<scheduler_daemon>, [">= 0"])
    s.add_dependency(%q<eventmachine>, [">= 0.12.8"])
    s.add_dependency(%q<daemons>, [">= 1.0.10"])
    s.add_dependency(%q<rufus-scheduler>, ["~> 2.0.24"])
    s.add_dependency(%q<chronic>, [">= 0.2.0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.13.0"])
  end
end

