function varargout = eTimeOptGUI(varargin)
% TIMEOPTGUI MATLAB code for eTimeOptGUI.fig
%      TIMEOPTGUI, by itself, creates a new TIMEOPTGUI or raises the existing
%      singleton*.
%
%      H = TIMEOPTGUI returns the handle to a new TIMEOPTGUI or the handle to
%      the existing singleton*.
%
%      TIMEOPTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIMEOPTGUI.M with the given input arguments.
%
%      TIMEOPTGUI('Property','Value',...) creates a new TIMEOPTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before eTimeOptGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to eTimeOptGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help eTimeOptGUI

% Last Modified by GUIDE v2.5 23-May-2019 22:44:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @eTimeOptGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @eTimeOptGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before eTimeOptGUI is made visible.
function eTimeOptGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to eTimeOptGUI (see VARARGIN)

% Choose default command line output for eTimeOptGUI
handles.output = hObject;
%
handles.hmain = gcf;
%
set(0,'Units','normalized') % set units as normalized
set(gcf,'units','norm') % set location
h=get(gcf,'Children');  % get all content
h1=findobj(h,'FontUnits','norm');  % find all font units as points
set(h1,'FontUnits','points','FontSize',11.5);  % set as norm
h2=findobj(h,'FontUnits','points');  % find all font units as points
set(h2,'FontUnits','points','FontSize',11.5);  % set as norm

set(handles.hmain,'position',[0.2,0.3,0.35,0.6]) % set position

set(handles.text2,'position',[0.044,0.91,0.1,0.05])
set(handles.text3,'position',[0.16,0.91,0.6,0.05])
set(handles.checkbox2,'position',[0.83,0.95,0.159,0.05])
set(handles.checkbox6,'position',[0.662,0.892,0.165,0.05])
set(handles.popupmenu1,'position',[0.83,0.878,0.159,0.056])

set(handles.panel_sedrate,'position',[0.05,0.71,0.9,0.194])
set(handles.radiobutton1,'position',[0.023,0.515,0.162,0.338])
set(handles.radiobutton2,'position',[0.023,0.147,0.132,0.338])
set(handles.text4,'position',[0.185,0.618,0.132,0.191])
set(handles.edit1,'position',[0.325,0.55,0.1,0.3])
set(handles.text5,'position',[0.439,0.618,0.14,0.191])
set(handles.edit2,'position',[0.596,0.55,0.1,0.3])
set(handles.text6,'position',[0.713,0.618,0.132,0.191])
set(handles.edit3,'position',[0.845,0.55,0.1,0.3])
set(handles.text7,'position',[0.185,0.13,0.764,0.3])

set(handles.uipanelfreq,'position',[0.05,0.185,0.9,0.527])
set(handles.radiobutton3,'position',[0.023,0.85,0.281,0.112])
set(handles.edit4,'position',[0.32,0.849,0.117,0.112])
set(handles.text8,'position',[0.44,0.84,0.1,0.112])

set(handles.radiobutton4,'position',[0.023,0.7,0.25,0.112])
set(handles.edit5,'position',[0.27,0.7,0.7,0.1])
set(handles.text10,'position',[0.07,0.58,0.283,0.07])
set(handles.edit6,'position',[0.27,0.566,0.7,0.1])

set(handles.radiobutton5,'position',[0.023,0.41,0.48,0.112])
set(handles.radiobutton6,'position',[0.51,0.41,0.48,0.112])
set(handles.text11,'position',[0.05,0.32,0.513,0.07])
set(handles.text12,'position',[0.07,0.2,0.1,0.07])
set(handles.text13,'position',[0.324,0.2,0.1,0.07])
set(handles.text14,'position',[0.58,0.2,0.1,0.07])
set(handles.edit7,'position',[0.171,0.19,0.12,0.09])
set(handles.edit8,'position',[0.43,0.19,0.12,0.09])
set(handles.edit9,'position',[0.7,0.19,0.28,0.09])

