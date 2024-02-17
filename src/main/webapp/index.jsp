<!doctype html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.helper.latestDate"%>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <%@include file="all_css_js.jsp"%>
        <link href="css/style2.css" rel="stylesheet" />

        <title>NoteTaker : HomePage</title>
        <style>
            .last-update {
                font-size: 18px;
                color: #01579b;
                margin: 10px 0;
            }
        </style>
    </head>
    <body>


        <div class="container-fluid  p-0  m-0 ">
            <%@include file="Navbar.jsp"%>
        </div>

        <div
            style="display: flex; justify-content: center; align-items: center; height: vh; margin: 0;">
            <div
                style="position: relative; overflow: hidden; text-align: center; padding-top: 50px">
                <span id="text"
                      style="font-size: 36px; font-weight: bold; background-image: linear-gradient(45deg, #1e90ff, #87ceeb); background-clip: text; -webkit-background-clip: text; color: transparent; white-space: nowrap;"></span>
            </div>

            <script>
                // JavaScript to handle the text animation
                const textElement = document.getElementById("text");
                const textsToAnimate = [ "Welcome to Note Taker!",
                        "Start taking Notes" ];
                let textIndex = 0;
                let currentIndex = 0;
                function typeText() {
                if (currentIndex < textsToAnimate[textIndex].length) {
                textElement.innerText = textsToAnimate[textIndex].slice(0,
                        currentIndex + 1);
                currentIndex++;
                setTimeout(typeText, 100); // Adjust the typing speed here (in milliseconds)
                } else {
                setTimeout(deleteText, 1000); // Wait for 1 second before deleting the text
                }
                }

                function deleteText() {
                if (currentIndex > 0) {
                textElement.innerText = textsToAnimate[textIndex].slice(0,
                        currentIndex - 1);
                currentIndex--;
                setTimeout(deleteText, 50); // Adjust the deleting speed here (in milliseconds)
                } else {
                textIndex = (textIndex + 1) % textsToAnimate.length; // Switch to the next text
                setTimeout(typeText, 1000); // Wait for 1 second before typing the next text
                }
                }

                typeText(); // Start the animation on page load
            </script>

            <div class="row">
                <div class="col-4">
                    <img style="max-width: 120px; padding-top: 50px" class=""
                         src="img/Notepad.png" alt="Card image cap">
                </div>
                <div class="col-4"></div>
                <div class="col-4"></div>


            </div>
        </div>
        
           <div class=" text-center container my-3 last-update" style="">
            <%
                String d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(latestDate.getLatestDate());
            %>
            <h3>Last Update : &nbsp <%=d%></h3>

        </div>
        <div
            style="display: flex; justify-content: center; align-items: center; height: 47vh; margin: 0;">
            <div style="position: relative; overflow: hidden; text-align: center;">
                <h1
                    style="font-size: 36px; font-weight: bold; background-image: linear-gradient(45deg, #1e90ff, #87ceeb); background-clip: text; -webkit-background-clip: text; color: transparent; white-space: nowrap;">
                    <span id="text"></span>
                </h1>
            </div>
            <div style="display: flex; flex-direction: row;">
                <div
                    style="flex: 1; display: flex; justify-content: center; align-items: center;">
                    <button  class="btn btn-primary "
                             style="border-radius: 5px; font-size: 18px; background-color: white; color: blue; border: 1px solid blue; cursor: pointer;">
                        <a style="text-decoration: none;" href="add_notes.jsp">Start
                            Writing</a>
                    </button>

                </div>
            </div>
        </div>

        <script>
            // JavaScript to handle the text animation
            const textElement = document.getElementById("text");
            const textsToAnimate = [ "Welcome to Note Taker!", "Start taking Notes" ];
            let textIndex = 0;
            let currentIndex = 0;
            function typeText() {
            if (currentIndex < textsToAnimate[textIndex].length) {
            textElement.innerText = textsToAnimate[textIndex].slice(0,
                    currentIndex + 1);
            currentIndex++;
            setTimeout(typeText, 100); // Adjust the typing speed here (in milliseconds)
            } else {
            setTimeout(deleteText, 1000); // Wait for 1 second before deleting the text
            }
            }

            function deleteText() {
            if (currentIndex > 0) {
            textElement.innerText = textsToAnimate[textIndex].slice(0,
                    currentIndex - 1);
            currentIndex--;
            setTimeout(deleteText, 50); // Adjust the deleting speed here (in milliseconds)
            } else {
            textIndex = (textIndex + 1) % textsToAnimate.length; // Switch to the next text
            setTimeout(typeText, 1000); // Wait for 1 second before typing the next text
            }
            }

            typeText(); // Start the animation on page load
        </script>


     

    </body>
</html>
