function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to indexing and logical indexing.
  if isempty(input)
    result = []; % Handle empty input gracefully
    return;
  end

  % Check for empty array before logical indexing
  if ~isempty(input)
    input(input < 0) = 0; 
  end
  result = sum(input);
end