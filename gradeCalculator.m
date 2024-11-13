%below is our grade array we will determine number of students failed and passed and then display text 
%Number of students failed: n
%Number of students passed: m
Grades = [40, 55, 90, 83, 62, 30, 50, 100, 70, 45, 67, 53, 86, 83, 42, 30, 60, 90, 72, 47];
failed = 0;
passed = 0;

%loop through the grades array
for i = 1:length(Grades)
  %if the grade is less than 50, increment the number of students failed
  if Grades(i) < 50
      failed = failed + 1;
  %if the grade is greater than or equal to 50, increment the number of students passed
  else
      passed = passed + 1;
  end
end
%display the number of students failed and passed
disp(['Number of students failed: ', num2str(failed)]);
disp(['Number of students passed: ', num2str(passed)]);