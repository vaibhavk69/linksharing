
<div class="card-user p-3">
    <div class="d-flex align-items-center">


        <div class="ml-3 w-100">
            <div class="image">
                <img src="https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80" width="155">
            </div>
            <h4 class="mb-0 mt-0">${resource.createdBy.firstName} ${resource.createdBy.lastName}</h4> <span>Senior Journalist</span>

            <div class="p-2 mt-2  d-flex pull-left rounded  ">
                <div class="d-flex flex-column"><span class="articles">Articles</span> <span class="number1">38</span>
                </div>

                <div class="d-flex flex-column ml-5"><span class="followers">Followers</span> <span
                        class="number2">980</span></div>


            </div>
            <div class="p-2 mt-2 bg-primary d-flex rounded text-white stats form-grou" id="rating-ability-wrapper">

                <input type="hidden" id="selected_rating" name="selected_rating" value="" required="required">


                <button type="button" class="btnrating btn btn-default btn-lg" data-attr="1" id="rating-star-1">
                    <i class="fa fa-star" aria-hidden="true"></i>
                </button>
                <button type="button" class="btnrating btn btn-default btn-lg" data-attr="2" id="rating-star-2">
                    <i class="fa fa-star" aria-hidden="true"></i>
                </button>
                <button type="button" class="btnrating btn btn-default btn-lg" data-attr="3" id="rating-star-3">
                    <i class="fa fa-star" aria-hidden="true"></i>
                </button>
                <button type="button" class="btnrating btn btn-default btn-lg" data-attr="4" id="rating-star-4">
                    <i class="fa fa-star" aria-hidden="true"></i>
                </button>
                <button type="button" class="btnrating btn btn-default btn-lg" data-attr="5" id="rating-star-5">
                    <i class="fa fa-star" aria-hidden="true"></i>
                </button>
            </div>
            <div class="text mt-5">""" ${resource.description}"""
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </div>

        </div>
    </div>
</div>