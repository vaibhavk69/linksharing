<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<button type="button"  name='test'id="hi">Test</button>
<input type="text" id="name" name="test">
<label for="name"id="ff">Name</label>
<script>

    $(document).ready(function(){
        // console.log($("#name").val("nisjas"))
        $("#hi").on("click", function(){
            myfunction();
            //myfunction2();
        });
    });

    function myfunction(){
        // console.log("hi")
        //$("#ff").text("hi " + $("#name").val());
        //alert($("#name").val())
        $.ajax({
            url: "http://localhost:8002/test/data",
            data: {"user.id" : $("#name").val() ,userId:$("#name").val() },
            success: function(result){
                $("#ff").text(result.firstName + result.lastName);

            },
            error: function(){
                alert("no user found")
            }
        });
    };

    function myfunction2(){
        // console.log("hi")
        alert("function2 call")
    };





</script>

</body>
</html>