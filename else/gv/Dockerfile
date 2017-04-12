FROM debian:7.6
MAINTAINER jaz@live.in

RUN apt-get -q update 

RUN echo 'for (( i=1; i>0; i++ ))
	do' >> gv.sh
	
ENV curl='curl 'https://www.google.com/voice/b/0/service/post' -H 'pragma: no-cache' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate' -H 'accept-language: zh-CN,zh;q=0.8' -H 'user-agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36 QIHU 360SE' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'cache-control: no-cache' -H 'authority: www.google.com' -H 'cookie: gv=jQRHC2M7j3qi_u4rSCFfFtZY2uDiln3rnnDsSAZ888pHVN7v-NpqF0nZGaD9UCxr9DCNiA.; GV_NR=1; HSID=AXibrJjM6nDFOOR9g; SSID=AWv_2UVZj_dfD7_-d; APISID=vGk8lezhzeuIrkxD/AtDDqI8VVojuwze3I; SAPISID=bWZXuyy87Xo_nkvp/AMqdo2HmwcRAXHtkQ; NID=100=mm_dDor525vUaEG-O7YHhtfW2RpOGOF_5C2DS2FQ_02-bARMTQe7ltDGBUpHPzoHl2XkEAame3HHY8FArxq3sCYJQiD6jfsOmijkC-sFoIkRo-D3539bET7NCFhXbCmXyL1kL6g2YOm_04erPCJSSAzEEV6uDbYyQn1IiyXpoeKjj4viBYD0J7tu2WKPfs2ENZAC5w; CONSENT=YES+CN.zh-CN+20160731-18-0; SID=jQRHC4jaQFeUc-9hzTyd95DvA-p6kAWKFNNPPSBAF9vcpFLRitGmKGR91qhZl2LYYCKc2Q.; _ga=GA1.1.2024601915.1491818466; S=grandcentral=zviWWDNOdjxsJWQOSht_PGfO7Do9cFAW:billing-ui-v3=mcI9XncYf4waxyv6jcRc0Y45BxkpCkpp:billing-ui-v3-efe=mcI9XncYf4waxyv6jcRc0Y45BxkpCkpp; _gat=1' -H 'referer: https://www.google.com/voice/b/0' --data 'sid=3&mid=6&req=%5Bnull%2C%22%2B17653355533%22%2Ctrue%2C%22%22%5D&_rnr_se=vQ0J5A9GFXaDWAOb9AO35CGV3vg%3D' --compressed'

RUN echo '	$curl' >> gv.sh
       
RUN echo '	echo `date`
        sleep 0.5s
	done' >> gv.sh

	
CMD ["bash gv.sh"]	  
