/*(()=>{
var i=1;//记录当前第几张图片
function task(){
	i++;//换下一张
	if(i==5) i=1;//超范围，就改回1
	//查找所有div
	var divs=document.querySelectorAll(".box>div");
	var j=0,count=11,interval=150,dura=2400;
	var timer=setInterval(()=>{
		var div=divs[j];//获得当前div
		div.style.backgroundImage=`url(imgs/${i}.png)`;
		div.className="shake";
		j++;//跳到下一个div的位置
		if(j==count) clearInterval(timer);//自动结束
	},150)//每隔50毫秒，才设置下一个div的震动
	setTimeout(()=>{//等最后一个div震完，才移除class
		for(var div of divs) div.className="";
		document.querySelector(".box>img").src="imgs/"+i+".png"
	},interval*count+dura)
}
setInterval(task,3000+1000);
})()*/
//广告轮播
$(()=>{
	var LIWIDTH=1100, 
			timer=null, 
			moved=0, 
			duration=500,   
			wait=3000;
	$.ajax({
		type:"get",
		url:"data/index/getLunbo.php"
	}).then(data=>{
		console.log(data);
		var html="";
		for(var p of data){
			html+=`<li><a href="${p.lhref}" title="${p.ltitle}">
					<img src="${p.limg}">
			</a></li>`
		}
		var p0=data[0];
		html+=`<li><a href="${p0.lhref}" title="${p0.ltitle}">
				<img src="${p0.limg}">
		</a></li>`
		var $ul=$("[data-load=bannerImgs]")
		$ul.html(html).css("width",LIWIDTH*(data.length+1));

		/*setInterval(()=>{
			moved++;
			$ul.animate({
				left:-LIWIDTH*moved
			},duration,function(){
				if(moved==4){
					moved=0;
					$ul.css("left",0);
				}	
			})
		},wait+duration)*/
		//--导航小圆点---
	var $ulInds=$("[data-load=bannerInds]");
	$ulInds.html("<li></li>".repeat(data.length))
	.children().first().addClass("hover");

	function move(){
		
		$ul.animate({
			left:-LIWIDTH*moved
		},duration,function(){
			if(moved==4){
				moved=0;
				$ul.css("left",0);
			}
			$ulInds.children(`:eq(${moved})`).addClass("hover")
				.siblings().removeClass("hover");
		})
	}
	timer=setInterval(()=>{
			moved++;move();
	},wait+duration)
	$ulInds.on("mouseover","li",e=>{
			moved=$(e.target).index();
			//防动画/定时器叠加
			$ul.stop(true);
			move();
	})
	$("#banner").hover(
		()=>clearInterval(timer),
		()=>timer=setInterval(()=>{
			moved++;move();
		},wait+duration)
	);
	$("[data-move=right]").click(()=>{
		if(!$ul.is(":animated")){
			moved++;
			move();
		}
	})
	$("[data-move=left]").click(()=>{
		if(!$ul.is(":animated")){
			if(moved==0){
				$ul.css("left",-LIWIDTH*data.length);
				moved=4;
			}
			moved--;
			move();
		}
	})
	});
});

//楼层一
$(()=>{
	ajax({
		type:"get",
		url:"data/index/index_decent_top.php",
		dataType:"json"
	}).then(resData=>{
		console.log(resData);
		var html="";
		for(var i=0;i<resData.length;i++){
			var p=resData[i];
			html+=`<a href="${p.thref}"><div><img src="${p.timg}"></div>
				<p class="price">
				<i>￥</i>${p.tprice}</p>
				<p class="name">${p.tname}</p>
				</a>`;
		}
		document.getElementById("f1").innerHTML=html;
	})
});
//楼层二
$(()=>{
	ajax({
		type:"get",
		url:"data/index/index_decent_middle.php",
		dataType:"json"
	}).then(resData=>{
		console.log(resData);
		var html="";
		for(var i=0;i<resData.length;i++){
			var p=resData[i];
			html+=`<a href="${p.mhref}"><div><img src="${p.mimg}"></div>
				<p class="price">
				<i>￥</i>${p.mprice}</p>
				<p class="name">${p.mname}</p>
				</a>`;
		}
		document.getElementById("f2").innerHTML=html;
	})
});
//楼层三
$(()=>{
	ajax({
		type:"get",
		url:"data/index/index_decent_bottom.php",
		dataType:"json"
	}).then(resData=>{
		console.log(resData);
		var html="";
		for(var i=0;i<resData.length;i++){
			var p=resData[i];
			html+=`	<div>
					<a href="${p.bhref}"><img src="${p.bimg}"></a>
					<div class="word">
						<p class="price">
						<i>￥</i>${p.bprice}</p>
						<p class="name">${p.bname}</p>
					</div>
				</div>`;
		}
		document.querySelector(".content-f").innerHTML=html;
	})
});