set(handles.text15,'position',[0.05,0.05,0.281,0.08])
set(handles.radiobutton7,'position',[0.37,0.05,0.24,0.08])
set(handles.radiobutton8,'position',[0.67,0.05,0.24,0.08])

set(handles.uipanelMC,'position',[0.05,0.03,0.5,0.15])
set(handles.checkbox1,'position',[0.07,0.18,0.595,0.59])
set(handles.edit10,'position',[0.03,0.267,0.203,0.556])
set(handles.text17,'position',[0.24,0.378,0.15,0.356])
set(handles.edit11,'position',[0.39,0.311,0.16,0.556])
set(handles.text18,'position',[0.55,0.4,0.1,0.356])
set(handles.radiobutton9,'position',[0.665,0.578,0.275,0.511])
set(handles.radiobutton10,'position',[0.665,0.1,0.275,0.511])

set(handles.pushbutton1,'position',[0.84,0.06,0.11,0.1])
set(handles.checkbox1,'position',[0.57,0.11,0.26,0.056])
set(handles.checkbox4,'position',[0.57,0.05,0.26,0.056])

set(handles.text16,'position',[0.05,0.96,0.78,0.04])
set(handles.text16,'FontSize',10);  % set as norm

set(gcf,'Name','Acycle: eTimeOpt')
dat = varargin{1}.current_data;  % data
handles.unit = varargin{1}.unit; % unit
handles.unit_type = varargin{1}.unit_type; % unit type
handles.slash_v = varargin{1}.slash_v;
handles.acfigmain = varargin{1}.acfigmain;

handles.filename = varargin{1}.data_name; % save dataname
handles.dat_name = varargin{1}.dat_name; % save dataname
handles.unit = varargin{1}.unit; % save unit
handles.path_temp = varargin{1}.path_temp; % save path
handles.listbox_acmain = varargin{1}.listbox_acmain; % save path
handles.edit_acfigmain_dir = varargin{1}.edit_acfigmain_dir;
%
diffx = diff(dat(:,1));
% check data
if sum(diffx <= 0) > 0
    disp('>>  Waning: data has to be in ascending order, no duplicated number allowed')
    dat = sortrows(dat);
end
% check data
if abs((max(diffx)-min(diffx))/2) > eps('single');
    hwarn1 = warndlg('Data may not be evenly spaced!');
end
%
datx = dat(:,1);  % unit should be cm
daty = dat(:,2);
npts = length(datx);
dt = median(diff(dat(:,1)));
dtr = dt;
%
handles.window = 0.35 * abs(datx(end) - datx(1));
handles.step = 0.65 * abs(datx(end)-datx(1))/200;
set(handles.edit10,'String',num2str(handles.window))
set(handles.edit11,'String',num2str(handles.step))

if handles.step <= dt;
    handles.step = dt;
end
% check unit, set to cm
if handles.unit_type == 0
    hwarn = warndlg('Is the Unit m? If not, set unit in Acycle and restart eTimeOpt');
    dat(:,1) = dat(:,1)*100;
    dt = dt * 100;
    dtr = dt*100;
elseif handles.unit_type == 2
    hwarn = warndlg('Unit type is Time! Make sure the unit is m');
else
    if strcmp(handles.unit,'m')
        dat(:,1) = dat(:,1)*100;
        dtr = dt*100;dt = dt * 100;
        %msgbox('Unit is m, now changes to cm','Unit transform')
    elseif strcmp(handles.unit,'dm')
        dat(:,1) = dat(:,1)*10;
        dtr = dt*10;dt = dt * 10;
        msgbox('Unit is dm, now changes to cm','Unit transform')
    elseif strcmp(handles.unit,'mm')
        dat(:,1) = dat(:,1)/10;
        dtr = dt/10;dt = dt / 10;
        msgbox('Unit is mm, now changes to cm','Unit transform')
    elseif strcmp(handles.unit,'km')
        dat(:,1) = dat(:,1)* 1000 * 100;
        dtr = dt*100*1000;dt = dt * 100*1000;
        msgbox('Unit is km, now changes to cm','Unit transform')
    elseif strcmp(handles.unit,'ft')
        dat(:,1) = dat(:,1)* 30.48;
        dtr = dt * 30.48; dt = dt * 30.48;
        msgbox('Unit is ft, now changes to cm','Unit transform')
    end
