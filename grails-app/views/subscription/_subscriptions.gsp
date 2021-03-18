<div class="card">
    <div class="card-header">Subscription
        <span style="float: right;"><a href="1.html">view all</a></span>
    </div>

    <g:if test="${subs}!=NULL">
    <g:each in="${subs}" var="sub">

    <div class="card-body card${sub.id}" >
        <div style="float: left">
            <g:img class="card-img-left" dir="images" file="not found"  alt="Card image"/>
        </div>
        <label>${sub.topic.topicName}</label>
        <br>
        <br>
        <div>
            <span style="float: left">${session.user.firstName}
            <br>
            <br>
            <a href="" id="status" onclick="unsubscribe(${sub.id})">Unsubscribe</a></span>
        </div>

    %{--        <g:form controller="topic" action="entry">--}%
    %{--            <p>Name:</p>--}%
    %{--        <g:textField name="userName" placeholder="Name" class="form-control mb-2"/>--}%
    %{--            <g:select name="visibility" from="${visible}"/>--}%
    %{--        </g:form>--}%
    </div>
    <hr>
    </g:each>
    </g:if>
<g:else>
    <p>hello world</p>
</g:else>

</div>

<script>
    function unsubscribe(id){
        $.ajax({
            type:'post',
            url :"",
            data :{"subId" : id},
            success: function(){
                $(".card" + id).hide('slow');
        }
        });
    };
</script>