function varargout = SimpleDSFviewer(varargin)
% DSF_DATAANALYSIS_GUI MATLAB code for DSF_DataAnalysis_GUI.fig
%      DSF_DATAANALYSIS_GUI, by itself, creates a new DSF_DATAANALYSIS_GUI or raises the existing
%      singleton*.
%
%      H = DSF_DATAANALYSIS_GUI returns the handle to a new DSF_DATAANALYSIS_GUI or the handle to
%      the existing singleton*.
%
%      DSF_DATAANALYSIS_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DSF_DATAANALYSIS_GUI.M with the given input arguments.
%
%      DSF_DATAANALYSIS_GUI('Property','Value',...) creates a new DSF_DATAANALYSIS_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      asslied to the GUI before DSF_DataAnalysis_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property asslication
%      stop.  All inputs are passvd to DSF_DataAnalysis_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DSF_DataAnalysis_GUI

% Last Modified by GUIDE v2.5 11-Jan-2016 11:10:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimpleDSFviewer_OpeningFcn, ...
                   'gui_OutputFcn',  @SimpleDSFviewer_OutputFcn, ...
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


% --- Executes just before DSF_DataAnalysis_GUI is made visible.
function SimpleDSFviewer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DSF_DataAnalysis_GUI (see VARARGIN)

% Choose default command line output for DSF_DataAnalysis_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DSF_DataAnalysis_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SimpleDSFviewer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, ~)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
% C.Sun 12 Jan 2014
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% Layout radio buttions for 96 well data selection
function radiobutton1_Callback(hObject, ~, handles)
 
global kk
global PA1 
if (get(hObject,'Value') == get(hObject,'Max'))
PA1=1;    
else
PA1=kk;  
end


function radiobutton2_Callback(hObject, eventdata, handles)

global  kk 
global PB1 
if (get(hObject,'Value') == get(hObject,'Max'))
PB1=13;    
else
PB1=kk;   
end

function radiobutton5_Callback(hObject, eventdata, handles)

global  kk
global PC1 
if (get(hObject,'Value') == get(hObject,'Max'))
PC1=25;  
else
PC1=kk;     
end

function radiobutton6_Callback(hObject, eventdata, handles)

global  kk 
global PD1 
if (get(hObject,'Value') == get(hObject,'Max'))
PD1=37;    
else
PD1=kk;     
end

function radiobutton7_Callback(hObject, eventdata, handles)

global  kk 
global PE1 
if (get(hObject,'Value') == get(hObject,'Max'))
PE1=49;    
else
PE1=kk;     
end


function radiobutton8_Callback(hObject, eventdata, handles)

global PF1 kk  
if (get(hObject,'Value') == get(hObject,'Max'))
PF1=61;    
else
PF1=kk;     
end

function radiobutton9_Callback(hObject, eventdata, handles)

global PG1 kk
if (get(hObject,'Value') == get(hObject,'Max'))
PG1=73;    
else    
PG1=kk;
end

function radiobutton10_Callback(hObject, eventdata, handles)

global PH1 kk
if (get(hObject,'Value') == get(hObject,'Max'))
PH1=85;    
else
PH1=kk;     
end

function radiobutton11_Callback(hObject, eventdata, handles)

global  kk 
global PA2 
if (get(hObject,'Value') == get(hObject,'Max'))
PA2=2;    
else
PA2=kk;     
end

function radiobutton12_Callback(hObject, eventdata, handles)

global PB2  kk 
if (get(hObject,'Value') == get(hObject,'Max'))
PB2=14;    
else
PB2=kk;     
end


function radiobutton13_Callback(hObject, eventdata, handles)

global PC2 kk 
if (get(hObject,'Value') == get(hObject,'Max'))
PC2=26;    
else
PC2=kk;     
end

function radiobutton14_Callback(hObject, eventdata, handles)


global PD2  kk 
if (get(hObject,'Value') == get(hObject,'Max'))
PD2=38;    
else
PD2=kk;     
end

function radiobutton15_Callback(hObject, eventdata, handles)

global PE2 kk
if (get(hObject,'Value') == get(hObject,'Max'))
PE2=50;    
else
PE2=kk;     
end

function radiobutton16_Callback(hObject, eventdata, handles)

global PF2  kk
if (get(hObject,'Value') == get(hObject,'Max'))
PF2=62;    
else
PF2=kk;     
end

function radiobutton17_Callback(hObject, eventdata, handles)

global PG2  kk 
if (get(hObject,'Value') == get(hObject,'Max'))
PG2=74;    
else
PG2=kk;     
end

function radiobutton18_Callback(hObject, eventdata, handles)

global PH2  kk 
if (get(hObject,'Value') == get(hObject,'Max'))
PH2=86;    
else
PH2=kk;     
end

function radiobutton19_Callback(hObject, eventdata, handles)

global kk PA3 
if (get(hObject,'Value') == get(hObject,'Max'))
PA3=3;    
else
PA3=kk;     
end

function radiobutton20_Callback(hObject, eventdata, handles)

global kk PB3
if (get(hObject,'Value') == get(hObject,'Max'))
PB3=15;    
else
PB3=kk;     
end

function radiobutton21_Callback(hObject, eventdata, handles)
 
global kk PC3 
if (get(hObject,'Value') == get(hObject,'Max'))
PC3=27;    
else
PC3=kk;     
end

function radiobutton22_Callback(hObject, eventdata, handles)

global kk PD3 
if (get(hObject,'Value') == get(hObject,'Max'))
PD3=39;    
else
PD3=kk;     
end

function radiobutton23_Callback(hObject, eventdata, handles)

global kk PE3 
if (get(hObject,'Value') == get(hObject,'Max'))
PE3=51;    
else
PE3=kk;     
end

function radiobutton24_Callback(hObject, eventdata, handles)

global kk PF3 
if (get(hObject,'Value') == get(hObject,'Max'))
PF3=63;    
else
PF3=kk;     
end

function radiobutton25_Callback(hObject, eventdata, handles)

global kk PG3 
if (get(hObject,'Value') == get(hObject,'Max'))
PG3=75;    
else
PG3=kk;     
end

function radiobutton26_Callback(hObject, eventdata, handles)

global kk PH3 
if (get(hObject,'Value') == get(hObject,'Max'))
PH3=87;    
else
PH3=kk;     
end

function radiobutton27_Callback(hObject, eventdata, handles)

global kk PA4 
if (get(hObject,'Value') == get(hObject,'Max'))
PA4=4;    
else
PA4=kk;     
end

function radiobutton28_Callback(hObject, eventdata, handles)

global kk PB4 
if (get(hObject,'Value') == get(hObject,'Max'))
PB4=16;    
else
PB4=kk;     
end

function radiobutton29_Callback(hObject, eventdata, handles)

global kk PC4 
if (get(hObject,'Value') == get(hObject,'Max'))
PC4=28;    
else
PC4=kk;     
end

function radiobutton30_Callback(hObject, eventdata, handles)

global kk PD4 
if (get(hObject,'Value') == get(hObject,'Max'))
PD4=40;    
else
PD4=kk;     
end

function radiobutton31_Callback(hObject, eventdata, handles)

global kk PE4
if (get(hObject,'Value') == get(hObject,'Max'))
PE4=52;    
else
PE4=kk; 
end

function radiobutton32_Callback(hObject, eventdata, handles)

global kk PF4 
if (get(hObject,'Value') == get(hObject,'Max'))
PF4=64;    
else
PF4=kk;     
end

function radiobutton33_Callback(hObject, eventdata, handles)

global kk PG4 
if (get(hObject,'Value') == get(hObject,'Max'))
PG4=76;    
else
PG4=kk;     
end

function radiobutton34_Callback(hObject, eventdata, handles)

global kk PH4
if (get(hObject,'Value') == get(hObject,'Max'))
PH4=88;    
else
PH4=kk;     
end

function radiobutton35_Callback(hObject, eventdata, handles)

global kk PA5 
if (get(hObject,'Value') == get(hObject,'Max'))
PA5=5;    
else
PA5=kk;     
end

function radiobutton36_Callback(hObject, eventdata, handles)

global kk PB5 
if (get(hObject,'Value') == get(hObject,'Max'))
PB5=17;    
else
PB5=kk;     
end

function radiobutton37_Callback(hObject, eventdata, handles)

global kk PC5
if (get(hObject,'Value') == get(hObject,'Max'))
PC5=29;    
else
PC5=kk;     
end

function radiobutton38_Callback(hObject, eventdata, handles)

global kk PD5 
if (get(hObject,'Value') == get(hObject,'Max'))
PD5=41;    
else
PD5=kk;     
end

function radiobutton39_Callback(hObject, eventdata, handles)

global kk PE5 
if (get(hObject,'Value') == get(hObject,'Max'))
PE5=53;    
else
PE5=kk;     
end

function radiobutton40_Callback(hObject, eventdata, handles)

global kk PF5 
if (get(hObject,'Value') == get(hObject,'Max'))
PF5=65;    
else
PF5=kk;     
end

function radiobutton41_Callback(hObject, eventdata, handles)

global kk PG5 
if (get(hObject,'Value') == get(hObject,'Max'))
PG5=77;    
else
PG5=kk;     
end

function radiobutton42_Callback(hObject, eventdata, handles)

global kk PH5 
if (get(hObject,'Value') == get(hObject,'Max'))
PH5=89;    
else
PH5=kk;     
end

function radiobutton43_Callback(hObject, eventdata, handles)

global kk PA6 
if (get(hObject,'Value') == get(hObject,'Max'))
PA6=6;    
else
PA6=kk;     
end

function radiobutton44_Callback(hObject, eventdata, handles)

