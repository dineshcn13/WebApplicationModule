<%-- 
    Document   : adminselect
    Created on : 6 Feb, 2018, 3:41:05 PM
    Author     : DINESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="10">
        <title>ADMIN SELECT</title>
        <style>
           
               body{
            background-color: gold;
        }
                    /* -------------------- Page Styles (not required) */
            div { margin: 20px; }

            /* -------------------- Select Box Styles: bavotasan.com Method (with special adaptations by ericrasch.com) */
            /* -------------------- Source: http://bavotasan.com/2011/style-select-box-using-only-css/ */
            .styled-select {
               background: url(http://i62.tinypic.com/15xvbd5.png) no-repeat 96% 0;
               height: 29px;
               overflow: hidden;
               width: 138px;
            }

            .styled-select select {
               background: yellow;
               border: 2px;
               font-size: 14px;
               height: 29px;
               padding: 5px; /* If you add too much padding here, the options won't show in IE */
               width: 155px;
            }

            .styled-select.slate {
               background: url(http://i62.tinypic.com/2e3ybe1.jpg) no-repeat right center;
               height: 34px;
               width: 138px;
            }

            .styled-select.slate select {
               border: 1px solid #ccc;
               font-size: 16px;
               height: 34px;
               width: 138px;
            }

            /* -------------------- Rounded Corners */
            .rounded {
               -webkit-border-radius: 20px;
               -moz-border-radius: 20px;
               border-radius: 20px;
            }

            

            /* -------------------- Colors: Background */
            .slate   { background-color: #ddd; }
            .green   { background-color: #779126; }
            .blue    { background-color: #3b8ec2; }
            .yellow  { background-color: #FFFF33; }
            .black   { background-color: #000; }

            /* -------------------- Colors: Text */
            .slate select   { color: #000; }
            .green select   { color: #fff; }
            .blue select    { color: #fff; }
            .yellow select  { color: #000; }
            .black select   { color: #fff; }


            input, label {
                    float:left;
                    margin:5px;
            }
            
            #ip4 {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 120px;
            height: 16px; 
            }
            #ref {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 120px;
            height: 16px; 
            }
            #fname {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 120px;
            height: 16px; 
            }
            #time {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 80px;
            height: 16px; 
            }
            #ip5 {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 50px;
            height: 16px; 
            }
            .submit {
            width: 5em; 
            height: 2em;
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 0px 0px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
        .button2:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        }
        </style>
        <script type="text/javascript">
            function Set()
            {
            var date = new Date();

            var day = date.getDate();
            var month = date.getMonth() + 1;
            var year = date.getFullYear();

            if (month < 10) month = "0" + month;
            if (day < 10) day = "0" + day;

            var today = year + "-" + month + "-" + day;


            document.getElementById('fname').value = today;
            }
            
            function Time() {
            var timeNow = new Date();
            var hours   = timeNow.getHours();
            var minutes = timeNow.getMinutes();
            var seconds = timeNow.getSeconds();
            var timeString = "" + ((hours > 12) ? hours - 12 : hours);
            timeString  += ((minutes < 10) ? ":0" : ":") + minutes;
            timeString  += ((seconds < 10) ? ":0" : ":") + seconds;
            timeString  += (hours >= 12) ? " PM" : " AM";
            document.getElementById('time').value = timeString;
            timerID = setTimeout("Time", 1000);
          }
          
          function Start(){
              Set();
              Time();
             
          }
          </script>
          
    </head>
    <body onload="Start()">
        
        
        
        <form action="check1.jsp">
        <table>
        <tr>
        <td>
            <img src="bill.png" width="320" height="70">
        </td>
        
        <td>
            <label for="cusname" ><b>CUSTOMER NAME</b></label><BR>
            <input type="text" id="ip4" name="cusname" placeholder="ENTER CUS.NAME" value="" autofocus/></td>
        <td><label for="mobile" ><b>CUSTOMER MOB</b></label><BR>
                <input type="text" id="ip4" name="cusmobile" placeholder="ENTER CUS.MOBILE"></td>
        <td><label for="billno" ><b>INVOICE.NO</b></label><BR>
                <input type="number" id="ip5" name="billno" value="200" ></td>
        <td><label for="itempur" ><b>ITEM PUR</b></label><BR>
                <input type="text" id="ip5" name="itempur" value="<%=session.getAttribute("get6")%>" readonly  ></td>
        <td><label for="date" ><b>DATE</b></label><BR>
                <input type="date" id="fname" name="date" onload="Set()" readonly></td>
        <td><label for="time" ><b>TIME</b></label><BR>
                <input type="text" id="time" name="time"readonly></td>
        <td><label for="gstin" ><b>GSTIN/UIN</b></label><BR>
                <input type="text" id="ip4" name="GST" value="33BSHTY6745J1Z5" readonly></td>
        <td><label for="hsn" ><b>HSN CODE</b></label><BR>
                <input type="text" id="ip5" name="hsncode" value="<%=session.getAttribute("set5")%> " readonly></td>
        <td><label for="dis" ><b>DIS %</b></label><BR>
                <input type="text" id="ip5" name="discount" value="5" readonly></td>
        <td><input type="submit"name="click" value="+CUS" class="submit button2" ></td>
       
  </tr>  
</table>
     </form>
    </body>
</html>
