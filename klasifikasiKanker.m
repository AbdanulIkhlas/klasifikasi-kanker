function varargout = klasifikasiKanker(varargin)
% KLASIFIKASIKANKER MATLAB code for klasifikasiKanker.fig
%      KLASIFIKASIKANKER, by itself, creates a new KLASIFIKASIKANKER or raises the existing
%      singleton*.
%
%      H = KLASIFIKASIKANKER returns the handle to a new KLASIFIKASIKANKER or the handle to
%      the existing singleton*.
%
%      KLASIFIKASIKANKER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KLASIFIKASIKANKER.M with the given input arguments.
%
%      KLASIFIKASIKANKER('Property','Value',...) creates a new KLASIFIKASIKANKER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before klasifikasiKanker_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to klasifikasiKanker_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help klasifikasiKanker

% Last Modified by GUIDE v2.5 21-Mar-2023 09:38:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @klasifikasiKanker_OpeningFcn, ...
                   'gui_OutputFcn',  @klasifikasiKanker_OutputFcn, ...
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


% --- Executes just before klasifikasiKanker is made visible.
function klasifikasiKanker_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to klasifikasiKanker (see VARARGIN)

% Choose default command line output for klasifikasiKanker
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes klasifikasiKanker wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = klasifikasiKanker_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% memanggil 2 - 7 colom aja
range = detectImportOptions('cancer.csv');
range.SelectedVariableNames = (2 : 7);

% memanggil dan membaca matriks
data = readmatrix('cancer.csv',range);
set(handles.tabel, 'data', data);

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% menghapus isi tabel
set(handles.tabel, 'data', '');



function radiusMean_Callback(hObject, eventdata, handles)
% hObject    handle to radiusMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radiusMean as text
%        str2double(get(hObject,'String')) returns contents of radiusMean as a double


% --- Executes during object creation, after setting all properties.
function radiusMean_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiusMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textureMean_Callback(hObject, eventdata, handles)
% hObject    handle to textureMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textureMean as text
%        str2double(get(hObject,'String')) returns contents of textureMean as a double


% --- Executes during object creation, after setting all properties.
function textureMean_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textureMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function concavityMean_Callback(hObject, eventdata, handles)
% hObject    handle to concavityMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of concavityMean as text
%        str2double(get(hObject,'String')) returns contents of concavityMean as a double


% --- Executes during object creation, after setting all properties.
function concavityMean_CreateFcn(hObject, eventdata, handles)
% hObject    handle to concavityMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function smoothnessMean_Callback(hObject, eventdata, handles)
% hObject    handle to smoothnessMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of smoothnessMean as text
%        str2double(get(hObject,'String')) returns contents of smoothnessMean as a double


% --- Executes during object creation, after setting all properties.
function smoothnessMean_CreateFcn(hObject, eventdata, handles)
% hObject    handle to smoothnessMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function areaMean_Callback(hObject, eventdata, handles)
% hObject    handle to areaMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of areaMean as text
%        str2double(get(hObject,'String')) returns contents of areaMean as a double


% --- Executes during object creation, after setting all properties.
function areaMean_CreateFcn(hObject, eventdata, handles)
% hObject    handle to areaMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function parimeterMean_Callback(hObject, eventdata, handles)
% hObject    handle to parimeterMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of parimeterMean as text
%        str2double(get(hObject,'String')) returns contents of parimeterMean as a double


% --- Executes during object creation, after setting all properties.
function parimeterMean_CreateFcn(hObject, eventdata, handles)
% hObject    handle to parimeterMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in klasifikasi.
function klasifikasi_Callback(hObject, eventdata, handles)
% hObject    handle to klasifikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% MENGAMBIL DATA INPUT-AN
radius = str2double(get(handles.radiusMean, 'String'));
texture = str2double(get(handles.textureMean, 'String'));
parimeter = str2double(get(handles.parimeterMean, 'String'));
area = str2double(get(handles.areaMean, 'String'));
smoothness = str2double(get(handles.smoothnessMean, 'String'));
concavity = str2double(get(handles.concavityMean, 'String'));
k = str2double(get(handles.k, 'String'));

% memasukkan input kedalam variabel
sample = [radius texture parimeter area smoothness concavity];

% TRAINING
% memanggil 2 - 7 colom aja
range = detectImportOptions('cancer.csv');
range.SelectedVariableNames = (2 : 7);

% memanggil dan membaca matriks
training = readmatrix('cancer.csv',range);

% GROUP
% memanggil 2 - 7 colom aja
range = detectImportOptions('cancer.csv');
range.SelectedVariableNames = (8);

% memanggil dan membaca matriks
group = readmatrix('cancer.csv',range);

% membuat sebuah objek klasifikasi dengan algoritma KNN
class = fitcknn(training, group, 'NumNeighbor', k);

% menangkap hasil klasifikasi
hasilKlasifikasi = predict(class, sample);

% menampilkan hasil klasifikasi
set(handles.hasil, 'string', hasilKlasifikasi);
