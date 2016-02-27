#qemu-img create -f qcow2 -b coreos_production_qemu_image.img master1.qcow2
#qemu-img create -f qcow2 -b coreos_production_qemu_image.img node1.qcow2

virt-install     --connect qemu:///system     --import     --name master1     --ram 1024     --vcpus 1     --os-type=linux     --os-variant=virtio26     --disk path=/var/lib/libvirt/images/coreos/master1.qcow2,format=qcow2,bus=virtio     --filesystem /var/lib/libvirt/images/coreos/master1/,config-2,type=mount,mode=squash     --network bridge=virbr0,mac=52:54:00:00:00:3     --vnc     --noautoconsole

virt-install     --connect qemu:///system     --import     --name node1     --ram 1024     --vcpus 1     --os-type=linux     --os-variant=virtio26     --disk path=/var/lib/libvirt/images/coreos/node1.qcow2,format=qcow2,bus=virtio     --filesystem /var/lib/libvirt/images/coreos/node1/,config-2,type=mount,mode=squash     --network bridge=virbr0,mac=52:54:00:00:00:0     --vnc     --noautoconsole

