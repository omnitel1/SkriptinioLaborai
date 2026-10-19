function rez = specfunkc(varargin)
    
    if nargin == 1
        x = varargin{1};
        rez = x^2;

    elseif nargin == 2
        x1 = varargin{1};
        x2 = varargin{2};
        
        val1 = x1^2;
        val2 = x2^3;

        rez = min(val1, val2);
    end
end