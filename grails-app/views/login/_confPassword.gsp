<div class="card-title text-black">
    <h5 class="text-center py-2 font-weight-bold mb-0 mt-2">Update Password</h5>
</div>

<div class="card-body">
    <g:form controller="user" action="updatePass">
        <input type="password" name="password" placeholder="Password" class="form-control mb-2" required>
        <input type="password" name="confPass" placeholder="Confirm-Password" class="form-control mb-2" required>
        <g:submitButton class="btn btn-success btn-block mt-3 pt-3" name="updatePass">Submit</g:submitButton>
    </g:form>
</div>