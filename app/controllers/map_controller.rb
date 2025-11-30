class MapController < ApplicationController
  def index
    @enable_polling = Setting.get(:allow_anonymous_map_updates)
  end
end
