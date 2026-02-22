require 'fileutils'

colors = {
  1 => "#FF1493", # 東山: ピンク
  2 => "#008000", # 木場: 緑
  3 => "#FF0000", # 松原: 赤
  4 => "#FF8C00", # 八家: 黄赤(オレンジ)
  5 => "#E62B1E", # 妻鹿: 朱色
  6 => "#FFD700", # 宇佐崎: 黄色
  7 => "#0000FF"  # 中村: 青
}

dir = File.join(Dir.pwd, 'db', 'fixtures', 'icons')
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

puts "Shide SVG icons generated in db/fixtures/icons/"
