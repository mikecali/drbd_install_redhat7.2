resource mq-resource {
protocol C;     
startup { wfc-timeout 0; degr-wfc-timeout     120; }
disk { on-io-error detach; } 
syncer { rate 10M; }     
on rhel-build1-drbd1 {
                device /dev/drbd0;
                disk /dev/sdb;
                address 172.17.203.13:7788;
                meta-disk internal;
        }
        on rhel-build2-drbd2 {
                device /dev/drbd0;
                disk /dev/sdb;
                address 172.17.203.14:7788;
                meta-disk internal;
        }
} 
