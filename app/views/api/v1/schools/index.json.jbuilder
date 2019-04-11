json.schools do
  json.array!(@schools) do |school|
    json.emis        school.emis
    json.centreNo school.centreNo
    json.schoolName     school.schoolName
  end
end
