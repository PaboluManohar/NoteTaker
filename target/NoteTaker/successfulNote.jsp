<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>

    <style>
        .cont {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
        }

        .loading {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        /* Loading animation keyframes */
        @keyframes rotating {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }

        .spinner {
            width: 30px;
            height: 30px;
            border: 4px solid rgba(0, 0, 0, 0.3);
            border-radius: 50%;
            border-top: 4px solid #3498db;
            animation: rotating 1s linear infinite;
        }

        /* Styling for the image */
        .image {
            width: 170px;
            height: 170px;
            padding-top: 30px;
            display: block; /* Ensure the image is a block-level element */
            margin: 0 auto; /* Center the image horizontally */
        }
    </style>

    <script>
        // Function to display messages and redirect after 3 seconds
        function displayMessagesAndRedirect() {
            var messages = ["great! added successfully", "redirecting to All notes"];
            var messagesContainer = document.getElementById("messages");

            // Loop through the messages and create individual elements for each
            for (var i = 0; i < messages.length; i++) {
                var messageElement = document.createElement("h1");
                messageElement.style.textAlign = "center";
                messageElement.textContent = messages[i];
                messagesContainer.appendChild(messageElement);
            }

            // Create and add the image
            var imageElement = document.createElement("img");
            imageElement.src = "img/checked.png"; // Replace with the correct image path
            imageElement.alt = "Image description"; // Add an appropriate alt attribute
            imageElement.classList.add("image");
            messagesContainer.appendChild(imageElement);

            // Redirect after 3 seconds
            setTimeout(function() {
                window.location.href = "All_Notes.jsp";
            }, 2000); // 3000 milliseconds = 3 seconds
        }
    </script>
</head>
<body onload="displayMessagesAndRedirect()">
    <div class="cont">
    <div id="messages"></div>
        <div class="loading">Please wait...</div>
        <div class="spinner"></div>
        
    </div>
</body>
</html>
 