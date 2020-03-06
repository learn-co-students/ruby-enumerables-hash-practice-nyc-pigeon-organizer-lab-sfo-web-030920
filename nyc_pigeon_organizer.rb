require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, info|
   info.each do |color_gender_locations, name|
  
     name.each do |pigeon_name|
      if !pigeon_list[pigeon_name]
        pigeon_list[pigeon_name] = {}
      end
      if !pigeon_list[pigeon_name][attributes]
        pigeon_list[pigeon_name][attributes] = []
      end
      pigeon_list[pigeon_name][attributes].push(color_gender_locations.to_s)
      
    end
   end
 end
 pigeon_list
end




# data.each do |attribute, info|
#     info.each do |color, name|
#       pigeon_list[color[name]] = {}
#       binding.pry
#     end
#   end