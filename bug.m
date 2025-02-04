function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to indexing and logical indexing.
  if isempty(input)
    result = []; % Handle empty input gracefully
    return;
  end

  input(input < 0) = 0; % problematic line when input is an empty array
  result = sum(input);
end