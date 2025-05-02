<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>About Us | EmpConnect</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-50 text-gray-800">

<%@ include file="header.jsp" %>

  <header class="bg-blue-600 text-white py-10 text-center">
    <h1 class="text-4xl font-bold">About EmpConnect</h1>
    <p class="mt-2 text-lg">Who we are and what we do</p>
  </header>

  <!-- Main Content -->
  <main class="max-w-5xl mx-auto px-6 py-12 space-y-8">
    <section>
      <h2 class="text-2xl font-semibold mb-2">Our Mission</h2>
      <p class="text-gray-700 leading-relaxed">
        At <strong>EmpConnect</strong>, our mission is to provide a simple and effective way to manage employee data,
        track attendance, handle leave requests, and streamline departmental structures — all within a single,
        easy-to-use platform built for academic and small-scale use.
      </p>
    </section>

    <section>
      <h2 class="text-2xl font-semibold mb-2">Who We Are</h2>
      <p class="text-gray-700 leading-relaxed">
        We are a group of dedicated students from SLIIT developing EmpConnect as a final-year academic project
        for the IT2030 Web Technologies module. Our focus is on practicality, user-friendliness, and clean design.
      </p>
    </section>

    <section>
      <h2 class="text-2xl font-semibold mb-2">Technologies We Use</h2>
      <ul class="list-disc pl-6 text-gray-700">
        <li>Java (Servlets & JSP)</li>
        <li>MySQL (Database)</li>
        <li>Tailwind CSS (UI Styling)</li>
        <li>HTML5 & Alpine.js (Frontend Behavior)</li>
      </ul>
    </section>

    <section>
      <h2 class="text-2xl font-semibold mb-2">What Makes EmpConnect Different?</h2>
      <p class="text-gray-700 leading-relaxed">
        Unlike typical HR systems, EmpConnect is developed with a clear focus on learning and functionality.
        It’s designed to be understandable, modular, and ideal for demonstrations, student projects,
        or small organizations looking for a minimal solution.
      </p>
    </section>
  </main>

  <!-- Footer -->
 
<%@ include file="footer.jsp" %>

</body>
</html>
