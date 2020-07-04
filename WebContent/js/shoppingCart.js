/**
 * 
 */
function onload_delete(){
	buyForm.action="DeleteCartShop";
	buyForm.submit();
}
function onload_buy(){
	var obj2=document.getElementById("userstatus");
	if(obj2.style.display=="none"){
		alert("请登录");
		return false;
	}
	
	buyForm.action="CartShopBuy";
	buyForm.submit();
}