end
%
set(handles.text3,'String',handles.dat_name)

set(handles.radiobutton1,'Value',1)
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',1)
set(handles.edit4,'Enable','on')
set(handles.edit5,'Enable','off')
set(handles.edit6,'Enable','off')
set(handles.radiobutton4,'Value',0)
set(handles.radiobutton5,'Value',1)
set(handles.radiobutton6,'Value',0)
set(handles.radiobutton7,'Value',1)
set(handles.radiobutton8,'Value',0)
set(handles.checkbox1,'Value',0)
set(handles.checkbox2,'Value',1)
set(handles.radiobutton9,'Value',1)
set(handles.radiobutton10,'Value',0)
set(handles.checkbox4,'Value',1)
set(handles.edit10,'Enable','on')

handles.dat = dat; % save data
% set default sedmin, sedmax
handles.sedmin = 0;
handles.sedmax = 100;
handles.numsed = 200;
handles.fl = 0.035;
handles.fh = 0.065;
handles.targetE = [405.6795,130.719,123.839,98.86307,94.87666];
handles.targetP = [23.62069,22.31868,19.06768,18.91979];

fnyq = handles.sedmin/(2*dtr);
if handles.fh > fnyq
    sedmin = 2 * dtr * handles.fh;
    handles.sedmin = sedmin;
end
set(handles.edit1,'String',num2str(handles.sedmin))
set(handles.text18,'String',handles.unit)
fray = handles.sedmax/(npts * dtr);
flow = 1/max(handles.targetE);
if fray > flow
    sedmax = npts * dtr * flow;
    handles.sedmax = sedmax;
end
set(handles.edit2,'String',num2str(handles.sedmax))
%
sr = linspace(handles.sedmin,handles.sedmax,handles.numsed);
sedinfo = ['test sed. rates of ',num2str(sr(1),'% 3.3f'),', ', num2str(sr(2),'% 3.3f'),...
    ', ',num2str(sr(3),'% 3.3f'),', ..., ',num2str(sr(end),'% 3.3f'),' cm/kyr'];
set(handles.text7,'String',sedinfo)

s_push_ok = sprintf('Check parameters in BLUE\nclick OK to run eTimeOpt');
set(handles.pushbutton1,'TooltipString',s_push_ok)
%
handles.npts = npts;
handles.dt = dt;
handles.dtr = dtr;
handles.nsim = 0;
handles.linLog = 2;
handles.fit = 1;
handles.roll = 10^12;
handles.detrend = 1;
handles.cormethod = 2;
handles.genplot = 1;
handles.flipy = 1;
handles.normal = 0;
handles.age = 0;
handles.plot_2d = 1;
handles.time_0pad = 1;  % updated acycle v1.2.1
handles.padtype = 1; % updated acycle v1.2.1
%
try figure(hwarn)
catch
end
try figure(hwarn1)
catch
end
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes eTimeOptGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
acfig_etimeopt = gcf;
sedmin = str2double(get(handles.edit1,'String'));
sedmax = str2double(get(handles.edit2,'String'));
numsed = str2double(get(handles.edit3,'String'));

