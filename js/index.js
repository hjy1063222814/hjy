var oBanner=document.getElementById("banner-container");
var oImg=oBanner.getElementsByClassName("banner-image")[0];
var oBtn=oBanner.getElementsByClassName("btn")[0];
var oP=oBtn.getElementsByTagName("p");
var oDiv=oImg.getElementsByTagName("div");
var oTab=oBanner.getElementsByClassName("tab")[0].getElementsByTagName("li");
var timer=null;
var index=3;
oTab[index].style.backgroundColor="blue";
function move(){
    oDiv[index].style.opacity=0;
    oDiv[index].style.zIndex=3;
	oTab[index].style.backgroundColor="";
	oDiv[index].addEventListener("transitionend",function(){
		this.style.opacity=1;
		this.style.zIndex=1;
	});
	index++;
	index%=4;
	oTab[index].style.backgroundColor="blue";
	oDiv[index].style.zIndex=2;
	//oDiv[index].style.opacity=1;
}
oP[0].onclick = function(){
	oDiv[index].style.opacity=0;
	oDiv[index].style.zIndex=3;
	oTab[index].style.backgroundColor="";
	oDiv[index].addEventListener("transitionend",function(){
		this.style.opacity=1;
		this.style.zIndex=1;
	});
	index--;
	if(index<0)
	{
		index=3;
	}
	oTab[index].style.backgroundColor="blue";
	oDiv[index].style.zIndex=2;
	//oDiv[index].style.opacity=1;
}
oP[1].onclick = function(){
	move();
}
for(var i=0;i<4;i++){
	oTab[i].index=i;   //存储当前的序列号
	oTab[i].onmouseenter = function(){
		oDiv[index].style.opacity=0;
		oDiv[index].style.zIndex=3;
		oDiv[index].addEventListener("transitionend",function(){
		    this.style.opacity=1;
		    this.style.zIndex=1;
		});
		//oTab[i];
		oTab[index].style.backgroundColor="";
		index=this.index;//取出当前的序列号
		oTab[index].style.backgroundColor="blue";
		oDiv[index].style.zIndex=2;
		//oDiv[index].style.opacity=1;
	}
}
timer=setInterval(function(){
	move();
},6000)