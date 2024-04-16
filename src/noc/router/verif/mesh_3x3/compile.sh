rm -rf work 
vlib work 

for file in ../../src/clib/*.v; do vlog $file; done
for file in *.v; do vlog $file; done