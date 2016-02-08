/**
 * 
 */
$(document).ready(function(){
	
});
function getValue(){
	$("#err").html("");
	var  aa=$("#selectValue option:selected").text();
	if(aa=="Select Value"){
		$("#err").append("Please First Select Some value");
		return false;
	}
	
	/*$.post("getOptionValue?mode=getOptionValue", {
		"name" : aa
	}, function(data, status) {

		
		var aa1=data;
		alert(aa1[10]);
	});*/
	$("#img").css({"display":"block"});
	 $.ajax({
	        type: "GET",
	        url: "getOptionValue?mode=getOptionValue",
	        dataType: "json",
	        data:{"name":aa},
	        success: function(xml) {
	            // the return of a ajax trough a xml file, is a xml parsed object, using $, this will be a jquery xml object;
	            // find all 'gametracker' entryes;
	            // (each) iteration trough founded entryes;
	        	var aa=xml+"";
	        	aa=aa.trim();
	        	$("#err").html("");
	        	$("#err").append("Result Generated See Below");
	        	aa=aa.split(",");
	        	for(var i=0;i<aa.length;i++){
	        		
	        		$("#r"+(i+1)).html(aa[i]);
	        	}
	        	$("#six").html(aa[aa.length-1]);
	        	$("#img").css({"display":"none"});
	        	
	        }
	    });
}