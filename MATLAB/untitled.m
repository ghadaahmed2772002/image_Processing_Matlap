function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 17-Dec-2023 23:15:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in upload.
function upload_Callback(hObject, eventdata, handles)
% hObject    handle to upload (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%here................................upload
 % Get the file name
    a=uigetfile('*.*')
    filename=a;
    setappdata(0,'filename',filename);
    a=imread(a);
    axes(handles.axes1);
    imshow(a);
    setappdata(0,'a',a)
    setappdata(0,'filename',a);
    plot(handles.axes1,'a')

%here.................................


% --- Executes on button press in rgb_gray.
function rgb_gray_Callback(hObject, eventdata, handles)
% hObject    handle to rgb_gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%here.................................

a=getappdata(0,'a');
a_gray=RGBTOGRAY(a,1);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
%here.................................




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in rgb_binary.
function rgb_binary_Callback(hObject, eventdata, handles)
% hObject    handle to rgb_binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
b_binary=rgb2binary(a);
axes(handles.axes2);
imshow(b_binary)
setappdata(0,'filename',b_binary);

% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ADD.
function ADD_Callback(hObject, eventdata, handles)
% hObject    handle to ADD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Brightness(a,1);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in SUB.
function SUB_Callback(hObject, eventdata, handles)
% hObject    handle to SUB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Brightness(a,2);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in Division.
function Division_Callback(hObject, eventdata, handles)
% hObject    handle to Division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Brightness(a,3);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in Multiply.
function Multiply_Callback(hObject, eventdata, handles)
% hObject    handle to Multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Brightness(a,4);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in vertical.
function vertical_Callback(hObject, eventdata, handles)
% hObject    handle to vertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Sharpen_Image_vertical(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% Hint: get(hObject,'Value') returns toggle state of vertical


% --- Executes on button press in all.
function all_Callback(hObject, eventdata, handles)
% hObject    handle to all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray =Sharpen_Image_all(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of all


% --- Executes on button press in Left_Diagonal.
function Left_Diagonal_Callback(hObject, eventdata, handles)
% hObject    handle to Left_Diagonal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Left_Diagonal


% --- Executes on button press in horizontal.
function horizontal_Callback(hObject, eventdata, handles)
% hObject    handle to horizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray =Sharpen_Image_horizontal(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of horizontal


% --- Executes on button press in IdealHigh.
function IdealHigh_Callback(hObject, eventdata, handles)
% hObject    handle to IdealHigh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of IdealHigh
a=getappdata(0,'a');
a_gray=IHPF(a, 30);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in ButterworthHigh.
function ButterworthHigh_Callback(hObject, eventdata, handles)
% hObject    handle to ButterworthHigh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ButterworthHigh
a=getappdata(0,'a');
a_gray=butterworth(a, 100,1);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);



% --- Executes on button press in GaussianHigh.
function GaussianHigh_Callback(hObject, eventdata, handles)
a=getappdata(0,'a');
a_gray=gaussian_all(a,400,1);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in Vertical.
function Vertical_Callback(hObject, eventdata, handles)
% hObject    handle to Vertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Vertical_Edge_Detection(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of Vertical


% --- Executes on button press in RightDiagonal.
function RightDiagonal_Callback(hObject, eventdata, handles)
% hObject    handle to RightDiagonal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Right_Diagonal_Edge_Detection(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of RightDiagonal


% --- Executes on button press in LeftDiagonal.
function LeftDiagonal_Callback(hObject, eventdata, handles)
% hObject    handle to LeftDiagonal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Left_Diagonal_Edge_Detection(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of LeftDiagonal


% --- Executes on button press in Horizontal.
function Horizontal_Callback(hObject, eventdata, handles)
% hObject    handle to Horizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Horizontal_Edge_Detection(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of Horizontal


% --- Executes on button press in Average.
function Average_Callback(hObject, eventdata, handles)
% hObject    handle to Average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=mean_Blur(a, 3);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in IdealLow.
function IdealLow_Callback(hObject, eventdata, handles)
% hObject    handle to IdealLow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=ILPF(a, 30);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in ButterworthLow.
function ButterworthLow_Callback(hObject, eventdata, handles)
% hObject    handle to ButterworthLow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=butterworth(a, 30,0);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);



% --- Executes on button press in GaussianLow.
function GaussianLow_Callback(hObject, eventdata, handles)
% hObject    handle to GaussianLow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=GLPF(a, 30);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in Min.
function Min_Callback(hObject, eventdata, handles)
% hObject    handle to Min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=min_filter(a, 3);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in Max.
function Max_Callback(hObject, eventdata, handles)
% hObject    handle to Max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=max_filter(a, 3);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in MidPoint.
function MidPoint_Callback(hObject, eventdata, handles)
% hObject    handle to MidPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=midpoint_filter(a, 3);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in InverseLog.
function InverseLog_Callback(hObject, eventdata, handles)
% hObject    handle to InverseLog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=inverse_log_transform(a, 2);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of InverseLog


% --- Executes on button press in Negative.
function Negative_Callback(hObject, eventdata, handles)
% hObject    handle to Negative (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Negative(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of Negative


% --- Executes on button press in Log.
function Log_Callback(hObject, eventdata, handles)
% hObject    handle to Log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=log_transform(a,3);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of Log


% --- Executes on button press in ContrastStretching.
function ContrastStretching_Callback(hObject, eventdata, handles)
% hObject    handle to ContrastStretching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=contrast_stretching(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);
% Hint: get(hObject,'Value') returns toggle state of ContrastStretching


% --- Executes on button press in PLOT.
function PLOT_Callback(hObject, eventdata, handles)
% hObject    handle to PLOT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PLOT


% --- Executes on button press in histogram.
function histogram_Callback(hObject, eventdata, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Assuming 'a' is your image data
    % Assuming 'a' is your image data
    a=getappdata(0,'a');
    histo=a;
    axes(handles.axes2)
    histogram_rgb_gray(histo)


% Hint: get(hObject,'Value') returns toggle state of histogram
% Hint: get(hObject,'Value') returns toggle state of histogram


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot


% --- Executes on button press in Hist_equalization.
function Hist_equalization_Callback(hObject, eventdata, handles)
    global X;
    axes(handles.axes2);
    result = histogram_equalization(X);
    imshow(result);

% Hint: get(hObject,'Value') returns toggle state of Hist_equalization


% --- Executes on button press in SaltPeper.
function SaltPeper_Callback(hObject, eventdata, handles)
% hObject    handle to SaltPeper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=salt_and_pepper(a, 0.02,0.1);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);



% --- Executes on button press in Rayleigh.
function Rayleigh_Callback(hObject, eventdata, handles)
% hObject    handle to Rayleigh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=RayleighNoise(a,30,0.01);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in Exponential.
function Exponential_Callback(hObject, eventdata, handles)
% hObject    handle to Exponential (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=ExponentialNoise(a,0.09);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);



% --- Executes on button press in Gaussian.
function Gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=GaussianNoise(a,5, 12);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in gamma_cor.
function Gamma_Callback(hObject, eventdata, handles)
% hObject    handle to gamma_cor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=GammaNoise(a, 100,100);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);



function gamma_cor_Callback(hObject, eventdata, handles)
a=getappdata(0,'a');
a_gray=Gamma(a,2);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);




% --- Executes on button press in Uniform.
function Uniform_Callback(hObject, eventdata, handles)
% hObject    handle to Uniform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=UniformNoise(a, -20,20);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in gray_binary.
function gray_binary_Callback(hObject, eventdata, handles)
% hObject    handle to gray_binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=gray2binary(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.axes2,'reset');

% --- Executes on button press in right_diagonal.
function right_diagonal_Callback(hObject, eventdata, handles)
% hObject    handle to right_diagonal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Sharpen_Image_right_diagonal(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in left_diagonal.
function left_diagonal_Callback(hObject, eventdata, handles)
% hObject    handle to left_diagonal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=Sharpen_Image_left_diagonal(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in point.
function point_Callback(hObject, eventdata, handles)
% hObject    handle to point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=point_sharping(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in Point.
function Point_Callback(hObject, eventdata, handles)
% hObject    handle to Point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray=point_Edge_Detection(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in FFT.
function FFT_Callback(hObject, eventdata, handles)
a=getappdata(0,'a');
a_gray=fourier_transform(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in IFFT.
function IFFT_Callback(hObject, eventdata, handles)
a=getappdata(0,'a');
a_gray=inverse_fourier_transform(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);


% --- Executes on button press in Convolution.
function Convolution_Callback(hObject, eventdata, handles)
% hObject    handle to Convolution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
Filter = [1 2 3; 1 1 1; 1 1 1];
a_gray=convolution(a, Filter);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);

% --- Executes on button press in Weight.
function Weight_Callback(hObject, eventdata, handles)
% hObject    handle to Weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_gray= weight(a);
axes(handles.axes2);
imshow(a_gray)
setappdata(0,'filename',a_gray);