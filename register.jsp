<jsp:useBean id="save" class="com.abap.register.Registration" />
<jsp:setProperty name="save" property="*"/>
<%
if(save.registration()){
	out.print("Register Successfull");
}else{
	out.print("Error:"+save.getError());
}
 %>