<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" /> 
  <title>Register | EmpConnect</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100">

  <div class="min-h-screen flex items-center justify-center px-4">
    <div class="bg-white shadow-md rounded-lg overflow-hidden max-w-3xl w-full grid md:grid-cols-2">

      <div class="hidden md:block">
        <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Register Illustration" class="w-full h-full object-cover" />
      </div>


      <div class="p-8">
        <h2 class="text-2xl font-bold mb-6 text-center text-blue-700">Create Your Account</h2>
        <form action="<%=request.getContextPath()%>/RegisterServlet" method="post" class="space-y-4">
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
        </form>
		
		 <p class="text-sm text-center mt-4 text-gray-600">
          Already have an account? 
          <a href="login.jsp" class="text-blue-600 hover:underline">Login here</a>
        </p>

        <p class="text-xs text-center mt-6 text-gray-400">© 2025 EmpConnect</p>
      </div>

    </div>
  </div>

</body>
</html>
