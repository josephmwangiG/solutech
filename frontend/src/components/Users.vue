<template>
    <div class="body-wrapper">
        <div class="bodywrapper__inner">
            <div class="d-flex mb-30 flex-wrap gap-3 justify-content-between align-items-center">
                <h6 class="page-title">Plans</h6>
                <div class="d-flex flex-wrap justify-content-end gap-2 align-items-center breadcrumb-plugins">
                    <button class="btn btn-sm btn-outline--primary add-plan" type="button">
                        <i class="la la-plus"></i>Add New
                    </button>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <div class="table-responsive--md table-responsive">
                                <table class="table--light style--two table">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Business Volume (BV)</th>
                                            <th>Referral Commission</th>
                                            <th>Tree Commission</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Basic</td>
                                            <td>100.00 USD</td>
                                            <td>10</td>
                                            <td>5.00 USD</td>

                                            <td>0.03 USD</td>
                                            <td>
                                                <span class="badge badge--success">Enabled</span>
                                            </td>

                                            <td>
                                                <button class="btn btn-sm btn-outline--primary edit" data-toggle="tooltip"
                                                    data-id="1" data-name="Basic" data-bv="10" data-price="100"
                                                    data-ref_com="5" data-tree_com="0.03" data-original-title="Edit"
                                                    type="button">
                                                    <i class="la la-pencil"></i> Edit
                                                </button>

                                                <button class="btn btn-sm btn-outline--danger ms-1 confirmationBtn"
                                                    data-question="Are you sure to disable this plan?"
                                                    data-action="https://script.viserlab.com/mlmlab/admin/plan/status/1">
                                                    <i class="la la-eye-slash"></i> Disable
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Standard</td>
                                            <td>300.00 USD</td>
                                            <td>30</td>
                                            <td>15.00 USD</td>

                                            <td>0.66 USD</td>
                                            <td>
                                                <span class="badge badge--success">Enabled</span>
                                            </td>

                                            <td>
                                                <button class="btn btn-sm btn-outline--primary edit" data-toggle="tooltip"
                                                    data-id="2" data-name="Standard" data-bv="30" data-price="300"
                                                    data-ref_com="15" data-tree_com="0.66" data-original-title="Edit"
                                                    type="button">
                                                    <i class="la la-pencil"></i> Edit
                                                </button>

                                                <button class="btn btn-sm btn-outline--danger ms-1 confirmationBtn"
                                                    data-question="Are you sure to disable this plan?"
                                                    data-action="https://script.viserlab.com/mlmlab/admin/plan/status/2">
                                                    <i class="la la-eye-slash"></i> Disable
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Premium</td>
                                            <td>500.00 USD</td>
                                            <td>50</td>
                                            <td>25.00 USD</td>

                                            <td>0.66 USD</td>
                                            <td>
                                                <span class="badge badge--success">Enabled</span>
                                            </td>

                                            <td>
                                                <button class="btn btn-sm btn-outline--primary edit" data-toggle="tooltip"
                                                    data-id="3" data-name="Premium" data-bv="50" data-price="500"
                                                    data-ref_com="25" data-tree_com="0.66" data-original-title="Edit"
                                                    type="button">
                                                    <i class="la la-pencil"></i> Edit
                                                </button>

                                                <button class="btn btn-sm btn-outline--danger ms-1 confirmationBtn"
                                                    data-question="Are you sure to disable this plan?"
                                                    data-action="https://script.viserlab.com/mlmlab/admin/plan/status/3">
                                                    <i class="la la-eye-slash"></i> Disable
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Silver</td>
                                            <td>1,000.00 USD</td>
                                            <td>100</td>
                                            <td>50.00 USD</td>

                                            <td>0.99 USD</td>
                                            <td>
                                                <span class="badge badge--success">Enabled</span>
                                            </td>

                                            <td>
                                                <button class="btn btn-sm btn-outline--primary edit" data-toggle="tooltip"
                                                    data-id="4" data-name="Silver" data-bv="100" data-price="1000"
                                                    data-ref_com="50" data-tree_com="0.99" data-original-title="Edit"
                                                    type="button">
                                                    <i class="la la-pencil"></i> Edit
                                                </button>

                                                <button class="btn btn-sm btn-outline--danger ms-1 confirmationBtn"
                                                    data-question="Are you sure to disable this plan?"
                                                    data-action="https://script.viserlab.com/mlmlab/admin/plan/status/4">
                                                    <i class="la la-eye-slash"></i> Disable
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Gold</td>
                                            <td>3,000.00 USD</td>
                                            <td>300</td>
                                            <td>150.00 USD</td>

                                            <td>1.50 USD</td>
                                            <td>
                                                <span class="badge badge--success">Enabled</span>
                                            </td>

                                            <td>
                                                <button class="btn btn-sm btn-outline--primary edit" data-toggle="tooltip"
                                                    data-id="5" data-name="Gold" data-bv="300" data-price="3000"
                                                    data-ref_com="150" data-tree_com="1.5" data-original-title="Edit"
                                                    type="button">
                                                    <i class="la la-pencil"></i> Edit
                                                </button>

                                                <button class="btn btn-sm btn-outline--danger ms-1 confirmationBtn"
                                                    data-question="Are you sure to disable this plan?"
                                                    data-action="https://script.viserlab.com/mlmlab/admin/plan/status/5">
                                                    <i class="la la-eye-slash"></i> Disable
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Plutonium</td>
                                            <td>5,000.00 USD</td>
                                            <td>500</td>
                                            <td>250.00 USD</td>

                                            <td>5.50 USD</td>
                                            <td>
                                                <span class="badge badge--success">Enabled</span>
                                            </td>

                                            <td>
                                                <button class="btn btn-sm btn-outline--primary edit" data-toggle="tooltip"
                                                    data-id="6" data-name="Plutonium" data-bv="500" data-price="5000"
                                                    data-ref_com="250" data-tree_com="5.5" data-original-title="Edit"
                                                    type="button">
                                                    <i class="la la-pencil"></i> Edit
                                                </button>

                                                <button class="btn btn-sm btn-outline--danger ms-1 confirmationBtn"
                                                    data-question="Are you sure to disable this plan?"
                                                    data-action="https://script.viserlab.com/mlmlab/admin/plan/status/6">
                                                    <i class="la la-eye-slash"></i> Disable
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- table end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="edit-plan" role="dialog" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Edit Plan</h5>
                            <button class="close" data-bs-dismiss="modal" type="button" aria-label="Close">
                                <i class="las la-times"></i>
                            </button>
                        </div>
                        <form method="post" action="https://script.viserlab.com/mlmlab/admin/plan/save">
                            <input type="hidden" name="_token" value="vPtJBhHCwKmtozFvIoX31HDu9XZFB3GyM9YCwCcK" />
                            <div class="modal-body">
                                <input class="form-control plan_id" name="id" type="hidden" />
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label>Name</label>
                                        <input class="form-control name" name="name" type="text" required />
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label> Price </label>
                                        <div class="input-group">
                                            <span class="input-group-text">$</span>
                                            <input class="form-control price" name="price" type="number" step="any"
                                                required />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Business Volume (BV)</label>
                                    <i class="fas fa-question-circle text--gray" data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="When someone buys this plan, all of his ancestors will get this value which will be used for a matching bonus."></i>
                                    <input class="form-control bv" name="bv" type="number" required />
                                </div>

                                <div class="form-group">
                                    <label>Referral Commission</label>
                                    <i class="fas fa-question-circle text--gray" data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="If a user who subscribed to this plan, refers someone and if the referred user buys a plan, then he will get this amount."></i>
                                    <div class="input-group">
                                        <span class="input-group-text">$</span>
                                        <input class="form-control ref_com" name="ref_com" type="number" step="any"
                                            required />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Tree Commission</label>
                                    <i class="fas fa-question-circle text--gray" data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="When someone buys this plan, all of his ancestors will get this amount."></i>
                                    <div class="input-group">
                                        <span class="input-group-text">$</span>
                                        <input class="form-control tree_com" name="tree_com" type="number" step="any"
                                            required />
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn--primary w-100 h-45" type="submit">
                                    Submit
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="add-plan" role="dialog" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add New plan</h5>
                            <button class="close" data-bs-dismiss="modal" type="button" aria-label="Close">
                                <i class="las la-times"></i>
                            </button>
                        </div>
                        <form method="post" action="https://script.viserlab.com/mlmlab/admin/plan/save">
                            <input type="hidden" name="_token" value="vPtJBhHCwKmtozFvIoX31HDu9XZFB3GyM9YCwCcK" />
                            <div class="modal-body">
                                <input class="form-control plan_id" name="id" type="hidden" />
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label>Name</label>
                                        <input class="form-control" name="name" type="text" required />
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>Price </label>
                                        <div class="input-group">
                                            <span class="input-group-text">$</span>
                                            <input class="form-control" name="price" type="number" step="any" required />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label> Business Volume (BV)</label>
                                    <i class="fas fa-question-circle text--gray" data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="When someone buys this plan, all of his ancestors will get this value which will be used for a matching bonus."></i>
                                    <input class="form-control" name="bv" type="number" required />
                                </div>
                                <div class="form-group">
                                    <label> Referral Commission</label>
                                    <i class="fas fa-question-circle text--gray" data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="If a user who subscribed to this plan, refers someone and if the referred user buys a plan, then he will get this amount."></i>
                                    <div class="input-group">
                                        <span class="input-group-text">$</span>
                                        <input class="form-control" name="ref_com" type="number" step="any" required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label> Tree Commission</label>
                                    <i class="fas fa-question-circle text--gray" data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="When someone buys this plan, all of his ancestors will get this amount."></i>
                                    <div class="input-group">
                                        <span class="input-group-text">$</span>
                                        <input class="form-control" name="tree_com" type="number" step="any" required />
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn--primary w-100 h-45" type="submit">
                                    Submit
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="confirmationModal" role="dialog" tabindex="-1">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Confirmation Alert!</h5>
                            <button class="close" data-bs-dismiss="modal" type="button" aria-label="Close">
                                <i class="las la-times"></i>
                            </button>
                        </div>
                        <form action="" method="POST">
                            <input type="hidden" name="_token" value="vPtJBhHCwKmtozFvIoX31HDu9XZFB3GyM9YCwCcK" />
                            <div class="modal-body">
                                <p class="question"></p>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn--dark" data-bs-dismiss="modal" type="button">
                                    No
                                </button>
                                <button class="btn btn--primary" type="submit">Yes</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- bodywrapper__inner end -->
    </div>
</template>
<script>
export default {

}
</script>
<style lang="">
    
</style>