$(document).ready(function(){
	
	let urlParams = new URLSearchParams(window.location.search);
	let startId = urlParams.get('startId');
	let endId = urlParams.get('endId');
	let rtime = urlParams.get('rtime');
	let start_add = urlParams.get('start_add');
	let end_add = urlParams.get('end_add');
	
	
	
	
	
	let url ="https://apis.data.go.kr/1613000/TrainInfoService/getStrtpntAlocFndTrainInfo?serviceKey=fia82dW58XZekM3fyfsYQjw24d3TDN%2FOCdtbCQWjlYjltamNE5UGs23S0OiE%2BdghuBeQ%2Bt%2FLjncovmHroyfk1Q%3D%3D&pageNo=1&numOfRows=10&_type=json&depPlaceId="+ startId +"&arrPlaceId="+ endId +"&depPlandTime="+ rtime +"&trainGradeCode=00";
	
		
	
	$.getJSON(url, function(citys){
		
		let code = "<p class='bustime_head' id='d2'>";
			code += "<span style='width: 53px'>출발역</span><span>도착역</span><span class='start_time' style='width: 70px'>출발시간</span><span class='end_time' style='width: 70px'>도착시간</span>"
			code += "<span class='bus_com' style='text-align: center'>열차명</span><span class='grade'>열차번호</span><span class='fare'>운임</span><span class='status' style='width: 70px'></span></p>";
			code += "<div class='bus_time'>";
		for(kobi of citys.response.body.items.item){
			
			let depplandtime = String(kobi.depplandtime);
			let arrplandtime = String(kobi.arrplandtime);
			let depplacename = kobi.depplacename;
			
			 let start_date = depplandtime.slice(8,10)+"시";
			 	 start_date += depplandtime.slice(10,12)+"분";
			 		
		 	 let end_date = arrplandtime.slice(8,10)+"시";
				 end_date += arrplandtime.slice(10,12)+"분";	
	
		 	
			code +="<p>"
			code +="<span style='width:80px' id='input1'>"+kobi.depplacename+"</span>";
			code +="<span style='width:80px' id='input2'>"+kobi.arrplacename+"</span>";
			code +="<span id='input3'>"+start_date+"</span>";
			code +="<span id='input4'>"+end_date+"</span>";
			code +="<span style='text-align: center' id='input5'>"+kobi.traingradename+"</span>";
			code +="<span id='input6'>"+kobi.trainno+"</span>";
			code +="<span id='input7'>"+kobi.adultcharge+"</span>";
			code +="<span class='accent btn_arrow' id='input_add'>선택</span>";
			code +="</p>"
			
			
		}

		
		code +="</div>";
			
		$("p#d2").remove();
		
		$(".bustime_wrap").append(code);
		
		
		
		
		//다음페이지 
		$(".btn_arrow").click(function() {
			
		    let depplacename = $(this).siblings("#input1").text();
		    let arrplacename = $(this).siblings("#input2").text();
		    let start_date = $(this).siblings("#input3").text();
		    let end_date = $(this).siblings("#input4").text();
		    let traingradename = $(this).siblings("#input5").text();
		    let trainno = $(this).siblings("#input6").text();
		    let adultcharge = $(this).siblings("#input7").text();
		    let rtimes = rtime;
		    
		    $("#depplacename").val(depplacename);
		    $("#arrplacename").val(arrplacename);
		    $("#start_date").val(start_date);
		    $("#end_date").val(end_date);
		    $("#traingradename").val(traingradename);
		    $("#trainno").val(trainno);
		    $("#adultcharge").val(adultcharge);
		    $("#rtimes").val(rtimes);
			
			
			 testForm.submit();
			
		});
		
	});
	
	
	
	
	
	//새로고침
	$(".ico_refresh").click(function(){
		 location.reload();
	});
	
	//수정버튼
	$(".btn_modify").click(function(){
		history.back();
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});