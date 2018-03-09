//为页面添加滚动事件
$(()=>{
	$(window).scroll(()=>{
		var scrollTop=$(window).scrollTop();
		if(scrollTop>=60+385){
			$("#header-top").clone(true)
				.addClass("fixed_nav")
				.appendTo(document.body);
		}else{
			$(".fixed_nav").remove();
		}
	})
})