global kk PB6 
if (get(hObject,'Value') == get(hObject,'Max'))
PB6=18;    
else
PB6=kk;     
end

function radiobutton45_Callback(hObject, eventdata, handles)

global kk PC6 
if (get(hObject,'Value') == get(hObject,'Max'))
PC6=30;    
else
PC6=kk;     
end

function radiobutton46_Callback(hObject, eventdata, handles)

global kk PD6 
if (get(hObject,'Value') == get(hObject,'Max'))
PD6=42;    
else
PD6=kk;     
end

function radiobutton47_Callback(hObject, eventdata, handles)

global kk PE6 
if (get(hObject,'Value') == get(hObject,'Max'))
PE6=54;    
else
PE6=kk;     
end

function radiobutton48_Callback(hObject, eventdata, handles)

global kk PF6 
if (get(hObject,'Value') == get(hObject,'Max'))
PF6=66;   
else
PF6=kk;     
end

function radiobutton49_Callback(hObject, eventdata, handles)

global kk PG6 
if (get(hObject,'Value') == get(hObject,'Max'))
PG6=78;    
else
PG6=kk;     
end

function radiobutton50_Callback(hObject, eventdata, handles)

global kk PH6 
if (get(hObject,'Value') == get(hObject,'Max'))
PH6=90;    
else
PH6=kk;     
end

function radiobutton51_Callback(hObject, eventdata, handles)

global kk PA7
if (get(hObject,'Value') == get(hObject,'Max'))
PA7=7;    
else
PA7=kk;     
end

function radiobutton52_Callback(hObject, eventdata, handles)

global kk PB7 
if (get(hObject,'Value') == get(hObject,'Max'))
PB7=19;    
else
PB7=kk;     
end

function radiobutton53_Callback(hObject, eventdata, handles)

global kk PC7 
if (get(hObject,'Value') == get(hObject,'Max'))
PC7=31;    
else
PC7=kk;     
end

function radiobutton54_Callback(hObject, eventdata, handles)

global kk PD7 
if (get(hObject,'Value') == get(hObject,'Max'))
PD7=43;    
else
PD7=kk;     
end

function radiobutton55_Callback(hObject, eventdata, handles)

global kk PE7 
if (get(hObject,'Value') == get(hObject,'Max'))
PE7=55;    
else
PE7=kk;     
end

function radiobutton56_Callback(hObject, eventdata, handles)

global kk PF7 
if (get(hObject,'Value') == get(hObject,'Max'))
PF7=67;    
else
PF7=kk;     
end

function radiobutton57_Callback(hObject, eventdata, handles)

global kk PG7 
if (get(hObject,'Value') == get(hObject,'Max'))
PG7=79;    
else
PG7=kk;     
end

function radiobutton58_Callback(hObject, eventdata, handles)

global kk PH7 
if (get(hObject,'Value') == get(hObject,'Max'))
PH7=91;    
else
PH7=kk;     
end

function radiobutton59_Callback(hObject, eventdata, handles)

global kk PA8 
if (get(hObject,'Value') == get(hObject,'Max'))
PA8=8;    
else
PA8=kk;     
end

function radiobutton60_Callback(hObject, eventdata, handles)

global kk PB8 
if (get(hObject,'Value') == get(hObject,'Max'))
PB8=20;    
else
PB8=kk;     
end

function radiobutton61_Callback(hObject, eventdata, handles)

global kk PC8 
if (get(hObject,'Value') == get(hObject,'Max'))
PC8=32;    
else
PC8=kk;     
end

function radiobutton62_Callback(hObject, eventdata, handles)

global kk PD8 
if (get(hObject,'Value') == get(hObject,'Max'))
PD8=44;    
else
PD8=kk;     
end

function radiobutton63_Callback(hObject, eventdata, handles)

global kk PE8 
if (get(hObject,'Value') == get(hObject,'Max'))
PE8=56;    
else
PE8=kk;     
end

function radiobutton64_Callback(hObject, eventdata, handles)

global kk PF8 
if (get(hObject,'Value') == get(hObject,'Max'))
PF8=68;    
else
PF8=kk;     
end

function radiobutton65_Callback(hObject, eventdata, handles)

global kk PG8
if (get(hObject,'Value') == get(hObject,'Max'))
PG8=80;    
else
PG8=kk;     
end

function radiobutton66_Callback(hObject, eventdata, handles)

global kk PH8 
if (get(hObject,'Value') == get(hObject,'Max'))
PH8=92;    
else
PH8=kk;     
end

function radiobutton67_Callback(hObject, eventdata, handles)

global kk PA9 
if (get(hObject,'Value') == get(hObject,'Max'))
PA9=9;
else
PA9=kk;     
end


function radiobutton68_Callback(hObject, eventdata, handles)

global kk PB9 
if (get(hObject,'Value') == get(hObject,'Max'))
PB9=21;
else
PB9=kk;     
end


function radiobutton69_Callback(hObject, eventdata, handles)

global kk PC9 
if (get(hObject,'Value') == get(hObject,'Max'))
PC9=33;
else
PC9=kk;     
end


function radiobutton70_Callback(hObject, eventdata, handles)

global kk PD9 
if (get(hObject,'Value') == get(hObject,'Max'))
PD9=45;
else
PD9=kk;     
end


function radiobutton71_Callback(hObject, eventdata, handles)

global kk PE9 
if (get(hObject,'Value') == get(hObject,'Max'))
PE9=57;
else
PE9=kk;     
end


function radiobutton72_Callback(hObject, eventdata, handles)

global kk PF9 
if (get(hObject,'Value') == get(hObject,'Max'))
PF9=69;
else
PF9=kk;     
end

function radiobutton73_Callback(hObject, eventdata, handles)

global kk PG9 
if (get(hObject,'Value') == get(hObject,'Max'))
PG9=81;
else
PG9=kk;     
end

function radiobutton74_Callback(hObject, eventdata, handles)

global kk PH9 
if (get(hObject,'Value') == get(hObject,'Max'))
PH9=93;
else
PH9=kk;     
end

function radiobutton75_Callback(hObject, eventdata, handles)

global kk PA10 
if (get(hObject,'Value') == get(hObject,'Max'))
PA10=10; 
else
PA10=kk;     
end

function radiobutton76_Callback(hObject, eventdata, handles)

global kk PB10 
if (get(hObject,'Value') == get(hObject,'Max'))
PB10=22; 
else
PB10=kk;     
end

function radiobutton77_Callback(hObject, eventdata, handles)

global kk PC10 
if (get(hObject,'Value') == get(hObject,'Max'))
PC10=34; 
else
PC10=kk;     
end

function radiobutton78_Callback(hObject, eventdata, handles)

global kk PD10 
if (get(hObject,'Value') == get(hObject,'Max'))
PD10=46; 
else
PD10=kk;     
end


function radiobutton79_Callback(hObject, eventdata, handles)

global kk PE10 
if (get(hObject,'Value') == get(hObject,'Max'))
PE10=58; 
else
PE10=kk;     
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton79


% --- Executes on button press in radiobutton80.
function radiobutton80_Callback(hObject, eventdata, handles)

global kk PF10 
if (get(hObject,'Value') == get(hObject,'Max'))
PF10=70; 
else
PF10=kk;     
end

function radiobutton81_Callback(hObject, eventdata, handles)

global kk PG10 
if (get(hObject,'Value') == get(hObject,'Max'))
PG10=82; 
else
PG10=kk;     
end

function radiobutton82_Callback(hObject, eventdata, handles)

global kk PH10 
if (get(hObject,'Value') == get(hObject,'Max'))
PH10=94; 
else
PH10=kk;     
end


function radiobutton83_Callback(hObject, eventdata, handles)

global kk PA11 
if (get(hObject,'Value') == get(hObject,'Max'))
PA11=11;   
else
PA11=kk;  
end


function radiobutton84_Callback(hObject, eventdata, handles)

global kk PB11 
if (get(hObject,'Value') == get(hObject,'Max'))
PB11=23;   
else
PB11=kk;  
end


function radiobutton85_Callback(hObject, eventdata, handles)

global kk PC11 
if (get(hObject,'Value') == get(hObject,'Max'))
PC11=35;   
else
PC11=kk;  
end

function radiobutton86_Callback(hObject, eventdata, handles)

global kk PD11 
if (get(hObject,'Value') == get(hObject,'Max'))
PD11=47;   
else
PD11=kk;  
end

function radiobutton87_Callback(hObject, eventdata, handles)

global kk PE11 
if (get(hObject,'Value') == get(hObject,'Max'))
PE11=59;   
else
PE11=kk;  
end




function radiobutton88_Callback(hObject, eventdata, handles)

global kk PF11 
if (get(hObject,'Value') == get(hObject,'Max'))
PF11=71;   
else
PF11=kk;  
end


function radiobutton89_Callback(hObject, eventdata, handles)

global kk PG11 
if (get(hObject,'Value') == get(hObject,'Max'))
PG11=83;   
else
PG11=kk;  
end


function radiobutton90_Callback(hObject, eventdata, handles)

global kk PH11 
if (get(hObject,'Value') == get(hObject,'Max'))
PH11=95;   
else
PH11=kk;  
end


function radiobutton91_Callback(hObject, eventdata, handles)

global kk PA12 
if (get(hObject,'Value') == get(hObject,'Max'))
PA12=12;    
else
PA12=kk;     
end

function radiobutton92_Callback(hObject, eventdata, handles)

global kk PB12 
if (get(hObject,'Value') == get(hObject,'Max'))
PB12=24;    
else
PB12=kk;     
end


function radiobutton93_Callback(hObject, eventdata, handles)

global kk PC12 
if (get(hObject,'Value') == get(hObject,'Max'))
PC12=36;    
else
PC12=kk;     
end




