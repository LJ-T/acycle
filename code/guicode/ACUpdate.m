function ACUpdate(ac_version_offline,ac_date_offline,ac_verion_offline,ac_date_online)

    d = dialog('Position',[300 300 270 150],'Name','Acycle: Update Available');
    
    btn1 = uicontrol('Parent',d,...
               'Position',[5 10 62 30],...
               'String','Update',...
               'Callback',@update_callback);
    btn2 = uicontrol('Parent',d,...
               'Position',[70 10 135 30],...
               'String','No reminder in 3 months',...
               'Callback',@neverremind_callback);
    btn3 = uicontrol('Parent',d,...
               'Position',[205 10 60 30],...
               'String','Ignore',...
               'Callback','delete(gcf)');
           
    txt1 = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 120 210 20],...
               'String',['Your version is Acycle v',num2str(ac_version_offline)]);
           
    txt2 = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 100 210 20],...
               'String',['was released on ',num2str(ac_date_offline)]);
           
    txt3 = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 80 210 20],...
               'String','~ ~ ~ Life is short | You need acycle ~ ~ ~');
           
    txt3 = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 60 210 20],...
               'String',['NEW version is Acycle v',ac_verion_offline]);
    txt4 = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 40 210 20],...
               'String',['Release date : ',num2str(ac_date_online)]);
    
    %uiwait(d);
    
    function update_callback(btn1,event)
        url = 'https://mingsongli.com/acycle';
        web(url,'-browser')
        url = 'https://github.com/mingsongli/acycle';
        web(url,'-browser')
        url = 'https://github.com/mingsongli/acycle/blob/master/doc/UpdateLog.txt';
        web(url,'-browser')
        delete(gcf)
    end

    function neverremind_callback(btn1,event)
        url = 'https://mingsongli.com/acycle';
        web(url,'-browser')
        url = 'https://github.com/mingsongli/acycle';
        web(url,'-browser')
        url = 'https://github.com/mingsongli/acycle/blob/master/doc/UpdateLog.txt';
        web(url,'-browser')
        delete(gcf)
        fileID = fopen(which('ac_date.txt'),'r');
        formatSpec = '%s';
        ac_date = str2num(fscanf(fileID,formatSpec));
        fclose(fileID);
        fileID = fopen(which('ac_date.txt'),'w');
        ac_date = ac_date + 300;
        fprintf(fileID,'%8.f',ac_date);
        fclose(fileID);
    end
end