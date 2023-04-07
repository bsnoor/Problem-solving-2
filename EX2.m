f=fopen('myfile.txt','wt');
if f<0
    error('could not open the folder')
end
fprintf(f,'%-8s\n','results 2 March 2019 ');
fprintf(f,'\n');
fprintf(f,'%s','t,C ');
for t=0:5:45
    S=0.92*t+66.7;
    fprintf(f,'    %d   ',t);
    % fprintf(f,'%5.2f ',S);

end
fprintf(f,'\n');
fprintf(f,'%s','S ');
for t=0:5:45
    S=0.92*t+66.7;
    % fprintf(f,'%d  ',t);
    fprintf(f,'   %5.2f ',S);

end

fprintf(f,'\n');
fprintf(f,'%-8s\n','results 3 March 2019 ');
fprintf(f,'\n');
fprintf(f,'%s','t,C ');
for t=50:5:95
    S=0.92*t+66.7;
    fprintf(f,'     %d   ',t);
    % fprintf(f,'%5.2f ',S);

end
fprintf(f,'\n');
fprintf(f,'%s','S ');
for t=50:5:95
    S=0.92*t+66.7;
    % fprintf(f,'%d  ',t);
    fprintf(f,'   %5.2f ',S);

end
fclose(f);

f=fopen('myfile.txt');
if f<0
    error('could not open the file')
end
fscanf(f,'%c',[1 inf])
fclose(f);


