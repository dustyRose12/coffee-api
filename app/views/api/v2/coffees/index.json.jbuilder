json.array! @coffees.each do |coffee|
  json.id coffee.id
  json.blend coffee.blend
  json.origin coffee.origin
  json.variety coffee.variety
  json.notes coffee.notes
end