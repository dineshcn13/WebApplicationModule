<%-- 
    Document   : test
    Created on : 23 Feb, 2018, 10:05:12 PM
    Author     : DINESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>A simple, clean, and responsive HTML invoice template</title>
    
    <style>
@import url(https://fonts.googleapis.com/css?family=Roboto:100,300,400,900,700,500,300,100);
*{
  margin: 0;
  box-sizing: border-box;

}
body{
  background: #E0E0E0;
  font-family: 'Roboto', sans-serif;
  background-image: url('');
  background-repeat: repeat-y;
  background-size: 100%;
}
::selection {background: #f31544; color: #FFF;}
::moz-selection {background: #f31544; color: #FFF;}
h1{
  font-size: .5em;
  color: #222;
}
h2{font-size: .7em;}
h3{
  font-size: 1em;
  font-weight: 300;
  line-height: 2em;
}
p{
  font-size: .7em;
  color: #666;
  line-height: 1.2em;
}

#invoiceholder{
  width:100%;
  height:100%;
  padding-top: 50px;
}
#headerimage{
  position:relative;
  height: 350px; 
}
#invoice{
  position: relative;
  top: -290px;
  margin: 0 auto;
  width: 400px;
  background: #FFF;
}

[id*='invoice-']{ /* Targets all id with 'col-' */
  border-bottom: 1px solid #EEE;
  padding: 30px;
}

#invoice-top{min-height: 120px;}

#invoice-bot{ min-height: 250px;}

.logo{
        float: top;
	height: 70px;
	width: 330px;
	background: url(island.png) no-repeat;
	background-size: 330px 70px;
}
.info{
  display: block;
  
  margin-left: 20px;
}

#project{margin-left: 52%;}
table{
  width: 100%;
  border-collapse: collapse;
}
td{
  padding: 0px 2 2px 0px;
  border: 1px solid #EEE
}
.tabletitle{
  padding: 2px;
  background: #EEE;
}
.service{border: 1px solid #EEE;}
.item{width: 50%;}
.itemtext{font-size: .7em;}

#legalcopy{
  margin-top: 30px;
}
form{
  float:right;
  margin-top: 30px;
  text-align: right;
}


.effect2
{
  position: relative;
}
.effect2:before, .effect2:after
{
  z-index: -1;
  position: absolute;
  content: "";
  bottom: 15px;
  left: 10px;
  width: 50%;
  top: 80%;
  max-width:300px;
  background: #777;
  -webkit-box-shadow: 0 15px 10px #777;
  -moz-box-shadow: 0 15px 10px #777;
  box-shadow: 0 15px 10px #777;
  -webkit-transform: rotate(-3deg);
  -moz-transform: rotate(-3deg);
  -o-transform: rotate(-3deg);
  -ms-transform: rotate(-3deg);
  transform: rotate(-3deg);
}
.effect2:after
{
  -webkit-transform: rotate(3deg);
  -moz-transform: rotate(3deg);
  -o-transform: rotate(3deg);
  -ms-transform: rotate(3deg);
  transform: rotate(3deg);
  right: 10px;
  left: auto;
}



.legal{
  width:100%;
}
    </style>
</head>

<body>
    <div id="invoiceholder">

  <div id="headerimage"></div>
  <div id="invoice" class="effect2">
    
    <div id="invoice-top">
      <div class="logo"></div>
      <div class="info">
        
      <div class="title">
        <h1>Invoice #1069</h1>
        <p>Issued: May 27, 2015</br>
           Payment Due: June 27, 2015
        </p>
      </div><!--End Title-->
    </div><!--End InvoiceTop-->
    
    <div id="invoice-bot">
      
      <div id="table">
        <table>
          <tr class="tabletitle">
            <td class="item"><h2>ITEM NAME</h2></td>
            <td class="Hours"><h2>MRP</h2></td>
            <td class="Rate"><h2>S.PRICE</h2></td>
            <td class="subtotal"><h2>DIS</h2></td>
            <td class="subtotal"><h2>GST</h2></td>
            <td class="subtotal"><h2>TOT</h2></td>
          </tr>
          
          <tr class="service">
            <td class="tableitem"><p class="itemtext">Communication</p></td>
            <td class="tableitem"><p class="itemtext">5</p></td>
            <td class="tableitem"><p class="itemtext">$75</p></td>
            <td class="tableitem"><p class="itemtext">$375.00</p></td>
          </tr>
          
          <tr class="service">
            <td class="tableitem"><p class="itemtext">Asset Gathering</p></td>
            <td class="tableitem"><p class="itemtext">3</p></td>
            <td class="tableitem"><p class="itemtext">$75</p></td>
            <td class="tableitem"><p class="itemtext">$225.00</p></td>
          </tr>
          
          <tr class="service">
            <td class="tableitem"><p class="itemtext">Design Development</p></td>
            <td class="tableitem"><p class="itemtext">5</p></td>
            <td class="tableitem"><p class="itemtext">$75</p></td>
            <td class="tableitem"><p class="itemtext">$375.00</p></td>
          </tr>
          
          <tr class="service">
            <td class="tableitem"><p class="itemtext">Animation</p></td>
            <td class="tableitem"><p class="itemtext">20</p></td>
            <td class="tableitem"><p class="itemtext">$75</p></td>
            <td class="tableitem"><p class="itemtext">$1,500.00</p></td>
          </tr>
          
          <tr class="service">
            <td class="tableitem"><p class="itemtext">Animation Revisions</p></td>
            <td class="tableitem"><p class="itemtext">10</p></td>
            <td class="tableitem"><p class="itemtext">$75</p></td>
            <td class="tableitem"><p class="itemtext">$750.00</p></td>
          </tr>
          
          <tr class="service">
            <td class="tableitem"><p class="itemtext"></p></td>
            <td class="tableitem"><p class="itemtext">HST</p></td>
            <td class="tableitem"><p class="itemtext">13%</p></td>
            <td class="tableitem"><p class="itemtext">$419.25</p></td>
          </tr>
          
            
          <tr class="tabletitle">
            <td></td>
            <td></td>
            <td class="Rate"><h2>Total</h2></td>
            <td class="payment"><h2>$3,644.25</h2></td>
          </tr>
          
        </table>
      </div><!--End Table-->
      
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
      <input type="hidden" name="cmd" value="_s-xclick">
      <input type="hidden" name="hosted_button_id" value="QRZ7QTM9XRPJ6">
      <input type="image" src="http://michaeltruong.ca/images/paypal.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
    </form>

      
      <div id="legalcopy">
        <p class="legal"><strong>Thank you for your business!</strong>  Payment is expected within 31 days; please process this invoice within that time. There will be a 5% interest charge per month on late invoices. 
        </p>
      </div>
      
    </div><!--End InvoiceBot-->
  </div><!--End Invoice-->
</div><!-- End Invoice Holder-->
</body>
</html>
