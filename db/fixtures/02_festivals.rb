# db/fixtures/02_festivals.rb

Festival.seed(:id,
  { id: 1, name: "灘のけんか祭り 2026", is_active: true, start_date: Date.today, end_date: Date.today + 2.days },
  { id: 2, name: "魚吹八幡神社 秋季例祭 2026", is_active: true, start_date: Date.today, end_date: Date.today + 2.days }
)