fl = str2double(get(handles.edit7,'String'));
fh = str2double(get(handles.edit8,'String'));
dat = handles.dat;  % unit is cm
window = str2double(get(handles.edit10,'String'));  % set unit
step = str2double(get(handles.edit11,'String'));   % set unit
targetE = strread(get(handles.edit5,'String'));
targetP = strread(get(handles.edit6,'String'));
normal = get(handles.checkbox1,'Value');
linLog = handles.linLog; 
fit = handles.fit;
roll = handles.roll;
detrend = handles.detrend;
cormethod = handles.cormethod;

%
% check unit, change units of window and step to cm
if handles.unit_type == 0
    window = window*100;
    step = step*100;
    hwarn = warndlg('Is the Unit m? If not, set unit in Acycle and restart eTimeOpt');
elseif handles.unit_type == 2
    
else
    if strcmp(handles.unit,'cm')
        window = window;
        step = step;
    elseif strcmp(handles.unit,'m')
        window = window*100;
        step = step*100;
    elseif strcmp(handles.unit,'dm')
        window = window*10;
        step = step*10;
    elseif strcmp(handles.unit,'mm')
        window = window/10;
        step = step/10;
    elseif strcmp(handles.unit,'km')
        window = window*100*1000;
        step = step*100*1000;
    elseif strcmp(handles.unit,'ft')
        window = window * 30.48*100;
        step = step* 30.48*100;
    end
end
%dat
if handles.time_0pad == 1
    % restore time/depth
    dat = zeropad2(dat,window,handles.padtype);
end
%window,step
[senv,spow,sopt,x_grid,y_grid,sr_p] = ...
    eTimeOpt(dat,window,step,sedmin,sedmax,numsed,0,linLog,fit,fl,fh,roll,...
    targetE,targetP,normal,detrend,cormethod,0);
%
% check unit
if handles.unit_type == 0
    y_grid = y_grid/100;
elseif handles.unit_type == 2
    
else
    if strcmp(handles.unit,'m')
        y_grid = y_grid/100;
        window = window/100;
    elseif strcmp(handles.unit,'dm')
        y_grid = y_grid/10;
        window = window/10;
    elseif strcmp(handles.unit,'mm')
        y_grid = y_grid*10;
        window = window*10;
    elseif strcmp(handles.unit,'km')
        y_grid = y_grid/100/1000;
        window = window/100/1000;
    elseif strcmp(handles.unit,'ft')
        y_grid = y_grid * 30.48/100;
        window = window* 30.48/100;
    end
end

eTimeOptfig = figure;
whitebg('white');

subplot(1,3,1)
if handles.plot_2d == 1
    pcolor(x_grid,y_grid,senv)
    set(gca,'XMinorTick','on','YMinorTick','on')
    set(gca, 'TickDir', 'out')
else
    surf(x_grid,y_grid,senv)
    set(gca, 'TickDir', 'out')
end
colormap parula
shading interp
xlabel('Sedimentation rate (cm/kyr)')
title('r^2_e_n_v_e_l_o_p_e')
if handles.unit_type == 0;
    ylabel(['Unit (',handles.unit,')'])
elseif handles.unit_type == 1;
    ylabel(['Depth (',handles.unit,')'])
else
    ylabel(['Time (',handles.unit,')'])
end
if handles.flipy == 1;
    set(gca,'Ydir','reverse')
end
colorbar('southoutside')

subplot(1,3,2)
if handles.plot_2d == 1
    pcolor(x_grid,y_grid,spow)
    set(gca,'XMinorTick','on','YMinorTick','on')
    set(gca, 'TickDir', 'out')
else
    surf(x_grid,y_grid,spow)
    set(gca, 'TickDir', 'out')
end
colormap parula
shading interp
xlabel('Sedimentation rate (cm/kyr)')
title('r^2_p_o_w_e_r')
if handles.flipy == 1;
    set(gca,'Ydir','reverse')
end
colorbar('southoutside')

subplot(1,3,3)
if handles.plot_2d == 1
    pcolor(x_grid,y_grid,sopt)
    set(gca,'XMinorTick','on','YMinorTick','on')
    set(gca, 'TickDir', 'out')
