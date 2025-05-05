<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Contact Us | EmpConnect</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100 text-gray-800">
<%@ include file="header.jsp" %>

  <!-- Header -->
  <header class="bg-blue-600 text-white text-center py-10">
    <h1 class="text-4xl font-bold">Contact Us</h1>
    <p class="mt-2 text-lg">We're here to help you with EmpConnect</p>
  </header>

  <main class="max-w-5xl mx-auto px-4 py-12 grid md:grid-cols-2 gap-8 items-start bg-white rounded shadow">

    <!-- Contact Form -->
    <div>
      <h2 class="text-2xl font-semibold mb-4">Send Us a Message</h2>
      <form action="#" method="POST" class="space-y-4">
        <input type="text" name="name" placeholder="Your Name" required class="w-full border px-4 py-2 rounded" />
        <input type="email" name="email" placeholder="Your Email" required class="w-full border px-4 py-2 rounded" />
        <textarea name="message" rows="5" placeholder="Your Message" required class="w-full border px-4 py-2 rounded"></textarea>
        <button type="submit" class="bg-blue-600 hover:bg-blue-700 text-white px-5 py-2 rounded">
          Send Message
        </button>
      </form>

      <div class="mt-8 text-sm">
        <p><strong>Email:</strong> empconnect.project@gmail.com</p>
        <p><strong>Phone:</strong> +94 71 123 4567</p>
        <p><strong>Location:</strong> SLIIT, Malabe, Sri Lanka</p>
      </div>
    </div>

    <div class="rounded overflow-hidden">
      <img src="https://cdn-icons-png.flaticon.com/512/3064/3064197.png" alt="Contact Illustration" class="w-full h-auto object-contain" />
    </div>

  </main>

 <%@ include file="footer.jsp" %>
 

</body>
</html>
    