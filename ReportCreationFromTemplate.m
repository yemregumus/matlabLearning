import mlreportgen.dom.*

%create report
D = Document(['FromTemplate' num2str(randi(100))], 'docx', 'mytemplate.docx');

%open report
open(D);

%create a title text object
moveToNextHole(D, 'Title');

%set text properties
append(D, 'Simple Report Creation Using MATLAB');
setObjectProperties(D, 'Bold', true);
setObjectProperties(D, 'FontSize', '32pt');
setObjectProperties(D, 'Color', 'red');
setObjectProperties(D, 'HAlign', 'center');

%create a table title text object
moveToNextHole(D, 'Table');

%set text properties
append(D, 'Patients Table');
setObjectProperties(D, 'Bold', true);
setObjectProperties(D, 'FontSize', '24pt');
setObjectProperties(D, 'Color', 'blue');
setObjectProperties(D, 'HAlign', 'center');

for ii = 1:3
      %create a table
      T = Table(magic(5));
      
      %set table properties
      T.Border = 'single';
      T.ColSep = 'single';
      T.RowSep = 'single';
      T.HAlign = 'center';
      T.Width = '100%';
      
      %add table to the report
      append(D, MATLABTable(T));
   end

%close the report
close(D);