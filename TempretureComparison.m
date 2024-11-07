% Is it going to be cold or hot today?

Tref = 20; % Reference temperature
T = input('Enter the current temperature: '); % Current temperature

if T > Tref
    disp('It is going to be hot today');
elseif T == Tref
    disp('It is going to be mild today');
else
    disp('It is going to be cold today');
end