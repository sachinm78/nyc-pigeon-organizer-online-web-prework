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
  names.each do |new|
    pigeon_list[new] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_list[new][attribute]
      items.each do |feature, array|
        array.each do |name|
          pigeon_list[name][attribute] << feature.to_s if name == new
        end
      end
    end
  end
  pigeon_list
end