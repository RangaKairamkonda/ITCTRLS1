<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="ITCTRLS1.WebForm9" EnableViewState="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}

.member-list {
    display: flex;
    flex-direction: column;
    gap: 15px;
    width: 100%;
    max-width: 400px;
}

.member {
    background-color: #fff;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.member h3 {
    margin: 0;
    font-size: 18px;
}

.member button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 8px 12px;
    cursor: pointer;
    border-radius: 4px;
}

.member button:hover {
    background-color: #45a049;
}

#member-details {
    margin-top: 20px;
    padding: 15px;
    background-color: #fff;
    border-radius: 8px;
    width: 100%;
    max-width: 400px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

    </style>
</head>
<body>
   
       <form id="memberForm" runat="server">
    <div class="member-list">
        <!-- Member 1 -->
        <div class="member">
            <h3>Ranga</h3>
            <button onclick="getMemberDetails(1)">View Details</button>
        </div>
        <!-- Member 2 -->
        <div class="member">
            <h3>Hari</h3>
            <button onclick="getMemberDetails(2)">View Details</button>
        </div>
        <!-- Member 3 -->
        <div class="member">
            <h3>Sathish</h3>
            <button onclick="getMemberDetails(3)">View Details</button>
        </div>
        <!-- Member 4 -->
        <div class="member">
            <h3>Akhil</h3>
            <button onclick="getMemberDetails(4)">View Details</button>
        </div>
    </div>

    <div id="member-details"></div>

           </form>
        
    
       <!--   <script>
             function getMemberDetails(memberId) {
                 // Make a POST request to the server to get member details
                 fetch('WebForm9.aspx', {
                     method: 'POST',
                     headers: {
                         'Content-Type': 'application/json',
                     },
                     body: JSON.stringify({ id: memberId })
                 })
                     .then(response => response.json())
                     .then(data => {
                         // Display the returned details in the 'member-details' div
                         document.getElementById('member-details').innerHTML = `
                    <h3>${data.name}</h3>
                    <p>Email: ${data.email}</p>
                    <p>Phone: ${data.phone}</p>
                `;
                     })
                     .catch(error => {
                         console.error('Error fetching member details:', error);
                     });
             }
    </script>
   <!-- <script>
        function getMemberDetails(memberId) {
            // Send an AJAX request to the backend to fetch member details
            fetch(`WebForm9.aspx?id=${memberId}`)
                .then(response => response.json())
                .then(data => {
                    // Display the member details in the 'member-details' div
                    const detailsDiv = document.getElementById('member-details');
                    detailsDiv.innerHTML = `
                       <h3>${data.name}</h3>
                      <p>Email: ${data.email}</p>
                     <p>Phone: ${data.phone}</p>
                     <p>Address: ${data.address}</p>
            `;
                })
                .catch(error => {
                    console.error('Error fetching member details:', error);
                });
        }

        </script>-->




       
    
</body>
</html>