function radiobutton94_Callback(hObject, eventdata, handles)

global kk PD12 
if (get(hObject,'Value') == get(hObject,'Max'))
PD12=48;    
else
PD12=kk;     
end

%%%%%%?????
function radiobutton95_Callback(hObject, eventdata, handles)

global kk PE12 
if (get(hObject,'Value') == get(hObject,'Max'))
PE12=60;    
else
PE12=kk;     
end

function radiobutton96_Callback(hObject, eventdata, handles)

global kk PF12 
if (get(hObject,'Value') == get(hObject,'Max'))
PF12=72;    
else
PF12=kk;     
end

function radiobutton97_Callback(hObject, eventdata, handles)

global kk PG12 
if (get(hObject,'Value') == get(hObject,'Max'))
PG12=84;    
else
PG12=kk;     
end

function radiobutton98_Callback(hObject, eventdata, handles)

global kk PH12 
if (get(hObject,'Value') == get(hObject,'Max'))
PH12=96;    
else
PH12=kk;     
end


%load rawdata
function pushbutton1_Callback(hObject, eventdata, handles)
%open and read raw data
 global a kk te n mtx mtxs ano val ab mttbar  smsorts smFDs maxsmresult norsorts norFDs mediposi cvname cvpath colorpicker t  DT50 MDT50
 [cvname cvpath] = uigetfile({'*.xls';'*.csv';'*.xlsx';'*.mat'},'File Selector');
 da=strcat(cvpath,cvname);
 sorts=[];sort=[];FD=[];FDs=[];
 [data, text, alldata] = xlsread(da);
 mkdir([cvpath,'anaDSF/',cvname]);
 smorange=str2num(get(handles.smoothrange,'string'));
 cut=str2num(get(handles.cut,'string'));
 set(handles.path,'string',['Path: ',da]);
 colorpicker=colormap(hsv(96));
 ano=[];val=[];mttbar=[];mtx={};mtxs={};kk=97;a=0;
 %new add
 ab=0;
 %figure out the raw data size
 gg=n-1;
 global ndata
 hh = waitbar(0,'Initializing waitbar...');
 getcolumn= str2num(get(handles.column,'string'));
 ndata=data(:,getcolumn);
 datasize=size(ndata);
 checkNaN= find(isnan(ndata));
 sizecheckNaN=size(checkNaN);
 sizecheckNaNs=sizecheckNaN(1,1);
 datasizes=datasize(1,1);
 number=datasizes/96;
 numbers=number-1;
 check=n-number;
 if sizecheckNaNs>0
     set(handles.showmeasureNo,'string',['NaN at',num2str(checkNaN(1))]);
 elseif check>0
     set(handles.showmeasureNo,'string','Try load low Tem');
 else
 
 %sort the raw data into Temperarute-wells data
 global sorts
 for m = 0:1:numbers
     for l=1:96
         sort(m+1,l)=ndata(l+96*m);
     end
     sort(m+1,97)=0;
 end
sorts=sort(1:n,:);


%calculate the First derivative of each well
 global FDs
  for i=0:1:numbers
     if i==0
         for j=1:96
     FD((i+1),j) = (ndata(j+96*(i+1))-ndata(j+96*i))*2/(2*t);
         end
     elseif i==numbers
         for j=1:96
     FD((i+1),j) = (ndata(j+96*i)-ndata(j+96*(i-1)))*2/(2*t);
         end    
     else
         for j=1:96
     FD((i+1),j) = (ndata(j+96*(i+1))-ndata(j+96*(i-1)))/(2*t);
         end
     end
     FD(i+1,97)=0;
  end
    
 FDs=FD(1:n,:);
waitbar(0.5,hh,'Halfway there...')
norsorts=[];norFDs=[];smsorts=[];smFDs=[];biggest=[];
[norsorts,norFDs]=normalisemc(sorts,n);
if cut==0
[smsorts,smFDs]=smomcurve(norsorts,n,smorange);
elseif cut==1
[smsorts,smFDs]=smomcurveCut(norsorts,n,smorange);
end

perc = 75;
waitbar(perc/100,hh,sprintf('%d%% along...',perc))
%calculate the melting temperature of each well by decode the max FD into te 
 global biggest
 for v=1:96
     [values2 maxsmposi(v)]=max(smFDs(:,v));
     [value position(v)]=max(FDs(:,v));
     
     
     [value2 position2]=max(sorts(:,v));
     [value1 position1]=min(sorts(1:position2,v));
     medi=(value2+value1)/2;
     
     test=min(find(sorts(position1:position2,v)>=medi));
     test=test+position1-1;
         
     if isempty(test)
         test=2;
     end

     if test<=1
         test=2;
     end
     mediposi(v)=test;

     %
     kvalue(v)=(sorts(test,v)-sorts(test-1,v))/(te(test)-te(test-1));
     bvalue(v)=sorts(test,v)-kvalue(v)*te(test);
     DT50(v)=(medi-bvalue(v))/kvalue(v);
     MDT50(v)=medi;
     %
     biggest(v)=te(position(v));
     maxsmresult(v)=te(maxsmposi(v));
 end
 %show the size of raw data
 set(handles.showmeasureNo,'string',number);
 end
 
[noisy]=mapTm(smsorts,smFDs, te);
clc
close(hh)


%load sorted data
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%open and read raw data
 global a kk te n mtx mtxs ano val ab mttbar smsorts smFDs maxsmresult norsorts  norFDs mediposi cvname cvpath colorpicker T1 t DT50 MDT50
 [cvname cvpath] = uigetfile({'*.xlsx';'*.csv';'*.mat';'*.xls'},'File Selector');
 da=strcat(cvpath,cvname);
 [data, text, alldata] = xlsread(da);
 mkdir([cvpath,'anaDSF/',cvname]);
 smorange=str2num(get(handles.smoothrange,'string'));
 set(handles.path,'string',['Path: ',da]);
 cut=str2num(get(handles.cut,'string'));
 hh = waitbar(0,'Initializing waitbar...');
%load default parameters
colorpicker=colormap(hsv(96));
 global sorts
 ano=[];
 val=[];
 mttbar=[];
 mtx={};
 mtxs={};
 kk=97;
 a=0;
 %new add
 ab=0;
%figure out the raw data size
te=[];sorts=[];sort=[];FD=[];FDs=[];
te=data(:,1);
te=te';
datasize=size(te);
number=max(datasize);
T1 =te(1);
t=te(2)-te(1);

 sort=data(:,2:97);
 
 checkNaN= find(isnan(sort));
 sizecheckNaN=size(checkNaN);
 sizecheckNaNs=sizecheckNaN(1,1);
 datasizes=size(sort);
 numbers=datasizes(1,1);
 check=numbers-number;
 sorts(:,1:96)=sort;

 if sizecheckNaNs>0
     set(handles.showmeasureNo,'string','NaN in data');
 elseif check <0
     set(handles.showmeasureNo,'string','check input');
 else
 
 %sort the raw data into Temperarute-wells data
 
%calculate the First derivative of each well
 global FDs
  for i=1:1:number
     if i==1
         for j=1:96
     FD(i,j) = (sorts((i+1),j)-sorts(i,j))*2/(2*t);
         end
     elseif i==number
         for j=1:96
     FD(i,j) = (sorts(i,j)-sorts((i-1),j))*2/(2*t);
         end    
     else
         for j=1:96
     FD(i,j) = (sorts((i+1),j)-sorts((i-1),j))/(2*t);
         end
     end
     sorts(i,97)=0;
     FD(i,97)=0;
  end
FDs=FD(1:number,:);
n=number;

waitbar(0.5,hh,'Halfway there...')
norsorts=[];norFDs=[];smsorts=[];smFDs=[];biggest=[];
[norsorts,norFDs]=normalisemc(sorts,n);
if cut==0
[smsorts,smFDs]=smomcurve(norsorts,n,smorange);
elseif cut==1
[smsorts,smFDs]=smomcurveCut(norsorts,n,smorange);
end

perc = 75;
waitbar(perc/100,hh,sprintf('%d%% along...',perc))
%calculate the melting temperature of each well by decode the max FD into te 
 global biggest
 for v=1:96
     [values2 maxsmposi(v)]=max(smFDs(:,v));
     [value position(v)]=max(FDs(:,v));
     
     [value2 position2]=max(sorts(:,v));
     
     [value1 position1]=min(sorts(1:position2,v));
     medi=(value2+value1)/2;
     test=min(find(sorts(position1:position2,v)>=medi));
     test=test+position1-1;
     if isempty(test)
         test=2;
     end

     if test<=1
         test=2;
     end
     
     
     mediposi(v)=test;
     
     %
     kvalue(v)=(sorts(test,v)-sorts(test-1,v))/(te(test)-te(test-1));
     bvalue(v)=sorts(test,v)-kvalue(v)*te(test);
     DT50(v)=(medi-bvalue(v))/kvalue(v);
     MDT50(v)=medi;
     %
     
     
     biggest(v)=te(position(v));
     maxsmresult(v)=te(maxsmposi(v));
 end
 %show the size of raw data
 set(handles.gradientNo,'string',number);
 set(handles.showmeasureNo,'string',numbers);
 end
 
[noisy]=mapTm(smsorts,smFDs, te);
clc
close(hh)


 %Static text to show the number of measurement for each well
function showmeasureNo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to showmeasureNo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called  

% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% plot the melting curve with melting temperature in the GUI axes
function pushbutton3_Callback(hObject, eventdata, handles)

 global te sorts  T1 t biggest colorpicker smsorts FDs  smFDs 
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
 meltings=[PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12];
 cla reset;
 lig={};
 xxx=[];yyy=[];iii=1;
 axes(handles.axes1);
 msize=size(meltings);
 mb=msize(1,2);
 getsmooth=str2num(get(handles.smooth,'string'));
 isnormalise=str2num(get(handles.isnormalise,'string'));
 lege=str2num(get(handles.legtag,'string'));
 if mb==0
     wrong=0;
 else
     for x=1:mb
     y=meltings(x);
     if y==97
         wrong=sorts(:,y);
     else
          pkvs=[];locvs=[];nums=[];
         [pkvs,locvs,nums,condition,noisy]=peaknumbers(smsorts(:,y),smFDs(:,y));
         [pkvs2,locvs2,nums2,condition2,noisy2]=peaknumbers(smsorts(:,y),FDs(:,y));
         
         co=colorpicker(y,:);
     if getsmooth==0    
         if isnormalise==0
            plot(te,sorts(:,y),'color',co,'LineWidth',2);   
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tms:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
         elseif isnormalise==1
            debg=sorts(:,y)-min(sorts(:,y));
            plot(te,(debg/max(debg)),'color',co,'LineWidth',2);    
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tms:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];    
         end
     elseif getsmooth==2
        debg=sorts(:,y)-min(sorts(:,y));
        plot(te,(debg/max(debg)),'color',co,'LineWidth',2);    
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tms:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
        hold on
        plot(te,smsorts(:,y),'color','k','LineWidth',2); 
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tms:',num2str(te(locvs))]];
     elseif getsmooth==1
        debg2=smsorts(:,y)-min(smsorts(:,y));
        plot(te,(debg2/max(debg2)),'color',co,'LineWidth',2);
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tms:',num2str(te(locvs))]];
     end  

     if nums<=0
         nnums=1;
     else
         nnums=nums;
     end

     xxx(iii:(nnums+iii-1))=te(locvs);
     yyy(iii:(nnums+iii-1))=(smsorts(locvs,y)-min(smsorts(:,y)))/(max(smsorts(:,y))-min(smsorts(:,y)));
     iii=iii+nnums;
     end     
     hold on
     end
  
     hold on
     if getsmooth==0 
        
        for x=1:mb
        y=meltings(x);
            if y==97
                wrong=y;
            else
         %meltTm value
                meltTm=biggest(y);
         %position of the meltTm

                Fcurve=round((meltTm-T1)/t+1);
         %the exact value at meltTm position
         if isnormalise==0
                curve=sorts(:,y);
         elseif isnormalise==1
                curve=(sorts(:,y)-min(sorts(:,y)))/(max(sorts(:,y))-min(sorts(:,y)));
         end
         
         
                va=curve(Fcurve);

                plot(meltTm,va,'k.','MarkerSize',24);
          
            end
        hold on
        end
     elseif getsmooth==1 || getsmooth==2
         plot(xxx,yyy,'k.','MarkerSize',24); 
     end
     
if lege==1     
legend(lig,'Location','southeast','TextColor','b','FontSize',10,'FontWeight','bold');
end

ylabel('Fluorescence (A.U.)','FontSize',17,'FontWeight','bold','Color','k');
xlabel('Temperature ( ^{\circ}C )','FontSize',17,'FontWeight','bold','Color','k');
 end
 %
ax=gca;
set(ax, 'FontSize',14,'FontWeight','bold')
%
 %figure('Name','Simulation Plot Window','NumberTitle','off');
% axis off
 %text(0.1,0.8,lig)

% plot the First derivative curve with melting temperature in the GUI axes  
function pushbutton5_Callback(hObject, eventdata, handles)

 global te colorpicker biggest T1 t FDs  smFDs smsorts
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
 melting=[PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12];
 cla reset;
 axes(handles.axes1);
 msize=size(melting);
 mb=msize(1,2);
 lig={};
 xxx=[];yyy=[]; iii=1; kkk=1;
 getsmooth=str2num(get(handles.smooth,'string'));
 isnormalise=str2num(get(handles.isnormalise,'string'));
 lege=str2num(get(handles.legtag,'string'));
 %something wrong with label --
 
 for x=1:mb
     y=melting(x);
     if y==97
         wrong=FDs(:,y);
     else
         pkvs=[];locvs=[];nums=[];
         [pkvs,locvs,nums,condition,noisy]=peaknumbers(smsorts(:,y),smFDs(:,y));
         [pkvs2,locvs2,nums2,condition2,noisy2]=peaknumbers(smsorts(:,y),FDs(:,y));
         
         co=colorpicker(y,:);
         if getsmooth==0 
             if isnormalise==0
                plot(te,FDs(:,y),'color',co,'LineWidth',2);
                lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
             elseif isnormalise==1
                if max(FDs(:,y))<=0
                kkk=-1;
                else
                kkk=1;
                end
                plot(te,kkk*(FDs(:,y)-min(FDs(:,y)))/(max(FDs(:,y))-min(FDs(:,y))),'color',co,'LineWidth',2);
                lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
             end
        elseif getsmooth==2
            if max(FDs(:,y))<=0
                kkk=-1;
            else
                kkk=1;
            end
            plot(te,kkk*(FDs(:,y)-min(FDs(:,y)))/(max(FDs(:,y))-min(FDs(:,y))),'color',co,'LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
            hold on
            plot(te,kkk*(smFDs(:,y)-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y))),'color','k','LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];
        elseif getsmooth==1
            if max(FDs(:,y))<=0
                kkk=-1;
            else
                kkk=1;
            end

            plot(te,kkk*(smFDs(:,y)-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y))),'color',co,'LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];            
         end
         if nums<=0
            nnums=1;
         else
            nnums=nums;
         end
        xxx(iii:(nnums+iii-1))=te(locvs);
        yyy(iii:(nnums+iii-1))=kkk*(pkvs-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y)));
        iii=iii+nnums;
     end
     hold on
 end
 

 hold on
 if getsmooth==0 
    for x=1:mb
        y=melting(x);
        if y==97
             wrong=y;
        else
         %meltTm value
            meltTm=biggest(y);
         %position of the meltTm
            Fcurve=round((meltTm-T1)/t+1);
         %the exact value at meltTm position
         if isnormalise==0
             curve=FDs(:,y);
         elseif isnormalise==1
             curve=kkk*(FDs(:,y)-min(FDs(:,y)))/(max(FDs(:,y))-min(FDs(:,y)));
         end
            va=curve(Fcurve);
            plot(meltTm,va,'k.','MarkerSize',24);    
        end
    hold on
    end
 elseif getsmooth==1 || getsmooth==2
     
     plot(xxx,yyy,'.','MarkerFaceColor','r','MarkerEdgeColor','k','MarkerSize',24); 
 end
    if lege==1
    legend(lig,'Location','northeast','TextColor','b','FontSize',10,'FontWeight','bold');
    end
    ylabel('dFluorescence (A.U.)','FontSize',17,'FontWeight','bold','Color','k');
    xlabel('Temperature ( ^{\circ}C )','FontSize',17,'FontWeight','bold','Color','k');

%
ax=gca;
set(ax, 'FontSize',14,'FontWeight','bold')
%

function startTem_Callback(hObject, eventdata, handles)
% hObject    handle to startTem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startTem as text
%        str2double(get(hObject,'String')) returns contents of startTem as a double


% --- Executes during object creation, after setting all properties.
function startTem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startTem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function step_Callback(hObject, eventdata, handles)
% hObject    handle to step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of step as text
%        str2double(get(hObject,'String')) returns contents of step as a double


% --- Executes during object creation, after setting all properties.
function step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function endTem_Callback(hObject, eventdata, handles)
% hObject    handle to endTem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of endTem as text
%        str2double(get(hObject,'String')) returns contents of endTem as a double


% --- Executes during object creation, after setting all properties.
function endTem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to endTem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in loadTem.
function loadTem_Callback(hObject, eventdata, handles)
% hObject    handle to loadTem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global te  T1 t colorpicker  %melting
global n
te=[]; t=[]; T1=[];
%colorpicker=colormap(hsv(96));
colorpicker=colormap(colorcube(96));


T1 = str2num(get(handles.startTem,'string'));
T2 = str2num(get(handles.endTem,'string'));
t = str2num(get(handles.step,'string'));
te= T1:t:T2;
n=floor((T2-T1)/t+1);
nn=num2str(n);
%melting=zeros(99,96);
set(handles.gradientNo,'string',nn);


%show the temperature gradient number
function gradientNo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gradientNo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% set radios on
function clean_Callback(hObject, eventdata, handles)
% hObject    handle to clean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
    PA1=1; PA2=2; PA3=3; PA4=4; PA5=5; PA6=6; PA7=7; PA8=8; PA9=9; PA10=10; PA11=11; PA12=12;
    PB1=13; PB2=14; PB3=15; PB4=16; PB5=17; PB6=18; PB7=19; PB8=20; PB9=21; PB10=22; PB11=23; PB12=24;
    PC1=25; PC2=26; PC3=27; PC4=28; PC5=29; PC6=30; PC7=31; PC8=32; PC9=33; PC10=34; PC11=35; PC12=36;
    PD1=37; PD2=38; PD3=39; PD4=40; PD5=41; PD6=42; PD7=43; PD8=44; PD9=45; PD10=46; PD11=47; PD12=48;
    PE1=49; PE2=50; PE3=51; PE4=52; PE5=53; PE6=54; PE7=55; PE8=56; PE9=57; PE10=58; PE11=59; PE12=60;
    PF1=61; PF2=62; PF3=63; PF4=64; PF5=65; PF6=66; PF7=67; PF8=68; PF9=69; PF10=70; PF11=71; PF12=72;
    PG1=73; PG2=74; PG3=75; PG4=76; PG5=77; PG6=78; PG7=79; PG8=80; PG9=81; PG10=82; PG11=83; PG12=84;
    PH1=85; PH2=86; PH3=87; PH4=88; PH5=89; PH6=90; PH7=91; PH8=92; PH9=93; PH10=94; PH11=95; PH12=96;
