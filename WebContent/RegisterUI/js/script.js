function register(){
	if(form1.username.value==''){
		alert('用户名不能为空！');
		return false;
	}
	if(form1.password.value==''){
		alert('密码不能为空！');
		return false;
	}else{
		var reg=new RegExp(/[^A-z&^0-9]/);
		if(reg.test(form1.password.value)){
			alert('请输入数字或字母');
		}
	}
	if(form1.password.value!=form1.password2.value){
		alert('请检查密码是否一致');
		return false;
	}
	
	form1.action="../Register";
	form1.submit();
}

window.onload = function(){
	var i3 = document.getElementsByClassName('input_3');
	for(var i=0;i<i3.length;i++){
		i3[i].onmouseover = function(){
			this.style.backgroundColor = "#23271F";
			this.style.color = "#fff";
		}
		i3[i].onmouseout = function(){
			this.style.backgroundColor = "#fff";
			this.style.color = "#23271F";
		}
	}
	var pass = document.getElementById("password");
	pass.onfocus = function(){
		pass.type = "password";	
	}
}