<!-- Modal -->
<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Add a User</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="<%=request.getContextPath()%>/Admin" method="POST">
                    <div class="form-group">
                        <label for="userName" class="col-sm-6 control-label">User Name (2-30 Characters)</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="userName" name="addUserName" placeholder="Enter User Name Here" data-validation="length" data-validation-length="2-30">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-6 control-label">Password (6-32 Characters)</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" id="inputPassword3" name="addPassword_confirmation" placeholder="Password" data-validation="length" data-validation-length="6-32">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group">
                            <label for="inputPassword4" class="col-sm-6 control-label">Repeat Password</label>
                            <div class="col-sm-6">
                                <input type="password" class="form-control" id="inputPassword4" name="addPassword" placeholder="Password" data-validation="confirmation">
                            </div>
                        </div>
                    </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default" name="action" value="addUser">Continue</button>

                            </div>
                        </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>
<!-- Button Model End -->