set (handles.radiobutton1, 'Value', 1);
set (handles.radiobutton2, 'Value', 1);
set (handles.radiobutton5, 'Value', 1);
set (handles.radiobutton6, 'Value', 1);
set (handles.radiobutton7, 'Value', 1);
set (handles.radiobutton8, 'Value', 1);
set (handles.radiobutton9, 'Value', 1);
set (handles.radiobutton10, 'Value', 1);
set (handles.radiobutton11, 'Value', 1);
set (handles.radiobutton12, 'Value', 1);
set (handles.radiobutton13, 'Value', 1);
set (handles.radiobutton14, 'Value', 1);
set (handles.radiobutton15, 'Value', 1);
set (handles.radiobutton16, 'Value', 1);
set (handles.radiobutton17, 'Value', 1);
set (handles.radiobutton18, 'Value', 1);
set (handles.radiobutton19, 'Value', 1);
set (handles.radiobutton20, 'Value', 1);
set (handles.radiobutton21, 'Value', 1);
set (handles.radiobutton22, 'Value', 1);
set (handles.radiobutton23, 'Value', 1);
set (handles.radiobutton24, 'Value', 1);
set (handles.radiobutton25, 'Value', 1);
set (handles.radiobutton26, 'Value', 1);
set (handles.radiobutton27, 'Value', 1);
set (handles.radiobutton28, 'Value', 1);
set (handles.radiobutton29, 'Value', 1);
set (handles.radiobutton30, 'Value', 1);
set (handles.radiobutton31, 'Value', 1);
set (handles.radiobutton32, 'Value', 1);
set (handles.radiobutton33, 'Value', 1);
set (handles.radiobutton34, 'Value', 1);
set (handles.radiobutton35, 'Value', 1);
set (handles.radiobutton36, 'Value', 1);
set (handles.radiobutton37, 'Value', 1);
set (handles.radiobutton38, 'Value', 1);
set (handles.radiobutton39, 'Value', 1);
set (handles.radiobutton40, 'Value', 1);
set (handles.radiobutton41, 'Value', 1);
set (handles.radiobutton42, 'Value', 1);
set (handles.radiobutton43, 'Value', 1);
set (handles.radiobutton44, 'Value', 1);
set (handles.radiobutton45, 'Value', 1);
set (handles.radiobutton46, 'Value', 1);
set (handles.radiobutton47, 'Value', 1);
set (handles.radiobutton48, 'Value', 1);
set (handles.radiobutton49, 'Value', 1);
set (handles.radiobutton50, 'Value', 1);
set (handles.radiobutton51, 'Value', 1);
set (handles.radiobutton52, 'Value', 1);
set (handles.radiobutton55, 'Value', 1);
set (handles.radiobutton56, 'Value', 1);
set (handles.radiobutton57, 'Value', 1);
set (handles.radiobutton58, 'Value', 1);
set (handles.radiobutton59, 'Value', 1);
set (handles.radiobutton60, 'Value', 1);
set (handles.radiobutton61, 'Value', 1);
set (handles.radiobutton62, 'Value', 1);
set (handles.radiobutton63, 'Value', 1);
set (handles.radiobutton64, 'Value', 1);
set (handles.radiobutton65, 'Value', 1);
set (handles.radiobutton66, 'Value', 1);
set (handles.radiobutton67, 'Value', 1);
set (handles.radiobutton68, 'Value', 1);
set (handles.radiobutton69, 'Value', 1);
set (handles.radiobutton70, 'Value', 1);
set (handles.radiobutton71, 'Value', 1);
set (handles.radiobutton72, 'Value', 1);
set (handles.radiobutton73, 'Value', 1);
set (handles.radiobutton74, 'Value', 1);
set (handles.radiobutton75, 'Value', 1);
set (handles.radiobutton76, 'Value', 1);
set (handles.radiobutton77, 'Value', 1);
set (handles.radiobutton78, 'Value', 1);
set (handles.radiobutton79, 'Value', 1);
set (handles.radiobutton80, 'Value', 1);
set (handles.radiobutton81, 'Value', 1);
set (handles.radiobutton82, 'Value', 1);
set (handles.radiobutton83, 'Value', 1);
set (handles.radiobutton84, 'Value', 1);
set (handles.radiobutton85, 'Value', 1);
set (handles.radiobutton86, 'Value', 1);
set (handles.radiobutton87, 'Value', 1);
set (handles.radiobutton88, 'Value', 1);
set (handles.radiobutton89, 'Value', 1);
set (handles.radiobutton90, 'Value', 1);
set (handles.radiobutton91, 'Value', 1);
set (handles.radiobutton92, 'Value', 1);
set (handles.radiobutton93, 'Value', 1);
set (handles.radiobutton94, 'Value', 1);
set (handles.radiobutton95, 'Value', 1);
set (handles.radiobutton96, 'Value', 1);
set (handles.radiobutton53, 'Value', 1);
set (handles.radiobutton54, 'Value', 1);
set (handles.radiobutton97, 'Value', 1);
set (handles.radiobutton98, 'Value', 1);

% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% set radios off to remove memory
function remove_Callback(hObject, eventdata, handles)
% hObject    handle to remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
    PA1=97; PA2=97; PA3=97; PA4=97; PA5=97; PA6=97; PA7=97; PA8=97; PA9=97; PA10=97; PA11=97; PA12=97;
    PB1=97; PB2=97; PB3=97; PB4=97; PB5=97; PB6=97; PB7=97; PB8=97; PB9=97; PB10=97; PB11=97; PB12=97;
    PC1=97; PC2=97; PC3=97; PC4=97; PC5=97; PC6=97; PC7=97; PC8=97; PC9=97; PC10=97; PC11=97; PC12=97;
    PD1=97; PD2=97; PD3=97; PD4=97; PD5=97; PD6=97; PD7=97; PD8=97; PD9=97; PD10=97; PD11=97; PD12=97;
    PE1=97; PE2=97; PE3=97; PE4=97; PE5=97; PE6=97; PE7=97; PE8=97; PE9=97; PE10=97; PE11=97; PE12=97;
    PF1=97; PF2=97; PF3=97; PF4=97; PF5=97; PF6=97; PF7=97; PF8=97; PF9=97; PF10=97; PF11=97; PF12=97;
    PG1=97; PG2=97; PG3=97; PG4=97; PG5=97; PG6=97; PG7=97; PG8=97; PG9=97; PG10=97; PG11=97; PG12=97;
    PH1=97; PH2=97; PH3=97; PH4=97; PH5=97; PH6=97; PH7=97; PH8=97; PH9=97; PH10=97; PH11=97; PH12=97;
set (handles.radiobutton1, 'Value', 0);
set (handles.radiobutton2, 'Value', 0);
set (handles.radiobutton5, 'Value', 0);
set (handles.radiobutton6, 'Value', 0);
set (handles.radiobutton7, 'Value', 0);
set (handles.radiobutton8, 'Value', 0);
set (handles.radiobutton9, 'Value', 0);
set (handles.radiobutton10, 'Value', 0);
set (handles.radiobutton11, 'Value', 0);
set (handles.radiobutton12, 'Value', 0);
set (handles.radiobutton13, 'Value', 0);
set (handles.radiobutton14, 'Value', 0);
set (handles.radiobutton15, 'Value', 0);
set (handles.radiobutton16, 'Value', 0);
set (handles.radiobutton17, 'Value', 0);
set (handles.radiobutton18, 'Value', 0);
set (handles.radiobutton19, 'Value', 0);
set (handles.radiobutton20, 'Value', 0);
set (handles.radiobutton21, 'Value', 0);
set (handles.radiobutton22, 'Value', 0);
set (handles.radiobutton23, 'Value', 0);
set (handles.radiobutton24, 'Value', 0);
set (handles.radiobutton25, 'Value', 0);
set (handles.radiobutton26, 'Value', 0);
set (handles.radiobutton27, 'Value', 0);
set (handles.radiobutton28, 'Value', 0);
set (handles.radiobutton29, 'Value', 0);
set (handles.radiobutton30, 'Value', 0);
set (handles.radiobutton31, 'Value', 0);
set (handles.radiobutton32, 'Value', 0);
set (handles.radiobutton33, 'Value', 0);
set (handles.radiobutton34, 'Value', 0);
set (handles.radiobutton35, 'Value', 0);
set (handles.radiobutton36, 'Value', 0);
set (handles.radiobutton37, 'Value', 0);
set (handles.radiobutton38, 'Value', 0);
set (handles.radiobutton39, 'Value', 0);
set (handles.radiobutton40, 'Value', 0);
set (handles.radiobutton41, 'Value', 0);
set (handles.radiobutton42, 'Value', 0);
set (handles.radiobutton43, 'Value', 0);
set (handles.radiobutton44, 'Value', 0);
set (handles.radiobutton45, 'Value', 0);
set (handles.radiobutton46, 'Value', 0);
set (handles.radiobutton47, 'Value', 0);
set (handles.radiobutton48, 'Value', 0);
set (handles.radiobutton49, 'Value', 0);
set (handles.radiobutton51, 'Value', 0);
set (handles.radiobutton50, 'Value', 0);
set (handles.radiobutton52, 'Value', 0);
set (handles.radiobutton55, 'Value', 0);
set (handles.radiobutton56, 'Value', 0);
set (handles.radiobutton57, 'Value', 0);
set (handles.radiobutton58, 'Value', 0);
set (handles.radiobutton59, 'Value', 0);
set (handles.radiobutton60, 'Value', 0);
set (handles.radiobutton61, 'Value', 0);
set (handles.radiobutton62, 'Value', 0);
set (handles.radiobutton63, 'Value', 0);
set (handles.radiobutton64, 'Value', 0);
set (handles.radiobutton65, 'Value', 0);
set (handles.radiobutton66, 'Value', 0);
set (handles.radiobutton67, 'Value', 0);
set (handles.radiobutton68, 'Value', 0);
set (handles.radiobutton69, 'Value', 0);
set (handles.radiobutton70, 'Value', 0);
set (handles.radiobutton71, 'Value', 0);
set (handles.radiobutton72, 'Value', 0);
set (handles.radiobutton73, 'Value', 0);
set (handles.radiobutton74, 'Value', 0);
set (handles.radiobutton75, 'Value', 0);
set (handles.radiobutton76, 'Value', 0);
set (handles.radiobutton77, 'Value', 0);
set (handles.radiobutton78, 'Value', 0);
set (handles.radiobutton79, 'Value', 0);
set (handles.radiobutton80, 'Value', 0);
set (handles.radiobutton81, 'Value', 0);
set (handles.radiobutton82, 'Value', 0);
set (handles.radiobutton83, 'Value', 0);
set (handles.radiobutton84, 'Value', 0);
set (handles.radiobutton85, 'Value', 0);
set (handles.radiobutton86, 'Value', 0);
set (handles.radiobutton87, 'Value', 0);
set (handles.radiobutton88, 'Value', 0);
set (handles.radiobutton89, 'Value', 0);
set (handles.radiobutton90, 'Value', 0);
set (handles.radiobutton91, 'Value', 0);
set (handles.radiobutton92, 'Value', 0);
set (handles.radiobutton93, 'Value', 0);
set (handles.radiobutton94, 'Value', 0);
set (handles.radiobutton95, 'Value', 0);
set (handles.radiobutton96, 'Value', 0);
set (handles.radiobutton53, 'Value', 0);
set (handles.radiobutton54, 'Value', 0);
set (handles.radiobutton97, 'Value', 0);
set (handles.radiobutton98, 'Value', 0);


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1




