function [sys,x0,str,ts] = SpecAnal(t,x,u,flag,N,T_s,plot_period)
% Revision for Simulink 2.1, 10/17/97

switch flag,

  %%%%%%%%%%%%%%%%%%
  % Initialization %
  %%%%%%%%%%%%%%%%%%
  case 0,
    [sys,x0,str,ts]=mdlInitializeSizes(N);

  %%%%%%%%%%%%%%%
  % Derivatives %
  %%%%%%%%%%%%%%%
  case 1,
    sys=mdlDerivatives(t,x,u);

  %%%%%%%%%%
  % Update %
  %%%%%%%%%%
  case 2,
  
  %Test for proper time
  if t >= x(N+1)  
    sys=mdlUpdate(t,x,u,N,T_s,plot_period);
  end
  
  %%%%%%%%%%%
  % Outputs %
  %%%%%%%%%%%
  case 3,
    sys=mdlOutputs(t,x,u);

  %%%%%%%%%%%%%%%%%%%%%%%
  % GetTimeOfNextVarHit %
  %%%%%%%%%%%%%%%%%%%%%%%
  case 4,
    sys=mdlGetTimeOfNextVarHit(t,x,u);

  %%%%%%%%%%%%%
  % Terminate %
  %%%%%%%%%%%%%
  case 9,
    sys=mdlTerminate(t,x,u);

  %%%%%%%%%%%%%%%%%%%%
  % Unexpected flags %
  %%%%%%%%%%%%%%%%%%%%
  otherwise
    error(['Unhandled flag = ',num2str(flag)]);

end

% end sfuntmpl

%
%=============================================================================
% mdlInitializeSizes
% Return the sizes, initial conditions, and sample times for the S-function.
%=============================================================================
%
function [sys,x0,str,ts]=mdlInitializeSizes(N)

%
% call simsizes for a sizes structure, fill it in and convert it to a
% sizes array.
%
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = N+2;
sizes.NumOutputs     = 0;
sizes.NumInputs      = 1;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 0;   % at least one sample time is needed

sys = simsizes(sizes);

%
% Initialize figure handle
%
handle = 100;

%
% initial state vector
%
x0 = [zeros(N+1,1);handle];

%
% str is always an empty matrix
%
str = [];

%
% initialize the array of sample times
%
ts  = [];

% end mdlInitializeSizes

%
%=============================================================================
% mdlDerivatives
% Return the derivatives for the continuous states.
%=============================================================================
%
function sys=mdlDerivatives(t,x,u)

sys = [];

% end mdlDerivatives

%
%=============================================================================
% mdlUpdate
% Handle discrete state updates, sample time hits, and major time step
% requirements.
%=============================================================================
%
function sys=mdlUpdate(t,x,u,N,T_s,plot_period)

    %Update state
    % last N-1 samples; current input; next time to call; figure handle
    sys = [x(2:N); u; x(N+1)+T_s; x(N+2)];

    %Update plot
    if rem(t,plot_period) < T_s
      sig = sys(1:N);
      sys(N+2) = figure( sys(N+2) );
      clf
      t = T_s*( (1:N)-1);
      % this will yield correct phase in the time plot if the plot period is
      %   set to a multiple of the period of the input waveform 
      %   (t(N)=plot_period) - SJK
       t = t + plot_period - (N-1)*T_s;   
      subplot(2,1,1)
      plot(t,sig);
      xlabel('Time in seconds');
      ylabel('Amplitude');
      title('Signal');
     
      X = abs(fft( hamming(N).*sig ));
      f = (1/T_s)*((1:N)-1)./N;
      subplot(2,1,2)
      %%%% a stupid fix to keep multiple axis warnings from popping up - SJK
       X(1)=X(1)+0.0000000001;  
      plot(f(1:(N/2)),X(1:(N/2)));
      xlabel('Frequency in Hertz');
      ylabel('Spectral Density');
      title('Spectral Density Plot');
    end

% end mdlUpdate

%
%=============================================================================
% mdlOutputs
% Return the block outputs.
%=============================================================================
%
function sys=mdlOutputs(t,x,u)

sys = [];

% end mdlOutputs

%
%=============================================================================
% mdlGetTimeOfNextVarHit
% Return the time of the next hit for this block.  Note that the result is
% absolute time.  Note that this function is only used when you specify a
% variable discrete-time sample time [-2 0] in the sample time array in
% mdlInitializeSizes.
%=============================================================================
%
function sys=mdlGetTimeOfNextVarHit(t,x,u)

  sys = x(N+1);

% end mdlGetTimeOfNextVarHit

%
%=============================================================================
% mdlTerminate
% Perform any end of simulation tasks.
%=============================================================================
%
function sys=mdlTerminate(t,x,u)

sys = [];

% end mdlTerminate
