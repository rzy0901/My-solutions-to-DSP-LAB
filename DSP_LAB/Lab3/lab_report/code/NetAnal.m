function [sys,x0,str,ts] = NetAnal(t,x,u,flag,N,T_s)
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
    if t >= x(2*N+1)*T_s
    	sys=mdlUpdate(t,x,u,N,T_s);
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
    sys=mdlGetTimeOfNextVarHit(t,x,u,N,T_s);

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
% Note that in this example, the values are hard coded.  This is not a
% recommended practice as the characteristics of the block are typically
% defined by the S-function parameters.
%
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 2*N+2;
sizes.NumOutputs     = 0;
sizes.NumInputs      = 2;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 0;   % at least one sample time is needed

sys = simsizes(sizes);

% initialize figure handle
  handle = 99;

% initial state vector
  x0 = [zeros(2*N+1,1);handle];

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
function sys=mdlUpdate(t,x,u,N,T_s)

    %Update state
    sys = [x(2:N); u(1); x(N+2:2*N); u(2); x(2*N+1)+1; x(2*N+2)];

    %Update plot
    if abs(t - (N-2)*T_s) <= T_s/2
      outsig = sys(1:N);
      insig = sys(N+1:2*N);
      sys(2*N+2) = figure( sys(2*N+2) );
      clf
      
      % sampling=T_s

      SO = fft(outsig);
      SI = fft(insig);
      H = SO./SI;
      f = (1/T_s)*((1:N)-1)./N;
      subplot(3,1,1)
      plot( f(1:(N/2)), abs( H(1:(N/2))) );
      xlabel('Frequency in Hertz');
      title('Magnitude of Frequency Response');

      subplot(3,1,2)
      plot( f(1:(N/2)), angle( H(1:(N/2))) );
      xlabel('Frequency in Hertz');
      title('Phase of Frequency Response');

      subplot(3,1,3)
      h = ifft(H);
      % Scaling for the sampling period
      h=h/T_s;
      time = T_s*((1:N)-1);
      plot( time(1:(N/2)), real(h(1:(N/2))) );
      xlabel('Time in Seconds');
      title('Impulse Response');

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
function sys=mdlGetTimeOfNextVarHit(t,x,u,N,T_s)

sys = x(2*N+1)*T_s;

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