% --- Executes during object deletion, before destroying properties.
function popupmenu1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function controlnameANOVA_Callback(hObject, eventdata, handles)
% hObject    handle to controlnameANOVA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of controlnameANOVA as text
%        str2double(get(hObject,'String')) returns contents of controlnameANOVA as a double


% --- Executes during object creation, after setting all properties.
function controlnameANOVA_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AddGroupsANOVA_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of AddGroupsANOVA as text
%        str2double(get(hObject,'String')) returns contents of AddGroupsANOVA as a double


% --- Executes during object creation, after setting all properties.
function AddGroupsANOVA_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
function LoadConcentration_Callback(hObject, eventdata, handles)
% hObject    handle to LoadConcentration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LoadConcentration as text
%        str2double(get(hObject,'String')) returns contents of LoadConcentration as a double


% --- Executes during object creation, after setting all properties.
function LoadConcentration_CreateFcn(hObject, eventdata, ~)
% hObject    handle to LoadConcentration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in LigandContrations.
function LigandContrations_Callback(hObject, eventdata, handles)
% hObject    handle to LigandContrations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object deletion, before destroying properties.
function LigandContrations_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to LigandContrations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object deletion, before destroying properties.
function LoadConcentration_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to LoadConcentration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




%Save Result

% plot melting curve IN MATLAB FIGURE
function plotMCsave_Callback(hObject, eventdata, handles)

global te sorts   colorpicker smsorts FDs  smFDs cvpath cvname norsorts
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
 meltings=[PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12];
 cla reset;
 lig={};
 xxx=[];yyy=[];iii=1;
 scrsz = get(groot,'ScreenSize');
 mc=figure('Name','Melting Curve','NumberTitle','off','Position',[scrsz(3)/10 scrsz(4)/10 scrsz(3)/2 scrsz(4)/2]);
 axes('FontSize',12);
 msize=size(meltings);
 mb=msize(1,2);
 getsmooth=str2num(get(handles.smooth,'string'));
 isnormalise=str2num(get(handles.isnormalise,'string'));
 lege=str2num(get(handles.legtag,'string'));
 if mb==0
     wrong=0;
 else
     for x=1:mb
     y=meltings(x);
     if y==97
         wrong=sorts(:,y);
     else
          pkvs=[];locvs=[];nums=[];
         [pkvs,locvs,nums,condition,noisy]=peaknumbers(smsorts(:,y),smFDs(:,y));
         [pkvs2,locvs2,nums2,condition2,noisy2]=peaknumbers(smsorts(:,y),FDs(:,y));
         
         co=colorpicker(y,:);

     if getsmooth==0    
         if isnormalise==0
            plot(te,sorts(:,y),'color',co,'LineWidth',2);   
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
         elseif isnormalise==1
            debg=sorts(:,y)-min(sorts(:,y));
            plot(te,(debg/max(debg)),'color',co,'LineWidth',2);    
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];    
         end
     elseif getsmooth==2
        %debg=sorts(:,y)-min(sorts(:,y));(debg/max(debg))
        plot(te,norsorts(:,y),'color',co,'LineWidth',2);    
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
        hold on
        plot(te,smsorts(:,y),'color','k','LineWidth',2); 
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];
     elseif getsmooth==1
        debg2=smsorts(:,y)-min(smsorts(:,y));
        plot(te,(debg2/max(debg2)),'color',co,'LineWidth',2);
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];
     end  

     if nums<=0
         nnums=1;
     else
         nnums=nums;
     end

     xxx(iii:(nnums+iii-1))=te(locvs);
     yyy(iii:(nnums+iii-1))=(smsorts(locvs,y)-min(smsorts(:,y)))/(max(smsorts(:,y))-min(smsorts(:,y)));
     iii=iii+nnums;
     end     
     hold on
     end
  
    if lege==1
    legend(lig,'Location','southeast','TextColor','b','FontSize',10,'FontWeight','bold');
    end
ylabel('Fluorescence (A.U.)','FontSize',17,'FontWeight','bold','Color','k');
xlabel('Temperature ( ^{\circ}C )','FontSize',17,'FontWeight','bold','Color','k');
 end


%
ax=gca;
set(ax, 'FontSize',14,'FontWeight','bold')
%
 savename=[cvpath, 'anaDSF/',cvname,'/MC'];
 print(mc,'-dpng','-r250',savename)
% plot FD IN MATLAB FIGURE
function plotFDsave_Callback(hObject, eventdata, handles)
 
 global te colorpicker FDs  smFDs smsorts cvname cvpath
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
 melting=[PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12];
 cla reset;
 scrsz = get(groot,'ScreenSize');
 fd=figure('Name','First Derivative Curve','NumberTitle','off','Position',[scrsz(3)/10 scrsz(4)/10 scrsz(3)/2 scrsz(4)/2]);
 axes('FontSize',12);
 msize=size(melting);
 mb=msize(1,2);
 lig={};
 xxx=[];yyy=[]; iii=1; kkk=1;
 getsmooth=str2num(get(handles.smooth,'string'));
 isnormalise=str2num(get(handles.isnormalise,'string'));
 lege=str2num(get(handles.legtag,'string'));
 %something wrong with label --
 
 for x=1:mb
     y=melting(x);
     if y==97
         wrong=FDs(:,y);
     else
         pkvs=[];locvs=[];nums=[];
         [pkvs,locvs,nums,condition,noisy]=peaknumbers(smsorts(:,y),smFDs(:,y));
         [pkvs2,locvs2,nums2,condition2,noisy2]=peaknumbers(smsorts(:,y),FDs(:,y));
         
         co=colorpicker(y,:);
         if getsmooth==0 
             if isnormalise==0
                plot(te,FDs(:,y),'color',co,'LineWidth',2);
                lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
             elseif isnormalise==1
                if max(FDs(:,y))<=0
                kkk=-1;
                else
                kkk=1;
                end
                plot(te,kkk*(FDs(:,y)-min(FDs(:,y)))/(max(FDs(:,y))-min(FDs(:,y))),'color',co,'LineWidth',2);
                lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
             end
        elseif getsmooth==2
            if max(FDs(:,y))<=0
                kkk=-1;
            else
                kkk=1;
            end
            plot(te,kkk*(FDs(:,y)-min(FDs(:,y)))/(max(FDs(:,y))-min(FDs(:,y))),'color',co,'LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
            hold on
            plot(te,kkk*(smFDs(:,y)-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y))),'color','k','LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];
        elseif getsmooth==1
            if max(FDs(:,y))<=0
                kkk=-1;
            else
                kkk=1;
            end
            plot(te,kkk*(smFDs(:,y)-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y))),'color',co,'LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];            
         end
         if nums<=0
            nnums=1;
         else
            nnums=nums;
         end
        xxx(iii:(nnums+iii-1))=te(locvs);
        yyy(iii:(nnums+iii-1))=kkk*(pkvs-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y)));
        iii=iii+nnums;
     end
     hold on
 end

    if lege==1
    legend(lig,'Location','northeast','TextColor','b','FontSize',10,'FontWeight','bold');
    end
    ylabel('dFluorescence (A.U.)','FontSize',17,'FontWeight','bold','Color','k');
    xlabel('Temperature ( ^{\circ}C )','FontSize',17,'FontWeight','bold','Color','k');
%
ax=gca;
set(ax, 'FontSize',14,'FontWeight','bold')
%
    savename=[cvpath, 'anaDSF/',cvname,'/FD'];  
    print(fd,'-dpng','-r250',savename)
