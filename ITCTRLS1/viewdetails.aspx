<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdetails.aspx.cs" Inherits="ITCTRLS1.WebForm11" EnableViewState="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>viewdetails</title>
     <link rel="icon" href="Pics/Desktop/icon1.jpg" />
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #322653;
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
    .product-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }
        .product-table th, .product-table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .product-table th {
            background-color: #007BFF;
            color: white;
        }
        .product-table tr:hover {
            background-color: #f1f1f1;
        }
        .product-name {
            font-weight: bold;
            font-size: 16px;
        }
        .product-price {
            color: green;
            font-size: 16px;
        }
        .no-data {
            text-align: center;
            padding: 20px;
            font-size: 18px;
            color: #666;
        }
       /* #productTable {
            display: none; /* Initially hidden 
        }*/
       a{
           color:red;
       }
         


    </style>
    <script>
        function toggleTable() {
            var table = document.getElementById("productTable");
            if (table.style.display="none") {
                table.style.display = "table"; // Show the table
            } else {
                table.style.display = "none"; // Hide the table
            }
        }
    </script>
</head>
<body>

 
  
    <!--table.style.display === "none" || table.style.display === "-->
       <form id="memberForm" runat="server">
    <div class="member-list">
        <!-- Member 1 -->
        <div class="member">
            <h3>Ranga</h3>
           <asp:Button ID="no1" runat="server" onclick="getMemberDetails_1" Text="View Details" OnClientClick="toggleTable()"></asp:Button>
        </div>
        <!-- Member 2 -->
        <div class="member">
            <h3>Hari</h3>
            <asp:Button ID="no2" runat="server" onclick="getMemberDetails_2" Text="View Details" CssClass="button" ></asp:Button>
        </div>
        <!-- Member 3 -->
        <div class="member">
            <h3>Sathish</h3>
            <asp:Button ID="no3" runat="server" onclick="getMemberDetails_3" Text="View Details"></asp:Button>
        </div>
        <!-- Member 4 -->
        <div class="member">
            <h3>Akhil</h3>
            <asp:Button ID="no4" runat="server" onclick="getMemberDetails_4" Text="View Details"></asp:Button>
        </div>
    </div>

    <div>
            
            <table class="product-table" id="productTable" >
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phno</th>
                    </tr>
                </thead>
                <tbody id="productContainer" runat="server">
                    <!-- Data will be populated here -->
                </tbody>
            </table>
            <div id="noDataMessage" class="no-data" runat="server" visible="false">No Details available.</div>
        </div>
           <div>
                <a href="Home.aspx">LogOut</a>
           </div>

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
