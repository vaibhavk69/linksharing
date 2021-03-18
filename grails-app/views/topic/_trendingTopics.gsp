<div class="card">
    <div class="card-header">Trending Topics
        <a href="#" style="float: left;"></a>
    </div>
    <div class="card-body">
%{--        ${trendT}--}%
        <g:each in="${topic}" var="num">
        <div class="postImage">
            <g:img dir="images/profilePic" class="pImage" file='${num.photo}' alt="Missing Image" />
        </div>
            <div class="postContent">
                <p>
%{--                    <a href="#"> ${num.topicName} </a><br>--}%
                    <g:link controller="topic" action="topicShow" params="${[topicName: num.topicName, topicId:num.id]}">${num.topicName}</g:link><br>
                    <br>
                    <span style="color: gray;">@${num.createdBy}</span>
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
%{--<script>--}%
%{--    function myfunction1(id){--}%
%{--        //alert("function working");--}%
%{--        $.ajax({--}%
%{--            type: 'post',--}%
%{--            url: '',--}%
%{--            data: {"topicId" : id},--}%
%{--            success: function (result){--}%
%{--                if(result=='subscribe'){--}%
%{--                    $('.Unsubscribe${num.id}').html('')--}%
%{--                }--}%
%{--                else if(result==''){--}%

%{--                }--}%

%{--            },--}%
%{--            error:function(){--}%
%{--                alert("not working");--}%
%{--            }--}%
%{--        });--}%
%{--    };--}%
%{--</script>--}%