% plot melting curve with Tm IN MATLAB FIGURE
function plotMCTmsave_Callback(hObject, eventdata, handles)
 global te sorts  T1 t biggest colorpicker smsorts FDs  smFDs cvname cvpath
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
 meltings=[PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12];
 cla reset;
 lig={};
 xxx=[];yyy=[];iii=1;
 scrsz = get(groot,'ScreenSize');
 mcmt=figure('Name','Melting Curve + Melting Temperature','NumberTitle','off','Position',[scrsz(3)/10 scrsz(4)/10 scrsz(3)/2 scrsz(4)/2]);
 axes('FontSize',12);
 msize=size(meltings);
 mb=msize(1,2);
 getsmooth=str2num(get(handles.smooth,'string'));
 isnormalise=str2num(get(handles.isnormalise,'string'));
 lege=str2num(get(handles.legtag,'string'));
 if mb==0
     wrong=0;
 else
     for x=1:mb
     y=meltings(x);
     if y==97
         wrong=sorts(:,y);
     else
          pkvs=[];locvs=[];nums=[];
         [pkvs,locvs,nums,condition,noisy]=peaknumbers(smsorts(:,y),smFDs(:,y));
         [pkvs2,locvs2,nums2,condition2,noisy2]=peaknumbers(smsorts(:,y),FDs(:,y));
         co=colorpicker(y,:);

     if getsmooth==0    
         if isnormalise==0
            plot(te,sorts(:,y),'color',co,'LineWidth',2);   
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
         elseif isnormalise==1
            debg=sorts(:,y)-min(sorts(:,y));
            plot(te,(debg/max(debg)),'color',co,'LineWidth',2);    
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];    
         end
     elseif getsmooth==2
        debg=sorts(:,y)-min(sorts(:,y));
        plot(te,(debg/max(debg)),'color',co,'LineWidth',2);    
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
        hold on
        plot(te,smsorts(:,y),'color','k','LineWidth',2); 
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];
     elseif getsmooth==1
        debg2=smsorts(:,y)-min(smsorts(:,y));
        plot(te,(debg2/max(debg2)),'color',co,'LineWidth',2);
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];
     end  

     if nums<=0
         nnums=1;
     else
         nnums=nums;
     end

     xxx(iii:(nnums+iii-1))=te(locvs);
     yyy(iii:(nnums+iii-1))=(smsorts(locvs,y)-min(smsorts(:,y)))/(max(smsorts(:,y))-min(smsorts(:,y)));
     iii=iii+nnums;
     end     
     hold on
     end
  
     hold on
     if getsmooth==0 
        
        for x=1:mb
        y=meltings(x);
            if y==97
                wrong=y;
            else
         %meltTm value
                meltTm=biggest(y);
         %position of the meltTm
                Fcurve=round((meltTm-T1)/t+1);
         %the exact value at meltTm position
         if isnormalise==0
                curve=sorts(:,y);
         elseif isnormalise==1
                curve=(sorts(:,y)-min(sorts(:,y)))/(max(sorts(:,y))-min(sorts(:,y)));
         end
                va=curve(Fcurve);                
                plot(meltTm,va,'k.','MarkerSize',24);
          
            end
        hold on
        end
     elseif getsmooth==1 || getsmooth==2
         plot(xxx,yyy,'k.','MarkerSize',24); 
     end
     if lege==1
        legend(lig,'Location','southeast','TextColor','b','FontSize',10,'FontWeight','bold');
     end
     ylabel('Fluorescence (A.U.)','FontSize',17,'FontWeight','bold','Color','k');
     xlabel('Temperature ( ^{\circ}C )','FontSize',17,'FontWeight','bold','Color','k');
 end
 
%
ax=gca;
set(ax, 'FontSize',14,'FontWeight','bold')
%
 savename=[cvpath, 'anaDSF/',cvname,'/MCmt'];
 print(mcmt,'-dpng','-r250',savename)

% plot FD with Tm IN MATLAB FIGURE
function plotFDTmsave_Callback(hObject, eventdata, handles)
 global te colorpicker biggest T1 t FDs  smFDs smsorts cvname cvpath
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
 melting=[PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12];
 cla reset;
 scrsz = get(groot,'ScreenSize');
 fdmt=figure('Name','First Derivative Curve + Melting Temperature','NumberTitle','off','Position',[scrsz(3)/10 scrsz(4)/10 scrsz(3)/2 scrsz(4)/2]);
 axes('FontSize',12);
 msize=size(melting);
 mb=msize(1,2);
 lig={};
 xxx=[];yyy=[]; iii=1; kkk=1;
 getsmooth=str2num(get(handles.smooth,'string'));
 isnormalise=str2num(get(handles.isnormalise,'string'));
 lege=str2num(get(handles.legtag,'string'));
 %something wrong with label --
 
 for x=1:mb
     y=melting(x);
     if y==97
         wrong=FDs(:,y);
     else
         pkvs=[];locvs=[];nums=[];
         [pkvs,locvs,nums,condition,noisy]=peaknumbers(smsorts(:,y),smFDs(:,y));
         [pkvs2,locvs2,nums2,condition2,noisy2]=peaknumbers(smsorts(:,y),FDs(:,y));
         
         co=colorpicker(y,:);
         if getsmooth==0 
             if isnormalise==0
                plot(te,FDs(:,y),'color',co,'LineWidth',2);
                lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
             elseif isnormalise==1
                if max(FDs(:,y))<=0
                kkk=-1;
                else
                kkk=1;
                end
                plot(te,kkk*(FDs(:,y)-min(FDs(:,y)))/(max(FDs(:,y))-min(FDs(:,y))),'color',co,'LineWidth',2);
                lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
             end
        elseif getsmooth==2
            if max(FDs(:,y))<=0
                kkk=-1;
            else
                kkk=1;
            end
            plot(te,kkk*(FDs(:,y)-min(FDs(:,y)))/(max(FDs(:,y))-min(FDs(:,y))),'color',co,'LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs2(find(pkvs2==max(pkvs2)))))]];
            hold on
            plot(te,kkk*(smFDs(:,y)-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y))),'color','k','LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];
        elseif getsmooth==1
            if max(FDs(:,y))<=0
                kkk=-1;
            else
                kkk=1;
            end
            plot(te,kkk*(smFDs(:,y)-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y))),'color',co,'LineWidth',2);
            lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm:',num2str(te(locvs))]];            
         end
         if nums<=0
            nnums=1;
         else
            nnums=nums;
         end
        xxx(iii:(nnums+iii-1))=te(locvs);
        yyy(iii:(nnums+iii-1))=kkk*(pkvs-min(smFDs(:,y)))/(max(smFDs(:,y))-min(smFDs(:,y)));
        iii=iii+nnums;
     end
     hold on
 end
 

 hold on
 if getsmooth==0 
    for x=1:mb
        y=melting(x);
        if y==97
             wrong=y;
        else
         %meltTm value
            meltTm=biggest(y);
         %position of the meltTm
            Fcurve=round((meltTm-T1)/t+1);
         %the exact value at meltTm position
         if isnormalise==0
             curve=FDs(:,y);
         elseif isnormalise==1
             curve=kkk*(FDs(:,y)-min(FDs(:,y)))/(max(FDs(:,y))-min(FDs(:,y)));
         end
            va=curve(Fcurve);
            plot(meltTm,va,'k.','MarkerSize',24);    
        end
    hold on
    end
 elseif getsmooth==1 || getsmooth==2
     
     plot(xxx,yyy,'.','MarkerFaceColor','r','MarkerEdgeColor','k','MarkerSize',24); 
 end
 
    if lege==1
        legend(lig,'Location','northeast','TextColor','b','FontSize',10,'FontWeight','bold');
    end
    ylabel('dFluorescence (A.U.)','FontSize',17,'FontWeight','bold','Color','k');
    xlabel('Temperature ( ^{\circ}C )','FontSize',17,'FontWeight','bold','Color','k');
    
    
    
%
ax=gca;
set(ax, 'FontSize',14,'FontWeight','bold')
%
    savename=[cvpath, 'anaDSF/',cvname,'/FDmt'];  
    print(fdmt,'-dpng','-r250',savename)
  %save the processed data for custom figures
function saveimage_Callback(hObject, eventdata, handles)

global biggest maxsmresult  DT50
 
 aaa=['A1';'A2';'A3';'A4';'A5';'A6';'A7';'A8';'A9'];
 bbb=['A10';'A11';'A12'];
 ccc=['B1';'B2';'B3';'B4';'B5';'B6';'B7';'B8';'B9'];
 ccc2=['B10';'B11';'B12'];
 ddd=['C1';'C2';'C3';'C4';'C5';'C6';'C7';'C8';'C9'];
 ddd2=['C10';'C11';'C12'];
 eee=['D1';'D2';'D3';'D4';'D5';'D6';'D7';'D8';'D9'];
 fff=['D10';'D11';'D12'];
 ggg=['E1';'E2';'E3';'E4';'E5';'E6';'E7';'E8';'E9'];
 ggg2=['E10';'E11';'E12'];
 hhh=['F1';'F2';'F3';'F4';'F5';'F6';'F7';'F8';'F9'];
 hhh2=['F10';'F11';'F12'];
 iii=['G1';'G2';'G3';'G4';'G5';'G6';'G7';'G8';'G9'];
 jjj=['G10';'G11';'G12'];
 kkk=['H1';'H2';'H3';'H4';'H5';'H6';'H7';'H8';'H9'];
 kkk2=['H10';'H11';'H12'];
names=[cellstr(aaa);cellstr(bbb);cellstr(ccc);cellstr(ccc2);cellstr(ddd);cellstr(ddd2);cellstr(eee);cellstr(fff);cellstr(ggg);cellstr(ggg2);cellstr(hhh);cellstr(hhh2);cellstr(iii);cellstr(jjj);cellstr(kkk);cellstr(kkk2)];
TmFD=biggest;TmSmoothFD=maxsmresult;TmDT50=DT50;
save('Tm.mat','TmFD','TmSmoothFD','TmDT50','names')



