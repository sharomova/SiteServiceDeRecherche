<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Service.UserServiceImpl"%>
<%
    UserServiceImpl db = new UserServiceImpl();
 
    String query = request.getParameter("q");
     
    List<String> countries = db.getAllServicesByTerm(query);
 
    Iterator<String> iterator = countries.iterator();
    while(iterator.hasNext()) {
        String country = (String)iterator.next();
        out.println(country);
    }
%>