<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'zhuce.jsp' starting page</title>
  </head>
  
  <body>
  <center>
   <div class="hm-body hm-body-bgc">
        <div class="hm-inner">
            <div class="reg-box">
                <h2>用户注册<span>（红色型号代表必填）</span></h2>
                <div class="reg-info">
                    <form action="/MyBlog/regist.do" method="post">
                        <ul>
                            <li>
                                <div class="reg-l"><span class="red">*</span> 用户名：</div>
                                <div>
                                    <input type="text" id="userName" name="userName" class="txt" value="" style="width:300px;"/>
                                </div>
                                <span class="tips">用户名必须是由英文、数字、下划线组成</span>
                            </li>
                             <li>
                                <div class="reg-l"><span class="red">*</span> 密&nbsp;&nbsp;&nbsp;码：</div>
                                <div>
                                    <input type="password" id="userPass" name="userPass" class="txt" value="" style="position:absoulte;width:300px;right:-5px;"/>
                                </div>
                                <span class="tips">密码长度必须6~10位的英文或数字</span>
                            </li>
                            <li class="no-tips">
                                <div class="reg-l">&nbsp;&nbsp;邮&nbsp;&nbsp;&nbsp;箱：</div> 
                                <div class="reg-c"><input type="text" id="email" name="email" class="txt" value="" style="position:absoulte;width:300px;right:-5px;"/></div>
                            </li>
                            <li>
                                <div></div>
                                <div>
                                    <input type="submit" class="submit-btn" value="注册" /><br/>
                                    <span style="color:red;">${msg}</span>
                                </div>
                            </li>
                      
                        </ul>
                    </form>    
                </div>
            </div>
        </div>
    </div>
    </center>
  </body>
</html>
