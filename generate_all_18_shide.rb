require 'fileutils'

# 魚吹八幡神社の18台分の色を適当に割り当てます
colors = {
  8  => "#FFD700",  # 糸井: 黄
  9  => "#FF1493",  # 高田: ピンク
  10 => "#87CEFA",  # 福井: 水色
  11 => "#90EE90",  # 和久: 若草色
  12 => "#FFA500",  # 坂出: オレンジ
  13 => "#9370DB",  # 津市場: 紫
  14 => "#FF4500",  # 北津市場: 朱色
  15 => "#00CED1",  # 坂上: ターコイズ
  16 => "#DC143C",  # 熊見: クリムゾンレッド
  17 => "#4682B4",  # 丁: スチールブルー
  18 => "#32CD32",  # 田井: ライムグリーン
  19 => "#FF69B4",  # 宮田: ホットピンク
  20 => "#8A2BE2",  # 西土井: ブルーバイオレット
  21 => "#20B2AA",  # 天満: ライトシーグリーン
  22 => "#FF8C00",  # 吉美: ダークオレンジ
  23 => "#CD5C5C",  # 平松: インディアンレッド
  24 => "#48D1CC",  # 大江島: ミディアムターコイズ
  25 => "#DAA520"   # 長松: ゴールデンロッド
}

dir = File.join(Dir.pwd, 'public', 'icons')
FileUtils.mkdir_p(dir)

colors.each do |id, color|
  svg = <<~SVG
<svg width="60" height="60" viewBox="0 0 60 60" xmlns="http://www.w3.org/2000/svg">
  <!-- 木の棒 -->
  <rect x="28" y="5" width="4" height="50" fill="#8B4513" rx="2" />
  
  <!-- 左側の四手(紙垂) -->
  <polyline points="29,15 15,15 22,25 10,25 18,35 5,35 15,48" 
            fill="none" stroke="#{color}" stroke-width="6" stroke-linejoin="miter" stroke-linecap="square" />
            
  <!-- 右側の四手(紙垂) -->
  <polyline points="31,15 45,15 38,25 50,25 42,35 55,35 45,48" 
            fill="none" stroke="#{color}" stroke-width="6" stroke-linejoin="miter" stroke-linecap="square" />
</svg>
  SVG
  
  File.write(File.join(dir, "shide_#{id}.svg"), svg)
end

puts "18 Shide SVG icons generated in public/icons/"
