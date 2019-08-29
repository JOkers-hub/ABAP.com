<%-- 
    Document   : addpolicy
    Created on : 29 Aug, 2019, 1:45:26 AM
    Author     : yoyoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Policy</title>
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp"/>
        </header>
        
        <h1>Add Policy</h1>
        
        <form action="savepol.jsp" method="post">
            <table>
                
                <tr>
                    <td>category </td>
                    <td><select name="catagory">
                            <option>---Select category---</option>
                            <option>lifeinsurance</option>
                            <option>houseinsurance</option>
                            <option>twowheeler</option>
                            <option>fourwheeler</option>
                            <option>comercial</option>
                            
                        </select></td>
                </tr>
                <tr>
                    <td>Policy No:</td>
                    <td><input type="number" name="policyNO" required="required"></td>
                </tr>
                
                <tr>
                    <td>Policy Name:</td>
                    <td><input type="text" name="policyName" required="required"></td>
                </tr>
                
                <tr>
                    <td>Period</td>
                    <td><input type="number" name="period" required="required"></td>
                </tr>
                
                <tr>
                    <td>Premium:</td>
                    <td><input type="number" name="premium" required="required"></td>
                </tr>
                
                <tr>
                    <td>Amount:</td>
                    <td><input type="number" name="amount" required="required"></td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="Add"></td>
                </tr>
                
            </table>
        </form>
    </body>
    <footer>
        <jsp:include page="footer.jsp"/>
    </footer>
</html>
