#!/bin/bash

cores=$(grep -c proc /proc/cpuinfo);
irqs=$(grep eth /proc/interrupts | cut -d: -f1)

core=$(($cores-1));
for irq in $irqs; do
  mask=`echo "obase=16; \$[2 ** $core]" | bc`;
  mkdir -p "/proc/irq/$irq/"
  echo "Binding IRQ [$irq] to core [$core] with mask [$mask]"
  echo $mask > /proc/irq/$irq/smp_affinity
  core=$(($core-1));
  if [ $core -eq -1 ];
  then
     core=$(($cores-1));
  fi  
done;
