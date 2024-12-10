import mlreportgen.report.*
import mlreportgen.dom.*

%create report
R = Report('Simple', 'pdf')

%open report
open(R)

%create a text object
T = Text('Simple Report Creation Using MATLAB')

%set text properties
T.Bold = true
T.FontSize = '32pt'
T.Color = 'red'
T.HAlign = 'center'

%add text to the report
add(R, T)

%create a surface figure that peaks 
surf(peaks)

%add the figure to the report
add(R, Figure)

%close the report
close(R)