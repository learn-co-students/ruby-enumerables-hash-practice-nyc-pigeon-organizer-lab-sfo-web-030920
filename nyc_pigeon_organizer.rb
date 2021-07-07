require 'pry'

def nyc_pigeon_organizer(data)
  name_hash = {}
  data.each do |data, color|
    color.each do |colors, names|
      names.each do |name|
        if !name_hash[name]
          name_hash[name] = {}
        end
        if !name_hash[name][data]
          name_hash[name][data] = []
        end
        if !name_hash[name][data].include?(colors)
          name_hash[name][data] << colors.to_s
        end
      end
    end
  end
  name_hash
end

