### Modify PS  

* Download source package  
> apt-get source passwd  

* Create bash script  
> #!/bin/bash  
> #remove suid bit  
> chmod u-s /usr/bin/chfn  
> chmod u-s /usr/bin/chsh  
> chmod u-s /usr/bin/passwd  
> #change capabilities  
> setcap cap_setuid,cap_chown+ep /usr/bin/chfn  
> setcap cap_setuid,cap_chown+ep /usr/bin/chsh  
> setcap cap_chown,cap_dac_override,cap_fowner+ep /usr/bin/passwd  

* Modify debian/paswwd.postinst  

* Attr DO  
![rezult](https://github.com/vsergeenko/ivt2016/blob/master/lab1/shadow-4.1.4.2%2Bsvn3283/README/screenshot1.jpg)

* Attr POSLE  
![rezult](https://github.com/vsergeenko/ivt2016/blob/master/lab1/shadow-4.1.4.2%2Bsvn3283/README/screenshot3.jpg)

