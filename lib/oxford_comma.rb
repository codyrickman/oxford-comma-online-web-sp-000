def oxford_comma(array)
  if array.length == 1
    return array;
  elsif array.length == 2
    retrun array.join("and");
  else
    length = array.length - 1;
    index =  (1..length).to_a;
    new_array = [];
    index.each do |index|
      new_array << "#{array[index]}, ";
    end
    joined = new_array.join;
    return "#{joined} and #{array[-1]}";
  end
end
