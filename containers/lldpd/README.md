# 

This definition runs the LLDP protocol on a priviledge container to receive/send advertisements to other LLDP-enabled devices on the network. It refresh every 15 seconds.

- Installation after cloning this repo `oc apply -k .` or point your Argo CD app to this repo. 

    ```bash
    oc get pod -o wide
    NAME          READY   STATUS    RESTARTS   AGE   IP              NODE                NOMINATED NODE   READINESS GATES
    lldpd-7d56n   1/1     Running   0          37m   192.168.52.29   w4.tme.shift.zone   <none>           <none>
    lldpd-hff59   1/1     Running   0          37m   192.168.52.27   w2.tme.shift.zone   <none>           <none>
    lldpd-kcp85   1/1     Running   0          37m   192.168.52.23   m1.tme.shift.zone   <none>           <none>
    lldpd-pb7x6   1/1     Running   0          37m   192.168.52.25   w0.tme.shift.zone   <none>           <none>
    lldpd-smzbv   1/1     Running   0          37m   192.168.52.24   m2.tme.shift.zone   <none>           <none>
    lldpd-tbr2x   1/1     Running   0          37m   192.168.52.28   w3.tme.shift.zone   <none>           <none>
    lldpd-xmxtp   1/1     Running   0          37m   192.168.52.26   w1.tme.shift.zone   <none>           <none>
    lldpd-xnjn5   1/1     Running   0          37m   192.168.52.22   m0.tme.shift.zone   <none>           <none>
    ```

- To see the results look at the logs of the pod `oc logs lldpd-xnjn5`

    ```
    # Starting LLDP daemon
    # Update at Sat Dec  3 16:04:38 UTC 2022
    lldp.ens1f0.via=LLDP
    lldp.ens1f0.rid=3
    lldp.ens1f0.age=0 day, 00:00:13
    lldp.ens1f0.chassis.mac=xx:xx:xx:xx:xx:xx
    lldp.ens1f0.chassis.name=tor-sw-413-1.infra.xxxx.lab
    lldp.ens1f0.chassis.descr=Juniper Networks, Inc. qfx5200-32c-32q Ethernet Switch, kernel JUNOS 20.2R2.11, Build date: 2020-10-28 08:53:11 UTC Copyright (c) 1996-2020 Juniper Networks, Inc.
    lldp.ens1f0.chassis.Bridge.enabled=on
    lldp.ens1f0.chassis.Router.enabled=on
    lldp.ens1f0.port.ifname=et-0/0/1:3
    lldp.ens1f0.port.descr=et-0/0/1:3
    lldp.ens1f0.port.ttl=120
    lldp.ens1f0.port.mfs=1514
    lldp.ens1f0.vlan.vlan-id=52
    lldp.ens1f0.vlan.pvid=yes
    lldp.ens1f0.vlan=vlan-52
    lldp.ens1f0.lldp-med.device-type=Network Connectivity Device
    lldp.ens1f0.lldp-med.Capabilities.available=yes
    lldp.ens1f0.lldp-med.Policy.available=yes
    lldp.ens1f0.lldp-med.Location.available=yes
    lldp.ens1f0.lldp-med.MDI/PSE.available=yes
    lldp.ens1f0.unknown-tlvs.unknown-tlv.oui=00,90,69
    lldp.ens1f0.unknown-tlvs.unknown-tlv.subtype=1
    lldp.ens1f0.unknown-tlvs.unknown-tlv.len=12
    lldp.ens1f0.unknown-tlvs.unknown-tlv=57,48,33,36,32,30,32,35,30,34,33,30
    ```

