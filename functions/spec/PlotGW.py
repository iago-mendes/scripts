import h5py
import matplotlib.pyplot as plt
import sys

l = sys.argv[2][-1]
m = sys.argv[3][-1]

title = ''
if 'rMPsi4_' == sys.argv[1][0:7]:
  title = r'$\psi_4$' + f' (l={l}, m={m})'
elif 'rhOverM_' == sys.argv[1][0:8]:
  title = r'$h$' + f' (l={l}, m={m})'

f = h5py.File(sys.argv[1], 'r')
dset = f['Y_' + sys.argv[2] + '_' + sys.argv[3] + '.dat']

t = dset[:,0]
re = dset[:,1]
im = dset[:,2]

plt.plot(t, re)
plt.xlabel('time')
plt.ylabel('+ polarization')
plt.title(title)
plt.show()

plt.plot(t, im)
plt.xlabel('time')
plt.ylabel('x polarization')
plt.title(title)
plt.show()
