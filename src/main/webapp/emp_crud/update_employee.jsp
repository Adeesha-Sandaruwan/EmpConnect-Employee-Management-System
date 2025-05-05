<%@ page import="com.EmpConnect.model.Employee" %>
<%
    Employee emp = (Employee) request.getAttribute("employee");
%>

<!DOCTYPE html>
<html>
<head>
  <title>Update Employee</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">

  <div class="max-w-md mx-auto bg-white p-6 rounded shadow">
    <h2 class="text-xl font-bold mb-4 text-blue-700 text-center">Update Employee</h2>
    <form action="<%=request.getContextPath()%>/UpdateEmployeeServlet" method="post" class="space-y-4">
      <input type="hidden" name="id" value="<%= emp.getId() %>" />
      <input type="text" name="fullname" value="<%= emp.getFullname() %>" class="w-full border px-4 py-2 rounded" required />
      <input type="text" name="username" value="<%= emp.getUsername() %>" class="w-full border px-4 py-2 rounded" required />
      <input type="password" name="password" value="<%= emp.getPassword() %>" class="w-full border px-4 py-2 rounded" required />
      <input type="email" name="email" value="<%= emp.getEmail() %>" class="w-full border px-4 py-2 rounded" required />
      <input type="text" name="phone" value="<%= emp.getPhone() %>" class="w-full border px-4 py-2 rounded" required />
      <input type="text" name="department" value="<%= emp.getDepartment() %>" class="w-full border px-4 py-2 rounded" />
      <select name="role" class="w-full border px-4 py-2 rounded" required>
        <option value="employee" <%= emp.getRole().equals("employee") ? "selected" : "" %>>Employee</option>
        <option value="admin" <%= emp.getRole().equals("admin") ? "selected" : "" %>>Admin</option>
      </select>
      <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Update</button>
    </form>
  </div>

</body>
</html>
