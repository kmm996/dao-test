FROM debian:7.6
MAINTAINER jaz@live.in

RUN apt-get -q update 

RUN echo 'for (( i=1; i>0; i++ ))
	do' >> gv.sh
	
ENV $curl=curl 'https://www.google.com/voice/b/3/service/post' -H 'pragma: no-cache' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate' -H 'accept-language: zh-CN,zh;q=0.8' -H 'user-agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36 QIHU 360SE' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'cache-control: no-cache' -H 'authority: www.google.com' -H 'cookie: gv=iwQjqdn79Bkb76U43V8DX4Tqoy5Ggp-m6y0M5rfthtGqZoZRN98FZvXU2Iak-vAB2Eypzg.; GV_NR=1; CONSENT=YES+US.zh-CN+20170113-16-0; SID=iwQjqRBehN5tmNUrEJVvPzXbjpVAFSVX-xmxH_V4h-7qhSJpfoW7_ySV7z4JXYAQwu3miQ.; HSID=A4RPSI9YGryhyZMhS; SSID=AOd08o4z-MWiSSZ9A; APISID=4dTHma_ZwKZ3SSrf/AhfWTIQ3nAMmj2gSG; SAPISID=XNMt3PxXri4mFHCy/Aw0oOLPTC7d2BFx0H; NID=100=ciI1k6mJSBHNiB1E49phS0OvyVYD3ooG0bNEHoXDVsskiejoNVuJ-kMfKOaNPxDuC0mRZBheAFvkp7IggnVx4ofRnGlYKfLad4EuPCSs-eEmG4venf_mvoMoIqPlc_xRSUjGGpVpYJwbbdgVKfPZIjXI3fYWXcBx8ZB49V4joQ_dzLeuhI2CQUOATKD6duPRAFu2GEHri8UYKtMjwgEdhWSQg0E-W7EE2cEtiDrVLesQ4dNtsWb8iAj6UeElSX02UXL4-TCVaM6n0LA_X6o1ljmW0GWBXiExFJ7rmxeTKX9aGt5ovwlME9CYnAY_Dy9PF12ljddcLzm7CpNcYqNbxIP4diigxz_kzk1b9cywbIxfOMjO9N43Le8y7qCIwNOBJr0ApNnaVimj2Yd01PNauAj15tKH5BA6SwauxbRJ1NGr9kTjcTPPSKE; S=grandcentral=uE86KJs4xdhsVqrTFeD1Tmix36pZgPyL; _ga=GA1.1.603838433.1487673349; _gat=1' -H 'referer: https://www.google.com/voice/b/3' --data 'sid=3&mid=6&req=%5Bnull%2C%22%2B16096664499%22%2Ctrue%2C%22%22%5D&_rnr_se=YyBDzkBX8K3q8H8akp5UlDvIzNk%3D' --compressed


RUN echo '	$curl' >> gv.sh
       
RUN echo '	echo `date`
        sleep 0.5s
	done' >> gv.sh

	
CMD ["bash gv.sh"]	  