else
    surf(x_grid,y_grid,sopt)
    set(gca, 'TickDir', 'out')
end
colormap parula
shading interp
xlabel('Sedimentation rate (cm/kyr)')
title('r^2_o_p_t')
if handles.flipy == 1;
    set(gca,'Ydir','reverse')
end
%colorbar
colorbar('southoutside')

dat_name = handles.dat_name;
acfig_name = [dat_name,'-',num2str(window),handles.unit,'win-',num2str(sedmin),'-',num2str(sedmax),'SAR-eTimeOpt.AC.fig'];
% Log name
eTimeOpt_name = [dat_name,'-',num2str(window),handles.unit,'win-',num2str(sedmin),'-',num2str(sedmax),'SAR-eTimeOpt.fig'];
savefile_name = [dat_name,'-',num2str(window),handles.unit,'win-',num2str(sedmin),'-',num2str(sedmax),'SAR-eTimeOpt.txt'];

CDac_pwd;

if exist([pwd,handles.slash_v,acfig_name]) || exist([pwd,handles.slash_v,eTimeOpt_name])|| exist([pwd,handles.slash_v,savefile_name])
    for i = 1:100
        acfig_name = [dat_name,'-',num2str(window),handles.unit,'win-',num2str(sedmin),'-',num2str(sedmax),'SAR-eTimeOpt-',num2str(i),'.AC.fig'];
        eTimeOpt_name   = [dat_name,'-',num2str(window),handles.unit,'win-',num2str(sedmin),'-',num2str(sedmax),'SAR-eTimeOpt-',num2str(i),'.fig'];
        savefile_name = [dat_name,'-',num2str(window),handles.unit,'win-',num2str(sedmin),'-',num2str(sedmax),'SAR-eTimeOpt-',num2str(i),'.txt'];

        if exist([pwd,handles.slash_v,acfig_name]) || exist([pwd,handles.slash_v,eTimeOpt_name])|| exist([pwd,handles.slash_v,savefile_name])
        else
            break
        end
    end
end

savefig(gcf,eTimeOpt_name)
savefig(acfig_etimeopt,acfig_name)

fileID = fopen(savefile_name,'w+');
fprintf(fileID,'%s\n','%location,Optimal Sed.Rate,r^2power,Optimal Sed.Rate,r^2envelope,Optimal Sed.Rate,r^2opt'); 
for row = 1: length(y_grid);
    fprintf(fileID,'%s, %s, %s, %s, %s, %s, %s\n',y_grid(row),sr_p(row,1),sr_p(row,2),sr_p(row,3),sr_p(row,4),sr_p(row,5),sr_p(row,6));
end
fclose(fileID);
disp('>> Done. See Acycle main window for the output figures')
figure(handles.acfigmain);
refreshcolor;
cd(pre_dirML); % return view dir
figure(eTimeOptfig); % return plot

guidata(hObject,handles)

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Outputs from this function are returned to the command line.
function varargout = eTimeOptGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
val = get(handles.radiobutton1,'Value');
if val == 1
    set(handles.radiobutton2, 'Value', 0);
    handles.linLog = 2;
    sr = linspace(handles.sedmin,handles.sedmax,handles.numsed);
else
    set (handles.radiobutton2, 'Value', 1);
    handles.linLog = 1;
    sedinc = (log10(handles.sedmax) - log10(handles.sedmin))/(handles.numsed-1);
    sr = zeros(1,handles.numsed);
    for ii = 1: handles.numsed
        sr(ii) = 10^(  log10(handles.sedmin)  +  (ii-1) * sedinc ) ;
    end
end
sedinfo = ['test sed. rates of ',num2str(sr(1),'% 3.3f'),', ', num2str(sr(2),'% 3.3f'),...
    ', ',num2str(sr(3),'% 3.3f'),', ..., ',num2str(sr(end),'% 3.3f'),' cm/kyr'];
