def nyc_pigeon_organizer(data)
  names = []
  pigeon_list = {}
  data.each do |attribute, items|
    items.each do |feature, array|
      array.each do |name|
        names << name if !names.include?(name)
      end
    end
  end
  pigeon_list
end