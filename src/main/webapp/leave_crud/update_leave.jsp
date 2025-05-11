<%@ page import="java.util.List" %>
<%@ page import="com.EmpConnect.model.Leave" %>
<%@ page import="com.EmpConnect.service.LeaveService" %>
<%
	int leaveId = Integer.parseInt(request.getParameter("id"));
    LeaveService service = new LeaveService();
    Leave l = service.getLeaveById(leaveId);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Leave</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">
    <div class="bg-white shadow-lg rounded-2xl p-8 w-full max-w-md">
        <h2 class="text-2xl font-bold mb-6 text-center text-blue-600">Edit Leave Record</h2>
        <form action="<%= request.getContextPath() %>/UpdateLeaveServlet" method="post" class="space-y-4">
            <input type="hidden" name="leaveId" value="<%=l.getLeaveId()%>">
            
            <div>
                <label class="block text-gray-700">Employee ID</label>
                <input type="text" name="employeeId" value="<%=l.getEmployeeId()%>" required 
                       class="w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400">
            </div>
            
            <div>
                <label class="block text-gray-700">Leave Date</label>
                <input type="date" name="leaveDate" value="<%=l.getLeaveDate()%>" required 
                       class="w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400">
            </div>
            
            <div>
                <label class="block text-gray-700">Leave Type</label>
                <select name="leaveType" 
                        class="w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400">
                    <option selected><%=l.getLeaveType()%></option>
                    <option value="Sick">Sick</option>
                    <option value="Casual">Casual</option>
                    <option value="Annual">Annual</option>
                </select>
            </div>
            
            <div>
                <label class="block text-gray-700">Reason</label>
                <textarea name="reason" rows="4" 
                          class="w-full border border-gray-300 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400"><%=l.getReason()%></textarea>
            </div>
            
            <div class="text-center">
                <button type="submit" 
                        class="bg-blue-500 text-white px-5 py-2 rounded-lg hover:bg-blue-600 transition duration-200">
                    Update
                </button>
            </div>
        </form>
    </div>
</body>
</html>
