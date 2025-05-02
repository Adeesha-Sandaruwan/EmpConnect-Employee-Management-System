<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>EmpConnect – Features</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body class="bg-gray-50 text-gray-800">

<%@ include file="header.jsp" %>
  <!-- Header -->
  <header class="bg-blue-600 text-white py-12 text-center">
    <h1 class="text-4xl font-bold">Features of EmpConnect</h1>
    <p class="mt-3 text-lg max-w-2xl mx-auto">EmpConnect is built to simplify your employee management process. Explore the powerful features that keep your workforce organized and productive.</p>
  </header>

  <!-- Features Grid -->
  <section class="max-w-7xl mx-auto py-16 px-6">
    <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-10">

      <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-xl text-center">
        <i class="fas fa-user-cog text-blue-600 text-4xl mb-4"></i>
        <h3 class="text-xl font-semibold mb-2">Employee Management</h3>
        <p class="text-gray-600">Create, update, and manage employee profiles with contact info, roles, and department assignments.</p>
      </div>

      <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-xl text-center">
        <i class="fas fa-sitemap text-blue-600 text-4xl mb-4"></i>
        <h3 class="text-xl font-semibold mb-2">Department Handling</h3>
        <p class="text-gray-600">Organize employees into logical departments to improve clarity and role management.</p>
      </div>

      <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-xl text-center">
        <i class="fas fa-calendar-check text-blue-600 text-4xl mb-4"></i>
        <h3 class="text-xl font-semibold mb-2">Attendance Logging</h3>
        <p class="text-gray-600">Maintain real-time attendance records, track presence, and monitor punctuality.</p>
      </div>

      <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-xl text-center">
        <i class="fas fa-plane-departure text-blue-600 text-4xl mb-4"></i>
        <h3 class="text-xl font-semibold mb-2">Leave Management</h3>
        <p class="text-gray-600">Submit, approve, and view leave applications with automated status tracking.</p>
      </div>

      <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-xl text-center">
        <i class="fas fa-lock text-blue-600 text-4xl mb-4"></i>
        <h3 class="text-xl font-semibold mb-2">Secure Login</h3>
        <p class="text-gray-600">Role-based login for Admin and HR users with input validation and session handling.</p>
      </div>

      <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-xl text-center">
        <i class="fas fa-chart-bar text-blue-600 text-4xl mb-4"></i>
        <h3 class="text-xl font-semibold mb-2">Dashboard Insights</h3>
        <p class="text-gray-600">Instantly view employee counts, active departments, leave stats, and more in one glance.</p>
      </div>

    </div>
  </section>

  <!-- Why Choose Section -->
  <section class="bg-blue-50 py-16 px-6">
    <div class="max-w-5xl mx-auto text-center">
      <h2 class="text-3xl font-bold mb-6 text-blue-800">Why Choose EmpConnect?</h2>
      <div class="grid md:grid-cols-3 gap-8 text-left">
        <div>
          <h4 class="text-xl font-semibold text-blue-600 mb-2"><i class="fas fa-bolt mr-2"></i>Fast & Lightweight</h4>
          <p class="text-gray-600">EmpConnect is designed to be fast, responsive, and easy to use, even for first-time users.</p>
        </div>
        <div>
          <h4 class="text-xl font-semibold text-blue-600 mb-2"><i class="fas fa-code mr-2"></i>Built with Modern Tech</h4>
          <p class="text-gray-600">Crafted with Java, JSP, Servlets, and Tailwind CSS — using the latest web development standards.</p>
        </div>
        <div>
          <h4 class="text-xl font-semibold text-blue-600 mb-2"><i class="fas fa-check-circle mr-2"></i>Focused on Functionality</h4>
          <p class="text-gray-600">Every feature is designed with purpose — to give admins and HRs control with ease.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Technologies Used -->
  <section class="bg-white py-12 px-6 text-center">
    <h2 class="text-2xl font-bold mb-6">Technologies Used</h2>
    <div class="flex justify-center flex-wrap gap-10 text-blue-600 text-3xl">
      <div><i class="fab fa-java"></i><p class="text-sm mt-1">Java</p></div>
      <div><i class="fas fa-database"></i><p class="text-sm mt-1">MySQL</p></div>
      <div><i class="fab fa-html5"></i><p class="text-sm mt-1">JSP</p></div>
      <div><i class="fab fa-css3-alt"></i><p class="text-sm mt-1">Tailwind</p></div>
      <div><i class="fas fa-server"></i><p class="text-sm mt-1">Servlet</p></div>
      <div><i class="fas fa-lock"></i><p class="text-sm mt-1">Validation</p></div>
    </div>
  </section>

  <!-- Footer -->
 <%@ include file="footer.jsp" %>
</body>
</html>
