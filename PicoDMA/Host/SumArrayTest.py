import os
import time


#Generate Test Data
TX_SIZE = 4096
tx_data = bytearray(os.urandom(TX_SIZE))

#Open dma
fd_h2c = os.open("/dev/xdma/card0/h2c0", os.O_WRONLY)
fd_c2h = os.open("/dev/xdma/card0/c2h0", os.O_RDONLY)

#Send data to FPGA, time data transfer
start = time.time()
os.pwrite(fd_h2c, tx_data, 0);
end = time.time()
wrDuration = end - start


#Receive data from FPGA, time data transfer
start = time.time()
rx_data = os.pread(fd_c2h, TX_SIZE, 0)
end = time.time()
rdDuration = end - start

print("Finished test")
os.close(fd_h2c)
os.close(fd_c2h)

