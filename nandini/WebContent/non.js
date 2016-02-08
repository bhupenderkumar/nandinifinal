$(document).ready(function() {
	$("input").focus(function() {
		$(this).css({
			"backgroundColor" : "#fff7e5"
		});
	});
	$("input").blur(function() {
		$(this).css({
			"backgroundColor" : "white"
		});
	});
	
	$("")
});
function findValue() {
	var origi = 0;
	var fi = 0;
	var sec = 0;
	var th = 0;
	var fo = 0;
	$("#err").html("");
	var flag = false;
	var str = "";
	for (var i = 1; i < 62; i++) {
		var temp = 0;
		var a = $("#mor" + i).val();
		var b = $("#af" + i).val();
		var c = $("#ev" + i).val();
		var d = $("#ost" + i).val();

		if (isNaN(a) || isNaN(b) || isNaN(c) || isNaN(d)) {
			$("#err")
					.append(
							"S.N0 "
									+ i
									+ "  contains  value which is not a number<br>");
			flag = true;
			str += "S.N0 "
					+ i
					+ "  contains  value which is not a number                                     . ";
		}
		if (a != "" && !isNaN(a)) {
			fi += parseInt(a);
			temp = parseInt(a);
		}
		if (b != "" && !isNaN(b)) {
			sec += parseInt(b);
			temp += parseInt(b);
		}
		if (c != "" && !isNaN(c)) {
			th += parseInt(c);
			temp += parseInt(c);
		}
		if (d != "" && !isNaN(d)) {
			fo += parseInt(d);
			temp += parseInt(d);
		}

		var original = $("#r" + i).html() * temp;
		$("#o" + i).html(original.toFixed(2));
		origi += original;
	}
	$("#fi").html(fi);
	$("#sec").html(sec);
	$("#th").html(th);
	$("#fo").html(fo);
	if (flag == true) {
		alert(str);
		return false;
	}
	var final = parseInt(fi) + parseInt(sec) + parseInt(th) + parseInt(fo);
	$("#fiv").html(final);
	$("#six").html(origi.toFixed(2));

}

function SaveValue() {
	$("#err").html();
	var aa = $("#savediv").css("display");
	if (aa == "none") {
		$("#savediv").css({
			"display" : "block"
		});
		return false
	}
	findValue();
	var namesave = $("[name=nsave]").val();
	$("#err").html("");
	if (namesave == "" || namesave == " ") {
		$("#err").append("To save Name is mandatory");
		return false;
	}

	var origi = 0;
	var fi = 0;
	var sec = 0;
	var th = 0;
	var fo = 0;
	
	var flag = false;
	var str = "";
	var aa = new Array(61);
	for (var i = 1; i < 62; i++) {
		var temp = 0;
		var a = $("#mor" + i).val();
		var b = $("#af" + i).val();
		var c = $("#ev" + i).val();
		var d = $("#ost" + i).val();
		if (isNaN(a) || isNaN(b) || isNaN(c) || isNaN(d)) {
			$("#err")
					.append(
							"S.N0 "
									+ i
									+ "  contains  value which is not a number<br>");
			flag = true;
			str += "S.N0 "
					+ i
					+ "  contains  value which is not a number                                     . ";
		}
		if (a != "" && !isNaN(a)) {
			fi += parseInt(a);
			temp = parseInt(a);
		}
		if (b != "" && !isNaN(b)) {
			sec += parseInt(b);
			temp += parseInt(b);
		}
		if (c != "" && !isNaN(c)) {
			th += parseInt(c);
			temp += parseInt(c);
		}
		if (d != "" && !isNaN(d)) {
			fo += parseInt(d);
			temp += parseInt(d);
		}

		var original = $("#r" + i).html() * temp;
		origi += original;
		aa[i - 1] = original.toFixed(2);

	}
	$("#img").css({"display":"block"});
	
	$.ajax({
        type: "GET",
        url: "ClassCalculation?mode=save",
        data:{
    		"name" : aa,
    		"final" : origi.toFixed(2)
    		,"namesave":namesave
    	},
        success: function(data) {

    		data=data.trim();
    		var data1=""+data;
    		if(data1==="Success" ){
    			$("#img").css({"display":"none"});
    			$("#nsave").html("");
    			window.location.href="calcu.html";
    		}else{
    			$("#img").css({"display":"none"});
    			window.location.href="Error.html";
    			
    		}
    	},error:function(data){
    		$("#img").css({"display":"none"});
    		$("#nsave").html("");
    		$("#err").html("Some Error");
    	}
	});
    	
    	
	/*
	 * $.post("ClassCalculation?mode=save", { "name" : aa, "final" :
	 * origi.toFixed(2) ,"namesave":namesave }, function(data, status) {
	 * 
	 * data=""+data; data=data.trim(); var data1=""+data; if(data1==="Success" ){
	 * alert("Saved Succesfully"); $("#nsave").html("");
	 * window.location.href="calcu.html"; }else{ alert("Error");
	 * window.location.href="Error.html";
	 *  } });
	 */
	/*
	 * $.ajax({type:'POST',url:'http://localhost:82/save.php',data:aa,
	 * success:function(data,status){ alert(data); }
	 * 
	 * });
	 */

}