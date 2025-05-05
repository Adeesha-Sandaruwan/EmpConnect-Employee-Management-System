<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>EmpConnect</title>

    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />

    <style>
      .hero-slide {
        width: 100%;
        height: 550px;
        background-size: cover;
        background-position: center center;
        background-repeat: no-repeat;
      }
    </style>
  </head>
  <body class="bg-gray-50">

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Alpine Slider</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

  <!-- Slider images -->
<section
  x-data="{ activeSlide: 0, slides: [
  { image: 'images/1.jpg', title: 'Welcome to EmpConnect', desc: 'Manage employees and departments easily.' },
  { image: 'images/2.jpg', title: 'Real-Time Tracking', desc: 'Monitor attendance and leaves in real-time.' },
  { image: 'images/3.jpg', title: 'Simplify HR Tasks', desc: 'All-in-one solution for HR management.' }
]}"

  x-init="setInterval(() => activeSlide = (activeSlide + 1) % slides.length, 4000)"
  class="relative w-full h-[550px] overflow-hidden"
>
  <div class="relative w-full h-full">
    <template x-for="(slide, index) in slides" :key="index">
      <div
        x-show="activeSlide === index"
        x-transition:enter="transition-opacity duration-500"
        x-transition:enter-start="opacity-0"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition-opacity duration-500"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0"
        class="absolute inset-0 w-full h-full"
      >
        <img :src="slide.image" alt="" class="w-full h-full object-cover" />
        <div class="absolute inset-0 bg-black bg-opacity-40 z-10 flex flex-col justify-center items-start px-8 space-y-4">
          <h2 class="text-white text-4xl font-bold" x-text="slide.title"></h2>
          <p class="text-white text-lg" x-text="slide.desc"></p>
          <a href="login.jsp" class="mt-4 bg-blue-600 hover:bg-blue-700 text-white px-5 py-2 rounded">
            <i class="fas fa-sign-in-alt"></i> Get Started
          </a>
        </div>
      </div>
    </template>
  </div>

  <!-- Dots -->
  <div class="absolute bottom-5 left-1/2 transform -translate-x-1/2 flex space-x-2 z-20">
    <template x-for="(slide, index) in slides" :key="index">
      <button
        @click="activeSlide = index"
        class="w-3 h-3 rounded-full"
        :class="activeSlide === index ? 'bg-white' : 'bg-gray-400'"
      ></button>
    </template>
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js" defer></script>


<section class="py-12 px-4 max-w-7xl mx-auto text-center">
  <h2 class="text-3xl font-bold text-gray-800 mb-8">What You Can Do with EmpConnect</h2>
  <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
    <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg">
      <img src="images/4.jpg" alt="Employee" class="w-full h-40 object-cover rounded mb-4" />
      <h3 class="font-semibold text-lg text-blue-600 mb-2">Manage Employees</h3>
      <p class="text-sm text-gray-600">Add, edit, and remove employee records easily.</p>
    </div>
    <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg">
      <img src="images/5.jpg" alt="Department" class="w-full h-40 object-cover rounded mb-4" />
      <h3 class="font-semibold text-lg text-blue-600 mb-2">Handle Departments</h3>
      <p class="text-sm text-gray-600">Organize staff into departments and teams.</p>
    </div>
    <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg">
      <img src="images/6.jpg" alt="Attendance" class="w-full h-40 object-cover rounded mb-4" />
      <h3 class="font-semibold text-lg text-blue-600 mb-2">Track Attendance</h3>
      <p class="text-sm text-gray-600">Log daily presence and monitor work hours.</p>
    </div>
    <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg">
      <img src="images/7.jpg" alt="Leave" class="w-full h-40 object-cover rounded mb-4" />
      <h3 class="font-semibold text-lg text-blue-600 mb-2">Manage Leave</h3>
      <p class="text-sm text-gray-600">Approve or reject staff leave requests quickly.</p>
    </div>
  </div>
</section>

<section class="py-16 bg-white">
  <div class="max-w-6xl mx-auto px-6 text-center">
    <h2 class="text-3xl font-bold text-gray-800 mb-8">Why Choose EmpConnect?</h2>
    <div class="grid md:grid-cols-3 gap-10 text-left">
      <div>
        <h4 class="text-xl font-semibold text-blue-700 mb-2"><i class="fas fa-clock mr-2"></i>Time-Saving</h4>
        <p class="text-gray-600">Manage employees, attendance, and leave in one place — quickly and easily.</p>
      </div>
      <div>
        <h4 class="text-xl font-semibold text-blue-700 mb-2"><i class="fas fa-lock mr-2"></i>Secure</h4>
        <p class="text-gray-600">Role-based login ensures only authorized access to sensitive HR data.</p>
      </div>
      <div>
        <h4 class="text-xl font-semibold text-blue-700 mb-2"><i class="fas fa-chart-line mr-2"></i>Insightful</h4>
        <p class="text-gray-600">Get quick insights into employee activity and attendance trends.</p>
      </div>
    </div>
  </div>
</section>


<section class="w-full bg-gradient-to-r from-blue-100 to-blue-50 py-16 px-6">
  <div class="max-w-6xl mx-auto text-left">
    <h2 class="text-4xl font-bold text-blue-800 mb-4">About EmpConnect</h2>
    <p class="text-gray-700 text-lg leading-relaxed max-w-3xl">
      <strong>EmpConnect</strong> is a simple and modern employee management system developed for academic use. It enables you to efficiently manage staff, track attendance, organize departments, and process leave requests — all through a clean, user-friendly interface built with modern web technologies.
    </p>
  </div>
</section>

<%@ include file="footer.jsp" %>

<script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>

</body>
</html>
