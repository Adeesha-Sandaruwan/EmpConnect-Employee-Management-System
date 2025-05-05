<%@ page import="java.sql.*" %>
<%@ page import="com.EmpConnect.util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee Form</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">

<!-- Employee Form -->
<div class="max-w-md mx-auto bg-white p-6 rounded shadow mb-6">
  <h2 class="text-xl font-bold mb-4 text-center text-blue-700">Add New Employee</h2>
  <form action="<%=request.getContextPath()%>/AddEmployeeServlet" method="post" class="space-y-4">
    <input type="text" name="fullname" placeholder="Full Name" required class="w-full border px-4 py-2 rounded" />
    <input type="text" name="username" placeholder="Username" required class="w-full border px-4 py-2 rounded" />
    <input type="password" name="password" placeholder="Password" required class="w-full border px-4 py-2 rounded" />
    <input type="email" name="email" placeholder="Email" required class="w-full border px-4 py-2 rounded" />
    <input type="text" name="phone" placeholder="Phone" required class="w-full border px-4 py-2 rounded" />
    <input type="text" name="department" placeholder="Department" class="w-full border px-4 py-2 rounded" />
    <select name="role" required class="w-full border px-4 py-2 rounded">
      <option value="">Select Role</option>
      <option value="employee">Employee</option>
      <option value="admin">Admin</option>
    </select>
    
    <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Register</button>
    
<a href="dashboard.jsp" class="mt-4 inline-block text-blue-600 underline">
  Go Back to Dashboard
</a>
    
  </form>
</div>

<!-- Employee Table -->
<div class="max-w-5xl mx-auto bg-white p-4 rounded shadow">
  <h3 class="text-lg font-semibold mb-3 text-center text-gray-800">Employee List</h3>
  <table class="w-full border text-sm">
    <tr class="bg-blue-100">
      <th class="border px-2 py-1">ID</th>
      <th class="border px-2 py-1">Full Name</th>
       <th class="border px-2 py-1">Password</th>
      <th class="border px-2 py-1">Username</th>
      <th class="border px-2 py-1">Email</th>
      <th class="border px-2 py-1">Phone</th>
      <th class="border px-2 py-1">Department</th>
      <th class="border px-2 py-1">Role</th>
      <th colspan="2" class="border px-2 py-1">Action</th>
    </tr>

    <%
      try {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM employees ORDER BY id DESC");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
    %>
      <tr class="even:bg-gray-50 odd:bg-white">
        <td class="border px-2 py-1"><%= rs.getInt("id") %></td>
        <td class="border px-2 py-1"><%= rs.getString("fullname") %></td>
        <td class="border px-2 py-1"><%= rs.getString("password") %></td>
        <td class="border px-2 py-1"><%= rs.getString("username") %></td>
        <td class="border px-2 py-1"><%= rs.getString("email") %></td>
        <td class="border px-2 py-1"><%= rs.getString("phone") %></td>
        <td class="border px-2 py-1"><%= rs.getString("department") %></td>
        <td class="border px-2 py-1"><%= rs.getString("role") %></td>
        <td class="border px-2 py-1">
			<a href="<%=request.getContextPath()%>/UpdateEmployeeServlet?id=<%= rs.getInt("id") %>" 
  			 class="bg-green-600 text-white py-2 px-4 rounded hover:bg-green-700">
  			 <b>Update</b>
			</a>
        </td>
        <td class="border px-2 py-1">
			<a href="<%=request.getContextPath()%>/DeleteEmployeeServlet?id=<%= rs.getInt("id") %>" 
   			class="bg-red-600 text-white py-2 px-4 rounded hover:bg-red-700">
 			<b>Delete</b>
			</a>
        </td>
      </tr>
    <%
        }
        rs.close();
        ps.close();
        conn.close();
      } catch (Exception e) {
        out.println("<tr><td colspan='9' class='text-center text-red-600 py-2'>Error loading data.</td></tr>");
      }
    %>
  </table>
</div>



</body>
</html>
