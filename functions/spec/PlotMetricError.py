import numpy as np
import matplotlib.pyplot as plt
import sys

fname = sys.argv[1]

data = np.genfromtxt(fname, delimiter=',')
iterations = np.array(data[:,0])
error = np.array(data[:,1])
log_error = np.log(error) / np.log(10)

fig, (ax1, ax2) = plt.subplots(1,2)

ax1.plot(iterations, error)
ax1.set(xlabel='Iteration', ylabel='Metric Error')

ax2.plot(iterations, log_error)
ax2.set(xlabel='Iteration', ylabel=r'$\log$(Metric Error)')

fig.suptitle('Evolution of Metric Error')

fig.set_size_inches(15, 7, forward=True)

plt.savefig(fname.split('.')[0] + '.png')
plt.show()
