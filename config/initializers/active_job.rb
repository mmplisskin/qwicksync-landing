# ActiveJob::Base.queue_adapter = :inline
# ActiveJob::Base.queue_adapter = :sucker_punch
Rails.application.config.active_job.queue_adapter = :sidekiq