set(handles.text7,'String',sedinfo)
guidata(hObject, handles);

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
val = get(handles.radiobutton2,'Value');
if val == 1
    set(handles.radiobutton1, 'Value', 0);
    handles.linLog = 1;
    sedinc = (log10(handles.sedmax) - log10(handles.sedmin))/(handles.numsed-1);
    sr = zeros(1,handles.numsed);
    for ii = 1: handles.numsed
        sr(ii) = 10^(  log10(handles.sedmin)  +  (ii-1) * sedinc ) ;
    end
else
    set (handles.radiobutton1, 'Value', 1);
    handles.linLog = 2;
    sr = linspace(handles.sedmin,handles.sedmax,handles.numsed);
end
sedinfo = ['test sed. rates of ',num2str(sr(1),'% 3.3f'),', ', num2str(sr(2),'% 3.3f'),...
    ', ',num2str(sr(3),'% 3.3f'),', ..., ',num2str(sr(end),'% 3.3f'),' cm/kyr'];
set(handles.text7,'String',sedinfo)
guidata(hObject, handles);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
handles.sedmin = str2double(get(hObject,'String'));
dt = handles.dt;
fnyq = handles.sedmin/(2*dt);
if handles.fh > fnyq
    sedmin = 2 * dt * handles.fh;
    msgbox(['Minimum sed. rate may beyond the detection limit ', num2str(sedmin),' cm/kyr'],'Warning')
end
sr = linspace(handles.sedmin,handles.sedmax,handles.numsed);
sedinfo = ['test sed. rates of ',num2str(sr(1),'% 3.3f'),', ', num2str(sr(2),'% 3.3f'),...
    ', ',num2str(sr(3),'% 3.3f'),', ..., ',num2str(sr(end),'% 3.3f'),' cm/kyr'];
set(handles.text7,'String',sedinfo)

guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
handles.sedmax = str2double(get(hObject,'String'));
% warning
dt = handles.dt;
fray = handles.sedmax/(handles.npts * dt);
flow = 1/max(handles.targetP);
if fray > handles.fl
    sedmax = handles.npts * dt * flow;
    msgbox(['Maximum sed. rate may beyond the detection limit ', num2str(sedmax),' cm/kyr'],'Warning')
end
% display
sr = linspace(handles.sedmin,handles.sedmax,handles.numsed);
sedinfo = ['test sed. rates of ',num2str(sr(1),'% 3.3f'),', ', num2str(sr(2),'% 3.3f'),...
    ', ',num2str(sr(3),'% 3.3f'),', ..., ',num2str(sr(end),'% 3.3f'),' cm/kyr'];
set(handles.text7,'String',sedinfo)

guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
handles.numsed = str2double(get(hObject,'String'));
sr = linspace(handles.sedmin,handles.sedmax,handles.numsed);
if handles.numsed > 3
    sedinfo = ['test sed. rates of ',num2str(sr(1),'% 3.3f'),', ', num2str(sr(2),'% 3.3f'),...
    ', ',num2str(sr(3),'% 3.3f'),', ..., ',num2str(sr(end),'% 3.3f'),' cm/kyr'];
    set(handles.text7,'String',sedinfo)
elseif handles.numsed == 3
    sedinfo = ['test sed. rates of ',num2str(sr(1),'% 3.3f'),', ', num2str(sr(2),'% 3.3f'),...
        ', ',num2str(sr(end),'% 3.3f'),' cm/kyr'];
    set(handles.text7,'String',sedinfo)
elseif handles.numsed == 2
    sedinfo = ['test sed. rates of ',num2str(sr(1),'% 3.3f'),', ', num2str(sr(2),'% 3.3f'),' cm/kyr'];
    set(handles.text7,'String',sedinfo)
else
    msgbox('Number should be no less than 2','Warning')
end

