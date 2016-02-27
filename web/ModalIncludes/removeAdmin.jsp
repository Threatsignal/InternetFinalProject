<%-- 
    Document   : removeAdmin
    Created on : Feb 26, 2016, 6:29:04 PM
    Author     : Justin
--%>
<!-- Modal -->
<div class="modal fade" id="removeAdmin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Remove Administrative Rights</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="<%=request.getContextPath()%>/Admin" method="POST">
                    <div class="form-group">
                        <label for="removeUser" class="col-sm-6 control-label">Remove This users Admin Rights!:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="removeUser" name="removeAdmin" placeholder="Username" data-validation="length" data-validation-length="2-30">
                        </div>
                    </div>
                    

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default" name="action" value="removeAdmin">Continue</button>

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

