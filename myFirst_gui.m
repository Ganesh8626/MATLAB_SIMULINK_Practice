function varargout = myFirst_gui(varargin)
% MYFIRST_GUI MATLAB code for myFirst_gui.fig
%      MYFIRST_GUI, by itself, creates a new MYFIRST_GUI or raises the existing
%      singleton*.
%
%      H = MYFIRST_GUI returns the handle to a new MYFIRST_GUI or the handle to
%      the existing singleton*.
%
%      MYFIRST_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYFIRST_GUI.M with the given input arguments.
%
%      MYFIRST_GUI('Property','Value',...) creates a new MYFIRST_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before myFirst_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to myFirst_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help myFirst_gui

% Last Modified by GUIDE v2.5 23-Sep-2020 13:21:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @myFirst_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @myFirst_gui_OutputFcn, ...
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


% --- Executes just before myFirst_gui is made visible.
function myFirst_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to myFirst_gui (see VARARGIN)

% Choose default command line output for myFirst_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes myFirst_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = myFirst_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
persistent count
if isempty(count)
    count=0;
end
count=count+1;
str=sprintf("Total Clicks:%d",count);
set(handles.text1,"string",str)