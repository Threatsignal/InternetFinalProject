<% 
    String style = "";
    if(request.getParameter("title") ==null ){ 
        style = "homeNav";
    }else{
        style = "hNav";
    }
%>
<ul class="<%out.write(style);%>">
    <li><a href="<%=request.getContextPath()%>/players">Players</a></li>
    <li><a href="clubs">Clubs</a></li>
    <li><a href="leagues">Leagues</a></li>
    <li><a href="nations">Nations</a></li>
    
    <% if(request.getSession().getAttribute("username") !=null){ %>
        <li><a href="<%=request.getContextPath()%>/Controller?action=Logout">Logout</a></li>
    <%}else{%>
    <li><a href="login.jsp">Login</a></li>
    <li class="special"><a href="register">Register</a></li>
    <%}%>
    <% if(request.getSession().getAttribute("admin") != null){ %>
    <li class="special"><a href="adminpage">Admin Page</a></li>
    <%}%>
    
    
</ul>

 

        

