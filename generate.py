import io

## Add all parameter values here (same as run.py)

delays = ['20', '30', '40', '50']
bws = ['0.1','0.5','1','10','50','100']
losses = ['0','5','10','15']

## Generation loops

for delay in delays:
    for bw in bws:
        for loss in losses:
            filename = loss + '_' + bw + '_' + delay
            config = io.open(filename, 'w')
            for line in io.open('template', 'r'):
                line = line.replace('$delay', delay)
                line = line.replace('$loss', loss)
                line = line.replace('$bandwidth', bw)
                config.write(line)
            config.close()
