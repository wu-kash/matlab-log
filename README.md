# Matlab Logging Util

Easy to use Matlab ```fprintf(...)``` for general purpose logging to command window.

## Usage

```matlab
% Print a statement 
logInfo('Hello World')
```

```cmd
[INFO] Hello World
```

```matlab
% Print statement with variables as arguments
world = 'World';
logInfo('Hello %s', world)
```

```cmd
[INFO] Hello World
```

```matlab
% Print and indent logging
world = 'World';
logInfo('Hello')
logWarn(1, '%s', world)
```

```cmd
[INFO] Hello 
[WARN]     World
```

