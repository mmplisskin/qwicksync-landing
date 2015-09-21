class ProjectCleanupWorker
  include Sidekiq::Worker

  def perform(project_id)

  end
end

# ProjectCleanupWorker.new.perform(@project.id)  ## NOT BACKGROUND
ProjectCleanupWorker.perform_in(10.minutes, @project.id)
