def nyc_pigeon_organizer(data)
  pig_stuff = {}
  data.each do |k1,v1|
    v1.each do |k2,v2|
      v2.each do |element|
        if pig_stuff.has_key?(element) == false
          pig_stuff[element][k1] = [k2]
        else
          pig_stuff[element][k1] << k2
        end
      end
    end
  end
  return pig_stuff
end