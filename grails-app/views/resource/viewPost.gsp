<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>LINK SHARING</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
    <asset:stylesheet src="style.css"/>
</head>

<body>
<g:if test="${flash.success}">
    <div class="alert alert-success" role="alert">
        ${flash.success}
    </div>
</g:if>
%{--layouts--}%
<g:if test="${flash.error}">
    <div class="alert alert-danger" role="alert">
        ${flash.error}
    </div>
</g:if>
<g:render template="/user/newNavBar"/>
<div class="container">
    <div class="row">
        <div class="col-7">
            <div class="card-custom-one">
                <g:render template="/resource/postCard"/>
            </div>
        </div>

        <div class="col-5">
            <div class="card-custom">
                <g:render template="/topic/topicsTrending"/>
            </div>
        </div>
    </div>
</div>
<script>
    jQuery(document).ready(function($){
        $(".btnrating").on('click',(function(e) {

            var previous_value = $("#selected_rating").val();

            var selected_value = $(this).attr("data-attr");
            $("#selected_rating").val(selected_value);
            window.location =
            $(".selected-rating").empty();
            $(".selected-rating").html(selected_value);

            for (i = 1; i <= selected_value; ++i) {
                $("#rating-star-"+i).toggleClass('btn-warning');
                $("#rating-star-"+i).toggleClass('btn-default');
            }

            for (ix = 1; ix <= previous_value; ++ix) {
                $("#rating-star-"+ix).toggleClass('btn-warning');
                $("#rating-star-"+ix).toggleClass('btn-default');
            }

        }));


    });

</script>
</body>
</html>