<div class="card">
    <div class="card-header">Trending Topics
        <a href="#" style="float: left;"></a>
    </div>
    <div class="card-body">
%{--        ${trendT}--}%
        <g:each in="${topic}" var="num">
        <div class="postImage">
            <g:img dir="images/profilePic" class="pImage" file='${num.createdBy.photo}' alt="Missing Image" />
%{--            <div class="postImage" style="width: 100px; height: 100px; margin-right: 10px; margin-top: 10px;">--}%
%{--                <g:img class="pImage" dir="images/profilePic" file="${num.createdBy.photo}"  alt="Card image"/>--}%
%{--            </div>--}%
        </div>
            <div class="postContent">
                <p>
%{--                    <a href="#"> ${num.topicName} </a><br>--}%
                    <g:link controller="topic" action="topicShow" params="${[topicName: num.topicName, topicId:num.id]}">${num.topicName}</g:link><br>
                    <br>
                    <span style="color: gray;">@${num.createdBy.userName}</span>
                    <a style="float: inline-end;" class="subscribe${num.id}" onclick="subscribe(${num.id})">Subscribe</a>
                    <a style="float: inline-end;" class="Unsubscribe${num.id}" onclick="unsubscribe(${num.id})"></a>
                    <br>
                    <span style="float: left; margin-right: 50px;">
                        Subscriptions
                        <br>
                        500
                    </span>
                    <span>
                        Posts
                        <br>
                        500
                    </span>
                </p>
                <hr>
            </div>
        <br>
        <br>
        </g:each>
    </div>
</div>
<script>
    %{--function subscribe(id){--}%
    %{--    //alert("function working");--}%
    %{--    $.ajax({--}%
    %{--        type: 'post',--}%
    %{--        url: '',--}%
    %{--        data: {"topicId" : id},--}%
    %{--        success: function (result){--}%
    %{--            if(result=='subscribe'){--}%
    %{--                $('.Subscribe${num.id}').hide('slow')--}%
    %{--                $('.Unsubscribe${num.id}').show('show')--}%
    %{--            }--}%
    %{--        },--}%
    %{--        error:function(){--}%
    %{--            alert("not working");--}%
    %{--        }--}%
    %{--    });--}%
    %{--};--}%
    %{--function subscribe(id){--}%
    %{--    //alert("function working");--}%
    %{--    $.ajax({--}%
    %{--        type: 'post',--}%
    %{--        url: '',--}%
    %{--        data: {"topicId" : id},--}%
    %{--        success: function (result){--}%
    %{--            if(result=='subscribe'){--}%
    %{--                $('.Subscribe${num.id}').hide('slow')--}%
    %{--                $('.Unsubscribe${num.id}').show('show')--}%
    %{--            }--}%
    %{--        },--}%
    %{--        error:function(){--}%
    %{--            alert("not working");--}%
    %{--        }--}%
    %{--    });--}%
    %{--};--}%
    %{--function Unsubscribe(id){--}%
    %{--    //alert("function working");--}%
    %{--    $.ajax({--}%
    %{--        type: 'post',--}%
    %{--        url: '',--}%
    %{--        data: {"topicId" : id},--}%
    %{--        success: function (result){--}%
    %{--            if(result=='Usubscribe'){--}%
    %{--                $('.Unsubscribe${num.id}').hide('show')--}%
    %{--                $('.Subscribe${num.id}').show('slow')--}%
    %{--            }--}%
    %{--        },--}%
    %{--        error:function(){--}%
    %{--            alert("not working");--}%
    %{--        }--}%
    %{--    });--}%
    %{--};--}%
    function subscribe(id){
        $.ajax({
            type: 'post',
            url: "http://localhost:8084/subscription/subscribeTheTopics",
            data: {"topicId" : id}, //$("#topicName").val() },
            success: function (){
                console.log("hello")
                $(".subscribe"+id).hide('slow');
                $(".Unsubscribe" + id).text("Unsubscribe");
            }
        });
    };
</script>

