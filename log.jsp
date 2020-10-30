<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<style>
	*{
		margin:0;
	    padding:0;
	    box-sizing:border-box; 
	}
	html{
		background-color: #eee;		
	}
	#loginSection{		
		width: 90%;
	    max-width: 1280px;
	    margin: 0 auto;
	    height:100%;
	    font-size:1.2rem;
	}
	fieldset {
		border:none;
	}
	.screen_out{
		position: absolute;
		width: 0;
		height: 0;
		overflow: hidden;
		line-height: 0;
	}
	.box_login{
		border:1px solid #ced4da;
		border-radius: 3px;
		background-color: white;
	}	
	.iptForm{
		padding:18px 19px 19px;
		
	}	
	.iptForm + .iptForm{
		border-top:1px solid #ced4da;
	}
	.iptForm input{	
		border: none;
		outline: 0;
		width:100%;		
	}
	.append{
		display:flex;
		justify-content: space-between;
		font-size: 0.7rem;
		padding:15px 0 0;
	}
	.btn_login{
		margin:20px 0 0;
		width: 100%;
		height: 48px;
		background-color: #4CAF50;
		border: none;
		color: #fff;
		font-size: 1rem;
		border-radius: 3px;
		outline:none;
	}
	.btn_login:hover{
		cursor: pointer;
	}
	#in_login{
		position: absolute;
		left:40%;
		top:40%;
		width:320px;
	}
	a{
		text-decoration: none;	
		color:black;
		font-size:0.8rem;
	}
	
</style>
<script>
	function checkValue(){
		inputForm = eval("document.loginInfo");
		if(!inputForm.mail.value){
			alert("아이디를 입력하세요");
			inputForm.mail.focus();
			return false;
		}
		if(!inputForm.password.value){
			alert("비밀번호를 입력하세요");
			inputForm.password.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<div id="loginSection">
		<div id="in_login">
		<form action="" name="loginInfo" method="post" onsubmit="return checkValue()">
			<fieldset>
				<legend class="screen_out">로그인</legend>
				<div class="box_login">
					<div class="iptForm">
						<label for="loginID" class="screen_out">아이디</label>
						<input type="text" id="loginID" name="mail" class="form-control" placeholder="ID">
					</div>
					<div class="iptForm">
						<label for="loginPW" class="screen_out">비밀번호</label>
						<input type="password" id="loginPW" name="password" class="form-control" placeholder="Password">						
					</div>					
				</div>
				<input type="submit" value="로그인" class="btn_login">		
										
			<div class="append">
				<span><a href="" class="link_join">회원가입</a></span>
				<span><a href="" class="link_find">아이디 / 비밀번호 찾기</a></span>
			</div>
			</fieldset>
		</form>
		</div>
	</div>
</body>
</html>