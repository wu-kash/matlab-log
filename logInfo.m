function logInfo(varargin)

    if isempty(varargin)
        fprintf('\n')
        return
    end

    if length(varargin) == 1
        if strcmp(strtrim(varargin{1}), '')
            fprintf('\n')
            return
        end
    end

    logMsg('INFO', varargin{:})
end