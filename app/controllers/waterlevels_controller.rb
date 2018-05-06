class WaterlevelsController < ApplicationController
  def index
    waterLevelRecord = WaterLevel.find(1)
    @waterLevel = waterLevelRecord.level
  end
end
