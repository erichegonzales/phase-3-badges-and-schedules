require 'pry'

def badge_maker name
    "Hello, my name is #{name.capitalize}."
end

def batch_badge_creator names
    names.map do |name|
        "Hello, my name is #{name.capitalize}."
    end
end

def assign_rooms names
    names.map.with_index(1) do |name, room| 
        "Hello, #{name.capitalize}! You'll be assigned to room #{room}!"  
    end
end

def printer names
    batch_badge_creator(names).each do |badge|
        puts badge
    end

    assign_rooms(names).each do |room|
        puts room
    end
end
