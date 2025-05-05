<%@ page import="java.sql.*, java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>DB Connection Test</title>
    <style>
        body { font-family: sans-serif; padding: 2em; background: #f0f0f0; }
        .box { background: white; padding: 2em; border-radius: 8px; max-width: 600px; margin: auto; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        .success { color: green; font-weight: bold; }
        .error { color: red; font-weight: bold; }
    </style>
</head>
<body>
    <div class="box">
        <h2>Testing DB Connection...</h2>
        <%
            Connection conn = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/empconnect", "root", "");

                if (conn != null) {
                    out.println("<p class='success'>✅ Database connection successful!</p>");
                } else {
                    out.println("<p class='error'>❌ Database connection failed!</p>");
                }
            } catch (Exception e) {
                out.println("<p class='error'>❌ Error: " + e.getMessage() + "</p>");
                StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                e.printStackTrace(pw);
                out.println("<pre>" + sw.toString() + "</pre>");
            } finally {
                if (conn != null) {
                    try { conn.close(); } catch (SQLException ex) { /* ignore */ }
                }
            }
        %>
    </div>
</body>
</html>
