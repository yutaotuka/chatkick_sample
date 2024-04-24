[
  [1995, 'South Africa', 1100000, 32, 1423850],
  [1999, 'Wales', 1750000, 41, 2104500],
  [2003, 'Australia', 1837547, 48, 2208529],
  [2007, 'France', 2263223, 48, 2470660],
  [2011, 'New Zealand', 1477294, 48, 1732000],
  [2015, 'England', 2477805, 48, 2600741],
  [2019, 'Japan', nil, 48, nil],
  [2023, 'France', nil, 48, nil],
].each do |record|
  RugbyWorldCupHostCountry.create(
    held_at: Time.zone.local(record[0]),
    name: record[1],
    total_attendance: record[2],
    matches: record[3],
    stadium_capacity: record[4]
  )
end
