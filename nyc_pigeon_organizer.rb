def pigeon_organizer(hash)
  names = hash.values.map {|hash| hash.values}.flatten.uniq
  skeleton = hash.keys.each_with_object(Hash.new {|k,v| k[v] = []}) {|key, hash| hash[key]}
  template = names.each_with_object({}) {|name, organizer| organizer[name] = skeleton}
  names.each do |name|
    hash[:color].keys.each {|color| data[:color][color].include?(name)}
  end
end