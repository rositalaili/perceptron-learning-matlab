function varargout = GUI_perceptron(varargin)
% GUI_PERCEPTRON MATLAB code for GUI_perceptron.fig
%      GUI_PERCEPTRON, by itself, creates a new GUI_PERCEPTRON or raises the existing
%      singleton*.
%
%      H = GUI_PERCEPTRON returns the handle to a new GUI_PERCEPTRON or the handle to
%      the existing singleton*.
%
%      GUI_PERCEPTRON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PERCEPTRON.M with the given input arguments.
%
%      GUI_PERCEPTRON('Property','Value',...) creates a new GUI_PERCEPTRON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_perceptron_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_perceptron_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_perceptron

% Last Modified by GUIDE v2.5 02-Mar-2022 01:06:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_perceptron_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_perceptron_OutputFcn, ...
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


% --- Executes just before GUI_perceptron is made visible.
function GUI_perceptron_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_perceptron (see VARARGIN)

% Choose default command line output for GUI_perceptron
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_perceptron wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_perceptron_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_clear.
function pb_clear_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_clearData.
function pb_clearData_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clearData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_w1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_w1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_w1 as text
%        str2double(get(hObject,'String')) returns contents of edit_w1 as a double


% --- Executes during object creation, after setting all properties.
function edit_w1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_w1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_w2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_w2 as text
%        str2double(get(hObject,'String')) returns contents of edit_w2 as a double


% --- Executes during object creation, after setting all properties.
function edit_w2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_bias_Callback(hObject, eventdata, handles)
% hObject    handle to edit_bias (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_bias as text
%        str2double(get(hObject,'String')) returns contents of edit_bias as a double


% --- Executes during object creation, after setting all properties.
function edit_bias_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_bias (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_x1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x1 as text
%        str2double(get(hObject,'String')) returns contents of edit_x1 as a double


% --- Executes during object creation, after setting all properties.
function edit_x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_x2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x2 as text
%        str2double(get(hObject,'String')) returns contents of edit_x2 as a double


% --- Executes during object creation, after setting all properties.
function edit_x2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_target_Callback(hObject, eventdata, handles)
% hObject    handle to edit_target (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_target as text
%        str2double(get(hObject,'String')) returns contents of edit_target as a double


% --- Executes during object creation, after setting all properties.
function edit_target_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_target (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_hitung.
function pb_hitung_Callback(hObject, eventdata, handles)
% hObject    handle to pb_hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x2;
global w1;
global w2;
global b;

x1=str2num(get(handles.edit_x1,'string'));
x2=str2num(get(handles.edit_x2,'string'));
t=str2num(get(handles.edit_target,'string'));
    
x = [x1;x2];

%step 0
w1=0;
w2=0;
b=0;
teta =0.1; %learning rate
alpha = 1; %treshold

%output awal
y=zeros(1,4);

%step 1
while y~=t
    for i=1:4;
        %fprintf('dengan data[%d %d]',x1(i),x2(i));
        y_in = b + (x1(i)*w1)+(x2(i)*w2);
        %fprintf('y_in sementara %d',y_in);
        if y_in>teta
            y(i)=1;
        elseif y_in>=(-1*teta)&&y_in<=teta
            y(i)=0;
        elseif y_in<teta
            y(i)=-1;
        end
        %fprintf('nilai output pembanding y= ',y(i));
        if y(i)~=t(i);
            w1=w1+(alpha*t(i)*x1(i));
            w2=w2+(alpha*t(i)*x2(i));
            b=b+(alpha*t(i));
        end
    end
end

set(handles.edit_w1,'string',w1);
set(handles.edit_w2,'string',w2);
set(handles.edit_bias,'string',b);

% --- Executes on button press in pb_testing.
function pb_testing_Callback(hObject, eventdata, handles)
% hObject    handle to pb_testing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x2;
global w1;
global w2;
global b;
global y;

y=zeros(1,4);

for i=1:4;
net = b+(x1(i)*w1)+(x2(i)*w2);
    if net>=0;
        y(i)=1;
    elseif net<0;
        y(i)=-1;
    end
end
    
A = reshape(x1,4,1);
B = reshape(x2,4,1);
C =  reshape(y,4,1);
num = [A B C];

set(handles.uitable_data,'Data',num);


% --- Executes on button press in pb_clearAll.
function pb_clearAll_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clearAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit_x1,'string','');
set(handles.edit_x2,'string','');
set(handles.edit_target,'string','');
set(handles.edit_w1,'string','');
set(handles.edit_w2,'string','');
set(handles.edit_bias,'string','');
set(handles.uitable_data,'Data','');



% --- Executes on button press in pb_save.
function pb_save_Callback(hObject, eventdata, handles)
% hObject    handle to pb_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x2;
global y;
global M;
A = reshape(x1,4,1);
B = reshape(x1,4,1);
C =  reshape(y,4,1);
M = [A B C];
col_header={'X1','X2','Y'};
xlswrite('testing_perceptron.xlsx',col_header,'sheet1','A1');
xlswrite('testing_perceptron.xlsx',M,'sheet1','A2');


% --- Executes on button press in pb_close.
function pb_close_Callback(hObject, eventdata, handles)
% hObject    handle to pb_close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tutup = questdlg('Do you want to close this program?', ...
 'Close The Program', ...
 'Yes','No','No');
% Handle response
switch tutup
    case 'Yes'
        close(GUI_perceptron);
    case 'No'
        return;
end


% --- Executes on button press in PlotBtn.
function PlotBtn_Callback(hObject, eventdata, handles)
% hObject    handle to PlotBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x2;
global w1;
global w2;
global b;
plot(x1(1),x2(1),'or','MarkerSize',10,'MarkerFaceColor',[1 0 0]); hold on;
plot(x1(2),x2(2),'or','MarkerSize',10,'MarkerFaceColor',[1 0 0]); hold on;
plot(x1(3),x2(3),'or','MarkerSize',10,'MarkerFaceColor',[1 0 0]); hold on;
plot(x1(4),x2(4),'or','MarkerSize',10,'MarkerFaceColor',[1 0 0]); hold on;
x= -1:1;
y= -x.*(w1/w2) - b/w2;
plot(x,y);

xlabel('Data X1');
ylabel('Data X2');
grid on
hold on;
guidata(hObject,handles);
