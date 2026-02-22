require 'fileutils'

colors = {
  8 => "#FFD700",  # 新在家: 黄
  9 => "#FF1493",  # 余部: ピンク
  10 => "#87CEFA", # 津市場北: 水色
  11 => "#90EE90"  # 垣内: 若草色(黄緑)
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

puts "Extra Shide SVG icons generated in public/icons/"
