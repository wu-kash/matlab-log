function printHeader(msg)

    logInfo('')
    logInfo('%s', repelem('#', length(msg) + 4))
    logInfo('# %s #', msg)
    logInfo('%s', repelem('#', length(msg) + 4))
    logInfo('')

end