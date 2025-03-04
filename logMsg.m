function logMsg(type, varargin)

    % - Type is the prefix added before the message
    %   [type] Some message
    % - If the second parameter provided is a number, it specifies the
    %   indentation level
    % - The rest of the parameters are standard 'fprintf' formatting 
    %   parameters

    % Example 
    % logMsg('MSG', 'Test %i %s', 15, 'example')
    % >> [MSG] Test 15 example
    % logMsg('MSG', 2, 'Test %i %s', 15, 'example')
    % >>        [MSG] Test 15 example

    numIndent = 0;
    if isnumeric(varargin{1})
        numIndent = varargin{1};
        format = varargin{2};
        otherArgs = varargin(3:end);
    else
        format = varargin{1};
        otherArgs = varargin(2:end);
    end

    indentStr = repmat('\t', 1, numIndent);

    if isstring(format)
        prefix = sprintf('[%s] ', type); 
        newFormat = [prefix, '\t', indentStr, format, '\n'];
        if strcmp(type, 'WARN')
            fprintf(2, strcat(newFormat{:}), otherArgs{:});
        else
            fprintf(strcat(newFormat{:}), otherArgs{:});
        end 
    else
        prefix = sprintf('[%s] ', type); 
        newFormat = [prefix, '\t', indentStr, format newline];
        if strcmp(type, 'WARN')
            fprintf(2, newFormat, otherArgs{:});
        else
            fprintf(newFormat, otherArgs{:});
        end 
    end
end