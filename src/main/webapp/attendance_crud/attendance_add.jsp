<%@ page import="com.EmpConnect.model.Attendance" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Attendance</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">
    <div class="max-w-md mx-auto bg-white p-6 rounded shadow">
        <h2 class="text-xl font-bold mb-4 text-blue-700 text-center">
            Add Attendance
        </h2>
        <form action="<%=request.getContextPath()%>/AttendanceAddServlet" method="post" class="space-y-4">
            <input type="text" name="name" placeholder="Name" class="w-full border px-4 py-2 rounded" required />
            <input type="time" name="in_time" class="w-full border px-4 py-2 rounded" required />
            <input type="time" name="out_time" class="w-full border px-4 py-2 rounded" required />
            <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Add</button>
        </form>
    </div>
</body>
</html>
