

# pigeon_data.each do |key, value|
#   puts "#{key} ----> #{value}"
#     value.each do |new_val, names|
#     puts "#{new_val} ---- #{names}"
#       names.each do |name|
#         puts name
#       end
#     end
#   end

def nyc_pigeon_organizer(data)
new_hash = {}
  data.each do |key, value|
    value.each do |new_val, names|
      names.each do |name|
      new_hash[name] = {} unless new_hash[name]
      new_hash[name][key] = [] unless new_hash[name][key]
        new_hash[name][key] << new_val.to_s
      end
    end
  end
  pp new_hash
end