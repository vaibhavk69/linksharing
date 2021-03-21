<div class="card-title text-black">
    <h5 class="text-center py-2 font-weight-bold mb-0 mt-2">Profile</h5>
</div>

<div class="card-body">
    <g:form controller="User" action="update">
        <input type="hidden" name="id" value="${session.user.id}">
        <input type="text" name="firstName" placeholder="Firstname" class="form-control mb-2"
               value="${session.user.firstName}" required>
        <input type="text" name="lastName" placeholder="Lastname" class="form-control mb-2"
               value="${session.user.lastName}" required>
        <input type="text" name="userName" placeholder="User-Name" class="form-control mb-2"
               value="${session.user.userName}" required>
        <span>
            <label for="photo">Select image:</label><input type="file" id="photo" name="photo">
        </span>
        <g:submitButton class="btn btn-success btn-block mt-3 pt-3" name="update">Submit</g:submitButton>
    </g:form>
</div>