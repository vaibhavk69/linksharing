<div class="card-title text-black">
    <h5 class="text-center py-2 font-weight-bold mb-0 mt-2">Register</h5>
</div>

<div class="card-body">
    <g:form controller="User" action="register">
        <input type="text" name="lastName" placeholder="Lastname" class="form-control mb-2" required>
        <input type="text" name="firstName" placeholder="Firstname" class="form-control mb-2" required>
        <input type="email" name="email" placeholder="Email address" class="form-control mb-2" required>
        <input type="text" name="userName" placeholder="User-Name" class="form-control mb-2" required>
        <input type="password" name="password" placeholder="Password" class="form-control mb-2" minlength="8"
               maxlength="16" required>
        <input type="password" name="confPassword" placeholder="Confirm password" class="form-control mb-2"
               minlength="8" maxlength="16" required>
    %{--        <span>--}%
    %{--            <label for="photo">Select image:</label><input type="file" id="photo" name="photo">--}%
    %{--        </span>--}%
        <g:submitButton class="btn btn-success btn-block mt-3 pt-3" name="register">Submit</g:submitButton>
    </g:form>
</div>