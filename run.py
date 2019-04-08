import os

## Add all parameter values here (same as generate.py)

delays = ['20', '30', '40', '50']
bws = ['0.1','0.5','1','10','50','100']
losses = ['0','5','10','15']

## Topology launch loops

for delay in delays:
    for bw in bws:
        for loss in losses:
            filename = loss + '_' + bw + '_' + delay
            os.system("sudo ./%s" % filename)
            ## Replace filename here with appropriate test script
            os.system("sudo ./tcptest.sh")