Tmresult=zeros(96,3);
Tmresult(:,1)=TmFD;
Tmresult(:,2)=TmSmoothFD;
Tmresult(:,3)=TmDT50;
 Tfig = figure('Name','Tm Result','NumberTitle','off');
 t = uitable(Tfig,'Data',Tmresult);
 t.ColumnName = {'Tm(FD)','Tm(smoothedFD)','Tm(DT50)'};
 t.Position = [0 0 400 400];
 

 


% --- Executes on scroll wheel click while the figure is in focus.
function figure1_WindowScrollWheelFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	VerticalScrollCount: signed integer indicating direction and number of clicks
%	VerticalScrollAmount: number of lines scrolled for each click
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when uipanel2 is resized.
function uipanel2_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function column_Callback(hObject, eventdata, handles)
% hObject    handle to column (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of column as text
%        str2double(get(hObject,'String')) returns contents of column as a double


% --- Executes during object creation, after setting all properties.
function column_CreateFcn(hObject, eventdata, handles)
% hObject    handle to column (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function smooth_Callback(hObject, eventdata, handles)
% hObject    handle to smooth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of smooth as text
%        str2double(get(hObject,'String')) returns contents of smooth as a double


% --- Executes during object creation, after setting all properties.
function smooth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to smooth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function path_Callback(hObject, eventdata, handles)
% hObject    handle to path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of path as text
%        str2double(get(hObject,'String')) returns contents of path as a double


% --- Executes during object creation, after setting all properties.
function path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function smoothrange_Callback(hObject, eventdata, handles)
% hObject    handle to smoothrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of smoothrange as text
%        str2double(get(hObject,'String')) returns contents of smoothrange as a double


% --- Executes during object creation, after setting all properties.
function smoothrange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to smoothrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in halfvalue.
function halfvalue_Callback(hObject, eventdata, handles)
% hObject    handle to halfvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global te sorts   colorpicker smsorts cvname cvpath DT50 MDT50
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
 meltings=[PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12];
 cla reset;
 lig={};
 xxx=[];yyy=[];iii=1;
 lege=str2num(get(handles.legtag,'string'));
 scrsz = get(groot,'ScreenSize');
 hmcmt=figure('Name','Melting Curve + Melting Temperature','NumberTitle','off','Position',[scrsz(3)/10 scrsz(4)/10 scrsz(3)/2 scrsz(4)/2]);
 axes('FontSize',12);
 msize=size(meltings);
 mb=msize(1,2);
 isnormalise=str2num(get(handles.isnormalise,'string'));
 if mb==0
     wrong=0;
 else
     for x=1:mb
     y=meltings(x);
     if y==97
         wrong=sorts(:,y);
     else
         co=colorpicker(y,:);

     if isnormalise==0       
        plot(te,sorts(:,y),'color',co,'LineWidth',2);   
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm: ',num2str(DT50(y))]];
     elseif isnormalise==1
        debg2=smsorts(:,y)-min(smsorts(:,y));
        plot(te,(debg2/max(debg2)),'color',co,'LineWidth',2);
        lig=[lig,['(',num2str(ceil(y/12)),':',num2str(y-(ceil(y/12)-1)*12),') =>Tm: ',num2str(DT50(y))]];
     end  
     end     
     hold on
     end
  
     hold on
     
        for x=1:mb
        y=meltings(x);
            if y==97
                wrong=y;
            else
                if isnormalise==0 
                plot(DT50(y),MDT50(y),'k.','MarkerSize',24);
                elseif isnormalise==1
                plot(DT50(y),0.5,'k.','MarkerSize',24);                 
                end
            end   
        hold on
                 
        end
      if lege==1
        legend(lig,'Location','southeast','TextColor','b','FontSize',10,'FontWeight','bold');
      end
 end
ylabel('Fluorescence (A.U.)','FontSize',17,'FontWeight','bold','Color','k');
xlabel('Temperature ( ^{\circ}C )','FontSize',17,'FontWeight','bold','Color','k');


%
ax=gca;
set(ax, 'FontSize',14,'FontWeight','bold')
%

savename=[cvpath, 'anaDSF/',cvname,'/DT50mt']
print(hmcmt,'-dpng','-r250',savename)


function isnormalise_Callback(hObject, eventdata, handles)
% hObject    handle to isnormalise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of isnormalise as text
%        str2double(get(hObject,'String')) returns contents of isnormalise as a double


% --- Executes during object creation, after setting all properties.
function isnormalise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to isnormalise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function legtag_Callback(hObject, eventdata, handles)
% hObject    handle to legtag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of legtag as text
%        str2double(get(hObject,'String')) returns contents of legtag as a double


% --- Executes during object creation, after setting all properties.
function legtag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to legtag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cut_Callback(hObject, eventdata, handles)
% hObject    handle to cut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cut as text
%        str2double(get(hObject,'String')) returns contents of cut as a double


% --- Executes during object creation, after setting all properties.
function cut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in SaveSelected.
function SaveSelected_Callback(hObject, eventdata, handles)

 global te sorts  FDs smsorts smFDs norsorts norFDs
 global PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12
 global PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12
 global PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12
 global PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12
 meltings=[PA1 PA2 PA3 PA4 PA5 PA6 PA7 PA8 PA9 PA10 PA11 PA12 PB1 PB2 PB3 PB4 PB5 PB6 PB7 PB8 PB9 PB10 PB11 PB12 PC1 PC2 PC3 PC4 PC5 PC6 PC7 PC8 PC9 PC10 PC11 PC12 PD1 PD2 PD3 PD4 PD5 PD6 PD7 PD8 PD9 PD10 PD11 PD12 PE1 PE2 PE3 PE4 PE5 PE6 PE7 PE8 PE9 PE10 PE11 PE12 PF1 PF2 PF3 PF4 PF5 PF6 PF7 PF8 PF9 PF10 PF11 PF12 PG1 PG2 PG3 PG4 PG5 PG6 PG7 PG8 PG9 PG10 PG11 PG12 PH1 PH2 PH3 PH4 PH5 PH6 PH7 PH8 PH9 PH10 PH11 PH12];
 cla reset;
 lig={};
 xxx=[];yyy=[];iii=1;
 axes(handles.axes1);
 msize=size(meltings);
 mb=msize(1,2);
 getsmooth=str2num(get(handles.smooth,'string'));
 isnormalise=str2num(get(handles.isnormalise,'string'));
 lege=str2num(get(handles.legtag,'string'));
 i=[];
 i=1;
 if mb==0
     wrong=0;
 else
     for x=1:mb
     y=meltings(x);
     if y==97
         wrong=y;
     else
         sel(i)=y;
         i=i+1;
     end
     end
 end
 aaa=['A1';'A2';'A3';'A4';'A5';'A6';'A7';'A8';'A9'];
 bbb=['A10';'A11';'A12'];
 ccc=['B1';'B2';'B3';'B4';'B5';'B6';'B7';'B8';'B9'];
 ccc2=['B10';'B11';'B12'];
 ddd=['C1';'C2';'C3';'C4';'C5';'C6';'C7';'C8';'C9'];
 ddd2=['C10';'C11';'C12'];
 eee=['D1';'D2';'D3';'D4';'D5';'D6';'D7';'D8';'D9'];
 fff=['D10';'D11';'D12'];
 ggg=['E1';'E2';'E3';'E4';'E5';'E6';'E7';'E8';'E9'];
 ggg2=['E10';'E11';'E12'];
 hhh=['F1';'F2';'F3';'F4';'F5';'F6';'F7';'F8';'F9'];
 hhh2=['F10';'F11';'F12'];
 iii=['G1';'G2';'G3';'G4';'G5';'G6';'G7';'G8';'G9'];
 jjj=['G10';'G11';'G12'];
 kkk=['H1';'H2';'H3';'H4';'H5';'H6';'H7';'H8';'H9'];
 kkk2=['H10';'H11';'H12'];
 names=[cellstr(aaa);cellstr(bbb);cellstr(ccc);cellstr(ccc2);cellstr(ddd);cellstr(ddd2);cellstr(eee);cellstr(fff);cellstr(ggg);cellstr(ggg2);cellstr(hhh);cellstr(hhh2);cellstr(iii);cellstr(jjj);cellstr(kkk);cellstr(kkk2)];
 
 selename=names(sel,1)';
 seledata=sorts(:,sel);
 SeleMCs(:,1)=te;
 SeleMCs(:,2:(length(sel)+1))=seledata;

 seledata2=FDs(:,sel);
 SeleFDs(:,1)=te;
 SeleFDs(:,2:(length(sel)+1))=seledata2;

 seledata3=norsorts(:,sel);
 SeleNorMCs(:,1)=te;
 SeleNorMCs(:,2:(length(sel)+1))=seledata3;

 seledata4=norFDs(:,sel);
 SeleNorFDs(:,1)=te;
 SeleNorFDs(:,2:(length(sel)+1))=seledata4;
 
 seledata5=smsorts(:,sel);
 SelesmMCs(:,1)=te;
 SelesmMCs(:,2:(length(sel)+1))=seledata5;

 seledata6=smFDs(:,sel);
 SelesmFDs(:,1)=te;
 SelesmFDs(:,2:(length(sel)+1))=seledata6;


 
 wellname=['Temperature',selename];
 
 save('SelectedWells.mat','SeleMCs','SeleFDs','SeleNorMCs','SeleNorFDs','SelesmMCs','SelesmFDs','wellname')
