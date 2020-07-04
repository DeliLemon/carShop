/**
 * 
 */
function buy(obj){
	var obj2=document.getElementById("userstatus");
	if(obj2.style.display=="none"){
		alert("请先登录");
		return false;
	}
	buyForm.action="buy.jsp";
	buyForm.submit();
}
function add(obj){
	var obj2=document.getElementById("userstatus");
	if(obj2.style.display=="none"){
		alert("请登录");
		return false;
	}
	obj.value="已加入购物车";
	buyForm.action="AddshoppingCart";
	buyForm.submit();
}