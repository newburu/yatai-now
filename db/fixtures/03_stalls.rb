# db/fixtures/03_stalls.rb

Stall.seed(:id,
  { id: 1, festival_id: 1, user_id: 2, name: "東山屋台", description: "白木造りの美しい屋台。新調された伊達綱が見どころです。", status_text: "宮入りへ移動中" },
  { id: 2, festival_id: 1, user_id: 3, name: "木場屋台", description: "港町ならではの気性が荒く力強い練りが特徴です。", status_text: "蔵出し完了・待機中" },
  { id: 3, festival_id: 1, user_id: 4, name: "松原屋台", description: "楼門前での勇壮な練り、見事な差し上げが自慢です。", status_text: "宮入りへ移動中" },
  { id: 4, festival_id: 1, user_id: 5, name: "八家屋台", description: "屋台の装飾が非常に豪華。一糸乱れぬ練り合わせを披露します。", status_text: "蔵出し完了・待機中" },
  { id: 5, festival_id: 1, user_id: 6, name: "妻鹿屋台", description: "「けんか祭り」の主役とも言える、圧倒的な迫力の屋台です。", status_text: "宮入りへ移動中" },
  { id: 6, festival_id: 1, user_id: 7, name: "宇佐崎屋台", description: "鮮やかな水色の伊達綱が目を引く美しい屋台。", status_text: "蔵出し完了・待機中" },
  { id: 7, festival_id: 1, user_id: 8, name: "中村屋台", description: "伝統ある重厚な造りと、息の合った練り合わせが見事です。", status_text: "宮入りへ移動中" }
)
