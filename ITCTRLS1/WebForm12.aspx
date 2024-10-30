<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm12.aspx.cs" Inherits="ITCTRLS1.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>     
          
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .product-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            opacity: 0;
            transition: opacity 0.5s ease-in-out; /* Smooth transition for fade effect */
            visibility: hidden; /* Make table invisible but occupy space */
        }
        .product-table.show {
            opacity: 1; /* Fully visible */
            visibility: visible; /* Show the table */
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
            font-weight: bold;
            padding: 5px;
            border-radius: 4px;
            background-color: #e0ffe0;
            text-align: right;
        }
        .no-data {
            text-align: center;
            padding: 20px;
            font-size: 18px;
            color: #666;
        }
        #toggleButton {
            margin-bottom: 20px;
        }
    </style>
    <script>
        function toggleTable() {
            var table = document.getElementById("productTable");

            if (table.classList.contains("show")) {
                // Fade out and hide the table
                table.classList.remove("show");
                setTimeout(function() {
                    table.style.visibility = "hidden"; // Hide the table after transition
                }, 500); // Match this time with the CSS transition duration
            } else {
                // Show the table first
                table.style.visibility = "visible"; // Make the table visible
                setTimeout(function() {
                    table.classList.add("show"); // Trigger the fade-in effect
                }, 10); // Short delay to ensure visibility is applied first
            }
        }
    </script>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <asp:button type="button" id="toggleButton" onclick="toggleTable" runat="server" Text="Toggle Product Table" ></asp:button>
            <h2>Product List</h2>
            <table class="product-table" id="productTable" runat="server" style="visibility: hidden;"> <!-- Initially hidden -->
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody id="productContainer" >
                    <!-- Data will be populated here -->
                </tbody>
            </table>
            <div id="noDataMessage" class="no-data" runat="server" visible="false">No products available.</div>
        </div>
    </form>
</body>
</html>

        </div>
    </form>
</body>
</html>
