# db/fixtures/03_stalls.rb

Stall.seed(:id,
  # 灘のけんか祭り
  { id: 1, festival_id: 1, user_id: 2, name: "東山屋台", description: "白木造りの美しい屋台。新調された伊達綱が見どころです。", status_text: "宮入りへ移動中" },
  { id: 2, festival_id: 1, user_id: 3, name: "木場屋台", description: "港町ならではの気性が荒く力強い練りが特徴です。", status_text: "蔵出し完了・待機中" },
  { id: 3, festival_id: 1, user_id: 4, name: "松原屋台", description: "楼門前での勇壮な練り、見事な差し上げが自慢です。", status_text: "宮入りへ移動中" },
  { id: 4, festival_id: 1, user_id: 5, name: "八家屋台", description: "屋台の装飾が非常に豪華。一糸乱れぬ練り合わせを披露します。", status_text: "蔵出し完了・待機中" },
  { id: 5, festival_id: 1, user_id: 6, name: "妻鹿屋台", description: "「けんか祭り」の主役とも言える、圧倒的な迫力の屋台です。", status_text: "宮入りへ移動中" },
  { id: 6, festival_id: 1, user_id: 7, name: "宇佐崎屋台", description: "鮮やかな水色の伊達綱が目を引く美しい屋台。", status_text: "蔵出し完了・待機中" },
  { id: 7, festival_id: 1, user_id: 8, name: "中村屋台", description: "伝統ある重厚な造りと、息の合った練り合わせが見事です。", status_text: "宮入りへ移動中" },

  # 魚吹八幡神社 秋季例祭 (18台)
  { id: 8, festival_id: 2, user_id: 9, name: "糸井屋台", description: "旭陽地区。勇壮な練り上げが見どころの美しい屋台です。", status_text: "宮入りへ移動中" },
  { id: 9, festival_id: 2, user_id: 10, name: "高田屋台", description: "旭陽地区。見事な装飾と伝統の練りで観客を魅了します。", status_text: "蔵出し完了・待機中" },
  { id: 10, festival_id: 2, user_id: 11, name: "福井屋台", description: "旭陽地区。華麗な提灯と力強い練り合わせが自慢です。", status_text: "宮入りへ移動中" },
  { id: 11, festival_id: 2, user_id: 12, name: "和久屋台", description: "旭陽地区。地域が一つになる迫力の練りを見せます。", status_text: "蔵出し完了・待機中" },
  { id: 12, festival_id: 2, user_id: 13, name: "坂出屋台", description: "旭陽地区。歴史ある重厚な屋台が夜空に映えます。", status_text: "宮入中" },
  { id: 13, festival_id: 2, user_id: 14, name: "津市場屋台", description: "旭陽地区。伊達綱の美しさと息の合った差し上げが特徴。", status_text: "宮入りへ移動中" },
  { id: 14, festival_id: 2, user_id: 15, name: "北津市場屋台", description: "旭陽地区。熱気あふれる屋台練りで祭りを盛り上げます。", status_text: "蔵出し完了・待機中" },
  { id: 15, festival_id: 2, user_id: 16, name: "坂上屋台", description: "旭陽地区。豪快な練り音で観客を圧倒する屋台です。", status_text: "宮入りへ移動中" },

  { id: 16, festival_id: 2, user_id: 17, name: "熊見屋台", description: "勝原地区。優美な装飾と力強い足さばきで進みます。", status_text: "待機中" },
  { id: 17, festival_id: 2, user_id: 18, name: "丁屋台", description: "勝原地区。伝統ある意匠が特徴の美しい屋台です。", status_text: "蔵出し完了・待機中" },
  { id: 18, festival_id: 2, user_id: 19, name: "田井屋台", description: "勝原地区。華やかな提灯の光が宵宮を彩ります。", status_text: "宮入りへ移動中" },
  { id: 19, festival_id: 2, user_id: 20, name: "宮田屋台", description: "勝原地区。地域の誇りを乗せた力強い練りが特徴です。", status_text: "宮入中" },

  { id: 20, festival_id: 2, user_id: 21, name: "西土井屋台", description: "大津・網干地区。宵宮での提灯練りが非常に美しい屋台。", status_text: "宮入りへ移動中" },
  { id: 21, festival_id: 2, user_id: 22, name: "天満屋台", description: "大津・網干地区。絢爛豪華な金細工が目を引きます。", status_text: "蔵出し完了・待機中" },
  { id: 22, festival_id: 2, user_id: 23, name: "吉美屋台", description: "大津・網干地区。迫力の練り合わせで会場を沸かせます。", status_text: "宮入りへ移動中" },
  { id: 23, festival_id: 2, user_id: 24, name: "平松屋台", description: "大津・網干地区。気迫あふれる担ぎ手による見事な差し上げ。", status_text: "待機中" },
  { id: 24, festival_id: 2, user_id: 25, name: "大江島屋台", description: "大津・網干地区。美しいシルエットと力強さを兼ね備えた屋台。", status_text: "宮入りへ移動中" },
  { id: 25, festival_id: 2, user_id: 26, name: "長松屋台", description: "大津・網干地区。網干の港町らしい威勢の良い練りが特徴です。", status_text: "蔵出し完了・待機中" }
)
