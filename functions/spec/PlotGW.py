import h5py
import matplotlib.pyplot as plt
import sys

fname = sys.argv[1]

f = h5py.File(fname, 'r')

def getDecomposition(l, m):
	dset = f[f'Y_l{l}_m{m}.dat']
	return dset[:,0], dset[:,1], dset[:,2]

fig, ((ax1, ax3), (ax2, ax4)) = plt.subplots(2,2)

t, re, im = getDecomposition(2, 0)
ax1.plot(t, re)
ax1.set(title='(l=2, m=0, + polarization)')
ax2.plot(t, im)
ax2.set(title='(l=2, m=0, x polarization)')

t, re, im = getDecomposition(2, 2)
ax3.plot(t, re)
ax3.set(title='(l=2, m=2, + polarization)')
ax4.plot(t, im)
ax4.set(title='(l=2, m=2, x polarization)')

title = 'Gravitational Wave '
if 'rMPsi4_' == fname[0:7]:
  title += r'$\psi_4$'
elif 'rhOverM_' == fname[0:8]:
  title += r'$h$'
fig.suptitle(title)

fig.set_size_inches(15, 7, forward=True)

plt.savefig(fname[0:-3] + '.png')
plt.show()