if handles.numsed > 500
    msgbox('Large number, may be very slow','Warning')
end
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
val = get(handles.radiobutton3,'Value');
if val == 1
    set(handles.radiobutton4, 'Value', 0);
    handles.EP = 2;
    set(handles.edit4, 'Enable', 'on');
    set(handles.edit5, 'Enable', 'off');
    set(handles.edit6, 'Enable', 'off');
else
    set (handles.radiobutton4, 'Value', 1);
    handles.EP = 1;
    set(handles.edit4, 'Enable', 'off');
    set(handles.edit5, 'Enable', 'on');
    set(handles.edit6, 'Enable', 'on');
end
guidata(hObject, handles);


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
t1 = str2double(get(handles.edit4,'String'));
if t1 < 0
    msgbox('Age cannot < 0 Ma','Error')
elseif t1 > 4500
    msgbox('Age cannot > 4500 Ma','Error')
end
if t1 > 249
    msgbox('Age > 249 Ma, beyond age limit of Laskar solutions','Reminder')
end
handles.age = t1;
t1= 1000 * t1; % Ma to ka
a = load('La04.mat');
a = a.data;
if t1<= 2500
    laecc = a(1:5000,2);
    lapre = a(1:5000,4);
elseif t1>= 249000-2500
    laecc = a(end-5000:end,2);
    lapre = a(end-5000:end,4);
else
    laecc = a(t1-2499:t1+2500,2);
    lapre = a(t1-2499:t1+2500,4);
end
[po1,fd1] = periodogram(laecc-mean(laecc),[],[],1);
po1=po1(fd1 > .002);
fd1=fd1(fd1 > .002);
[pks] = findpeaks(po1);
nn=5; tE =[];[~,val] = findnpk(pks,nn);
for i=1:nn; tE(i) = 1/fd1(po1 == val(i)); end
tE = sort(tE,'descend');
tEin = [num2str(tE(1),'% .4f'),' ',num2str(tE(2),'% .4f'),' ',...
    num2str(tE(3),'% .4f'),' ',num2str(tE(4),'% .4f'),' ',...
    num2str(tE(5),'% .4f')];
[po2,fd2] = periodogram(lapre,[],[],1);
[pks] = findpeaks(po2);
nn=4; tP =[];[~,val] = findnpk(pks,nn);
for i=1:nn; tP(i) = 1/fd2(po2 == val(i)); end
tP = sort(tP,'descend');
tPin = [num2str(tP(1),'% .4f'),' ',num2str(tP(2),'% .4f'),' ',...
    num2str(tP(3),'% .4f'),' ',num2str(tP(4),'% .4f')];
set(handles.edit5,'String',tEin)
set(handles.edit6,'String',tPin)
cP = 1/2 * (1/tP(1) + 1/tP(end));
cP0 = 1/2 * (1/23.6207 + 1/18.9198);
flP = 0.035/cP0*cP;
fhP = 0.065/cP0*cP;
cE = 1/2 * (1/tE(2) + 1/tE(end));
cE0 = 1/2 * (1/130.719 + 1/94.8767);
flE = 0.007/cE0*cE;
fhE = 0.0115/cE0*cE;

val = get(handles.radiobutton5,'Value');
if val == 1
    %fit precession
    handles.fl = flP;
    handles.fh = fhP;
else
    % fit short ecc
    handles.fl = flE;
    handles.fh = fhE;
end
set(handles.edit7,'String',num2str(handles.fl,'% .4f'))
set(handles.edit8,'String',num2str(handles.fh,'% .4f'))
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
val = get(handles.radiobutton4,'Value');
if val == 1
    set(handles.radiobutton3, 'Value', 0);
    handles.EP = 2;
    set(handles.edit4, 'Enable', 'off');
    set(handles.edit5, 'Enable', 'on');
    set(handles.edit6, 'Enable', 'on');
