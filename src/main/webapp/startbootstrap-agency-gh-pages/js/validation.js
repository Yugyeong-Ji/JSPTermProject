function CheckAddShop(){
	var code = document.getElementById("code");
	var shopName = document.getElementById("shopName");
	var price = document.getElementById("price");
	
	if(!check(/^A[0-9]{4,11}$/, code,
		"[가게 코드]\nA와 숫자를 조합하여 5~12까지 입력하세요.\n첫글자는 반드시 A로 시작하세요."))
		return false;
	if(shopName.value.length < 4 || shopName.value.length > 12){
		alert("[상품명]\n최소 4자에서 12자까지 입력하세요.");
		shopName.select();
		shopName.focus();
		return false;
	}
	if(price.value.length == 0 || isNaN(price.value)){
		alert("[가격]\n숫자만 입력하세요.");
		price.select();
		price.focus();
		return false;
	}
	if(price.value < 0){
		alert("[가격]\n음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	function check(regExp, e, msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	document.newShop.submit();
}