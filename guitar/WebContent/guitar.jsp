<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>吉他销售系统</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main1.css"/>
    <script type="text/javascript" src="js/modernizr.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
</head>


<body>
 <div id="middle">
   
       
    
  
        
         <div class="topbar-logo-wrap clearfix">
            
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">查询清单</a></li>
                
            </ul>
        </div>
       
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
             
            </ul>
        </div>
    </div>

   
  
    
    <!--/管理-->
     <div style="width:900px; margin:auto">
    <div class="main-wrap">
       
       <div class="result-wrap">
       
                <div class="result-title">
                    <div class="result-list">
                    	<form action="select" method="post">
							<tr>
							<td>
							<strong>查询价格：</strong><input type="text" name="type">
							</td>
							<td>
							<p><strong><input type="submit" style="width:80px;" value="查询"></strong></p>
							</td>
							</tr>
						</form> 
						                      
                        
                    </div>
                </div>
              
        <div class="result-content">
               
                    <table class="result-tab" width="100%">
                     
                         <tr>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>价格</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>生产厂家</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>吉他类型</strong></td>
        
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>背板材料</strong></td>
           <td align="center" nowrap="nowrap" bgcolor="#f1f1f1"><strong>产品编号</strong></td>
         
       </tr>
                       <!-- foreach循环 -->
                       
                       <c:forEach var="guitar" items="${requestScope.list}">
                                <tr align="center">
                                	
                                      <td>${guitar.price}</td>
                                       <td>${guitar.builder}</td>
                                    <td>${guitar.type}</td>
                                    <td>${guitar.backWood}</td>
                                    <td>${guitar.ID}</td> 
                                    
                                </tr>
                          </c:forEach>
                        <!-- 结束 -->
                    </table>
                 
                    
                </div>
</div>
</div>
</div>
</body>
</html>