else
    set (handles.radiobutton3, 'Value', 1);
    handles.EP = 1;
    set(handles.edit4, 'Enable', 'on');
    set(handles.edit5, 'Enable', 'off');
    set(handles.edit6, 'Enable', 'off');
end
guidata(hObject, handles);


function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
val = get(handles.radiobutton5,'Value');
if val == 1
    % fit precession
    set(handles.radiobutton6, 'Value', 0);
    handles.fit = 1;
    handles.fl = 0.035;
    handles.fh = 0.065;
    handles.roll = 10^12;
else
    % fit short eccentricity
    set (handles.radiobutton6, 'Value', 1);
    handles.fit = 2;
    handles.fl = 0.007;
    handles.fh = 0.0115;
    handles.roll = 10^12;
end
set(handles.edit7, 'String', num2str(handles.fl));
set(handles.edit8, 'String', num2str(handles.fh));
set(handles.edit9, 'String', num2str(handles.roll));
guidata(hObject, handles);

% --- Executes on button press in radiobutton5.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
val = get(handles.radiobutton6,'Value');
if val == 1
    set(handles.radiobutton5, 'Value', 0);
    handles.fit = 2;
    handles.fl = 0.007;
    handles.fh = 0.0115;
    handles.roll = 10^12;
else
    set (handles.radiobutton5, 'Value', 1);
    handles.fit = 1;
    handles.fl = 0.035;
    handles.fh = 0.065;
    handles.roll = 10^12;
end
set(handles.edit7, 'String', num2str(handles.fl));
set(handles.edit8, 'String', num2str(handles.fh));
set(handles.edit9, 'String', num2str(handles.roll));
guidata(hObject, handles);


function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double
val = str2num(get(handles.edit9,'String'));
handles.roll = val;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7
val = get(handles.radiobutton7,'Value');
if val == 1
    set(handles.radiobutton8, 'Value', 0);
    handles.cormethod = 2;
else
    set (handles.radiobutton8, 'Value', 1);
    handles.cormethod = 1;
end
guidata(hObject, handles);

% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8
val = get(handles.radiobutton8,'Value');
if val == 1
    set(handles.radiobutton7, 'Value', 0);
    handles.cormethod = 1;
else
    set (handles.radiobutton7, 'Value', 1);
    handles.cormethod = 2;
end
guidata(hObject, handles);

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
val = get(handles.checkbox1,'Value');
if val == 1
    handles.detrend = 1;
else
    handles.detrend = 0;
end
guidata(hObject, handles);


% --- Executes on button press in checkbox1.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
val = get(handles.checkbox1,'Value');
if val == 1
    handles.normal = 1;
    %disp('will save data')
else
    handles.normal = 0;
    %disp('will NOT save data')
end
guidata(hObject,handles)

% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4
val = get(handles.checkbox4,'Value');
if val == 1
    handles.flipy = 1;
else
    handles.flipy = 0;
end
guidata(hObject,handles)



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9
if get(hObject,'Value') == 1
    set(handles.radiobutton10,'Value',0)
    handles.plot_2d = 1;
else
    set(handles.radiobutton10,'Value',1)
    handles.plot_2d = 0;
end
guidata(hObject,handles)

% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10
if get(hObject,'Value') == 1
    set(handles.radiobutton9,'Value',0)
    handles.plot_2d = 0;
else
    set(handles.radiobutton9,'Value',1)
    handles.plot_2d = 1;
end
guidata(hObject,handles)


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6

handles.time_0pad = get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
contents = cellstr(get(hObject,'String'));
val = contents{get(hObject,'Value')};
if strcmp(val,'zero')
    %disp('zero')
    handles.padtype = 1;
elseif strcmp(val,'mirror')
    %disp('mirror')
    handles.padtype = 2;
elseif strcmp(val,'mean')
    %disp('mean')
    handles.padtype = 3;
elseif strcmp(val,'random')
    %disp('random')
    handles.padtype = 4;
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
