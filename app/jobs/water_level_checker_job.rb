class WaterLevelCheckerJob < ApplicationJob
  queue_as :default
  after_perform do |job|
    # invoke another job at your time of choice
    self.class.set(:wait => 10.seconds).perform_later(job.arguments.first)
  end

  def perform(*args)
    waterLevel = rand(101)
    waterLevelRecord = WaterLevel.find(1)
    waterLevelRecord.level = waterLevel
    waterLevelRecord.save
    #waterLevelRecord.update(level: waterLevel)
    if waterLevel > 80
      User.all.each do |user|
        UserMailer.alerts(user, waterLevel).deliver_now
      end
    end
  end
end
