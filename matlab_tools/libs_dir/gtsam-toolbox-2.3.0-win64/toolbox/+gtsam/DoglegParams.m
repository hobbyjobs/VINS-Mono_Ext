%class DoglegParams, see Doxygen page for details
%at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
%
%-------Constructors-------
%DoglegParams()
%
%-------Methods-------
%getAbsoluteErrorTol() : returns double
%getDeltaInitial() : returns double
%getErrorTol() : returns double
%getMaxIterations() : returns size_t
%getRelativeErrorTol() : returns double
%getVerbosity() : returns string
%getVerbosityDL() : returns string
%print(string s) : returns void
%setAbsoluteErrorTol(double value) : returns void
%setDeltaInitial(double deltaInitial) : returns void
%setErrorTol(double value) : returns void
%setMaxIterations(size_t value) : returns void
%setRelativeErrorTol(double value) : returns void
%setVerbosity(string s) : returns void
%setVerbosityDL(string verbosityDL) : returns void
%
classdef DoglegParams < gtsam.SuccessiveLinearizationParams
  properties
    ptr_gtsamDoglegParams = 0
  end
  methods
    function obj = DoglegParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1047, varargin{2});
        end
        base_ptr = gtsam_wrapper(1046, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1048);
      else
        error('Arguments do not match any overload of gtsam.DoglegParams constructor');
      end
      obj = obj@gtsam.SuccessiveLinearizationParams(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamDoglegParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1049, obj.ptr_gtsamDoglegParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getAbsoluteErrorTol(this, varargin)
      % GETABSOLUTEERRORTOL usage: getAbsoluteErrorTol() : returns double
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % getAbsoluteErrorTol()
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1050, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.getAbsoluteErrorTol');
      end
    end

    function varargout = getDeltaInitial(this, varargin)
      % GETDELTAINITIAL usage: getDeltaInitial() : returns double
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % getDeltaInitial()
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1051, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.getDeltaInitial');
      end
    end

    function varargout = getErrorTol(this, varargin)
      % GETERRORTOL usage: getErrorTol() : returns double
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % getErrorTol()
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1052, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.getErrorTol');
      end
    end

    function varargout = getMaxIterations(this, varargin)
      % GETMAXITERATIONS usage: getMaxIterations() : returns size_t
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % getMaxIterations()
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1053, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.getMaxIterations');
      end
    end

    function varargout = getRelativeErrorTol(this, varargin)
      % GETRELATIVEERRORTOL usage: getRelativeErrorTol() : returns double
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % getRelativeErrorTol()
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1054, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.getRelativeErrorTol');
      end
    end

    function varargout = getVerbosity(this, varargin)
      % GETVERBOSITY usage: getVerbosity() : returns string
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % getVerbosity()
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1055, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.getVerbosity');
      end
    end

    function varargout = getVerbosityDL(this, varargin)
      % GETVERBOSITYDL usage: getVerbosityDL() : returns string
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % getVerbosityDL()
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1056, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.getVerbosityDL');
      end
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % print(string s)
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1057, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.print');
      end
    end

    function varargout = setAbsoluteErrorTol(this, varargin)
      % SETABSOLUTEERRORTOL usage: setAbsoluteErrorTol(double value) : returns void
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % setAbsoluteErrorTol(double value)
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1058, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.setAbsoluteErrorTol');
      end
    end

    function varargout = setDeltaInitial(this, varargin)
      % SETDELTAINITIAL usage: setDeltaInitial(double deltaInitial) : returns void
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % setDeltaInitial(double deltaInitial)
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1059, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.setDeltaInitial');
      end
    end

    function varargout = setErrorTol(this, varargin)
      % SETERRORTOL usage: setErrorTol(double value) : returns void
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % setErrorTol(double value)
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1060, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.setErrorTol');
      end
    end

    function varargout = setMaxIterations(this, varargin)
      % SETMAXITERATIONS usage: setMaxIterations(size_t value) : returns void
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % setMaxIterations(size_t value)
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(1061, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.setMaxIterations');
      end
    end

    function varargout = setRelativeErrorTol(this, varargin)
      % SETRELATIVEERRORTOL usage: setRelativeErrorTol(double value) : returns void
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % setRelativeErrorTol(double value)
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1062, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.setRelativeErrorTol');
      end
    end

    function varargout = setVerbosity(this, varargin)
      % SETVERBOSITY usage: setVerbosity(string s) : returns void
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % setVerbosity(string s)
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1063, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.setVerbosity');
      end
    end

    function varargout = setVerbosityDL(this, varargin)
      % SETVERBOSITYDL usage: setVerbosityDL(string verbosityDL) : returns void
      % Doxygen can be found at http://research.cc.gatech.edu/borg/sites/edu.borg/html/index.html
      % 
      % Method Overloads
      % setVerbosityDL(string verbosityDL)
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1064, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.DoglegParams.setVerbosityDL');
      end
    end

  end

  methods(Static = true)
  end
end
