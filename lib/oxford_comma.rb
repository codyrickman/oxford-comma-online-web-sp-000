def oxford_comma(array)
  if array.length == 1
    return array[-1];
  elsif array.length == 2
    return array.join(" and ");
  else
    length = array.length - 1;
    index =  (1..length).to_a;
    new_array = ["#{array[0]},"];
    index.pop;
    index.each do |index|
      new_array << " #{array[index]},";
    end
    joined = new_array.join;
    return "#{joined} and #{array[-1]}";
  end
end
