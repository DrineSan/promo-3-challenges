def pmu_format!(race_array)
  #TODO: modify the given array so that it is PMU-consistent
  race_array.each_with_index do |horse, index|
    race_array[index] = "#{index+1}-#{horse}!"
  end
  race_array.reverse!
  race_array
end




