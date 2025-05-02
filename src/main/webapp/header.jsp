<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>EmpConnect</title>

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <header class="bg-white shadow-md sticky top-0 z-50">
      <div class="max-w-7xl mx-auto px-4 py-3 flex items-center justify-between">
        <div class="flex items-center space-x-2 text-blue-600 text-2xl font-bold">
          <i class="fas fa-network-wired"></i>
          <span>EmpConnect</span>
        </div>
        <nav class="hidden md:flex space-x-6 text-gray-700 font-medium">
          <a href="Homepage.jsp" class="flex items-center gap-1 hover:text-blue-600">
            <i class="fas fa-home"></i> Home
          </a>
          <a href="features.jsp" class="flex items-center gap-1 hover:text-blue-600">
            <i class="fas fa-list-alt"></i> Features
          </a>
          <a href="about.jsp" class="flex items-center gap-1 hover:text-blue-600">
            <i class="fas fa-info-circle"></i> About
          </a>
          <a href="contact.jsp" class="flex items-center gap-1 hover:text-blue-600">
            <i class="fas fa-envelope"></i> Contact
          </a>
        </nav>
        <div>
          <a href="login.jsp" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 flex items-center gap-2">
            <i class="fas fa-sign-in-alt"></i> Login
          </a>
        </div>
      </div>
    </header>

</body>
</html>