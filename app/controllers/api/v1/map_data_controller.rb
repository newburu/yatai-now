class Api::V1::MapDataController < ApplicationController
  def index
    expires_now

    # 1. 現在開催中の祭りをすべて探し、それに属する屋台と「最新の位置情報」を取得
    stalls = Stall.joins(:festival).where(festivals: { is_active: true }).includes(:latest_location)

    if stalls.empty?
      render json: { error: "No active festivals or stalls found" }, status: :not_found
      return
    end

    # 3. 地図に表示するために必要な情報だけを抽出して、JSON用の配列を作成
    data = stalls.map do |stall|
      icon_url = if stall.icon.attached?
                   rails_storage_proxy_path(stall.icon, only_path: true)
      elsif File.exist?(Rails.root.join("public", "icons", "shide_#{stall.id}.svg"))
                   "/icons/shide_#{stall.id}.svg"
      else
                   nil
      end
      {
        id: stall.id,
        name: stall.name,
        status: stall.status_text,

        # (latest_location がまだ存在しない場合(nil) も考慮する)
        latitude: stall.latest_location&.latitude,
        longitude: stall.latest_location&.longitude,
        last_updated: stall.latest_location&.timestamp,
        icon_url: icon_url
      }
    end

    # 4. JSONデータとして返す
    render json: data
  end
end
