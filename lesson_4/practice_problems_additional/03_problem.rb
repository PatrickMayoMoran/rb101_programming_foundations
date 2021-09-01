ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 or greater

# solution 1 - using select
ages.select! { |k,v| v >= 100 }

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# solution 2 - each with object (does not mutate original)
old_people = ages.each_with_object({}) do |(k,v), d|
  if v >= 100
    d[k] = v
  end
end

# solution 3 - with reject
ages.reject! { |k,v| v < 100}

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# solution 4 - keep if
ages.keep_if { |k,v| v >= 100 }
