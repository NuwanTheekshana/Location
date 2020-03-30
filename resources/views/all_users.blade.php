@extends('layout.app1')


@section('title')
   All Users Details

  
@endsection


@extends('Layout.Nav')

@section('content')




<p style="margin-left: 75px;">All User Details </p>



<div class="card">
  <div class="card-body">

 <table id="all_user_data" class="table table-striped table-bordered hover" style="width:150%;">
        <thead>
            <tr>
                <th width="10%">EPF No</th>
                <th width="15%">Name</th>
                <th width="10%">User Name</th>
                <th width="10%">Email</th>
                <th width="10%">Company</th>
                <th width="10%">Department</th>
                <th width="10%">Permission</th>
                <th width="20%">Action</th>
            </tr>
        </thead>
        <tbody>

        @foreach($userdetails as $user)
            <tr>
                <td width="10%">{{ $user->epf_No }}</td>
                <td width="10%">{{ $user->name }}</td>
                <td width="10%">{{ $user->username }}</td>
                <td width="10%">{{ $user->email }}</td>
                <td width="5%">{{ $user->company }}</td>
                <td width="10%">
                
                @if($user->department == "ITD")

                     IT

                @elseif($user->department == "MKTD")

                     Markerting

                @endif
                
              
                </td>
                <td width="10%">
                
                @if($user->permission == "1")
                
                  Admin User
                
                @elseif($user->permission == "2")

                  Defult User

               @endif
               </td>
                <td width="40%">
                <button class="btn btn-success" title="Update User"><i class="fa fa-edit" aria-hidden="true" data-toggle="modal" data-target="#{{ $user->id }}"></i></button>
                <button class = "btn btn-warning" title="Change Password"><i class="fa fa-key" aria-hidden="true" data-toggle="modal" data-target="#change_password{{ $user->id }}"></i></button>
                <button class = "btn btn-danger" title="Delete User"><i class="fa fa-trash" aria-hidden="true" data-toggle="modal" data-target="#delete{{ $user->id }}"></i></button>
                </td>
            </tr>




<!--Delete Modal -->
<div id="delete{{ $user->id }}" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Delete Pop</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
      
      <form action="{{ url('/user_delete') }}" method = "GET">
       @csrf

        <p>Are you sure you want to delete this location?</p>
        <input type="hidden" value="{{ $user->id }}" name="id">

        <button type="submit" class="btn btn-danger pull-right">Delete Branch</button>
        <button type="button" class="btn btn-default pull-right"  style="margin-right: 20px;" data-dismiss="modal">Close</button>
          

        </form>

      </div>
     
    </div>

  </div>
</div>





<!--Delete Modal -->
<div id="delete{{ $user->id }}" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Delete Pop</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
      
      <form action="{{ url('/user_delete') }}" method = "GET">
       @csrf

        <p>Are you sure you want to delete this location?</p>
        <input type="hidden" value="{{ $user->id }}" name="id">

        <button type="submit" class="btn btn-danger pull-right">Delete Branch</button>
        <button type="button" class="btn btn-default pull-right"  style="margin-right: 20px;" data-dismiss="modal">Close</button>
          

        </form>

      </div>
     
    </div>

  </div>
</div>




<!--Change Password Modal -->
<div id="change_password{{ $user->id }}" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Update Password</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
      
      <form action="{{ url('/user_change_password') }}" method = "GET">
       @csrf

        <input type="hidden" name="id" value="{{ $user->id }}">

        
  <div class="form-group row">
    <label for="N_password" class="col-sm-5 col-form-label">New Password</label>
    <div class="col-sm-7">
    <input type="password" class="form-control" id="N_password" min="8" max="30" name="N_password" value="" required>
    </div>
  </div>

  
  <div class="form-group row">
    <label for="C_Password" class="col-sm-5 col-form-label">Confirm Password</label>
    <div class="col-sm-7">
    <input type="password" class="form-control" id="C_Password" min="8" max="30" name="C_Password" value="" required>
    </div>
  </div>

        <button type="button" class="btn btn-default pull-right"  style="margin-left: 20px;" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary pull-right">Change Password</button>
        
          

        </form>

      </div>
     
    </div>

  </div>
</div>












<!-- Modal -->
<div class="modal fade" id="{{ $user->id }}" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Update Location</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
      </div>
      <div class="modal-body">

      <form action="{{ url('/updateusers') }}" method = "POST" enctype="multipart/form-data" id = "updateuserform" onsubmit="return submitvali()">
        
      <!-- <form action="{{ url('/updatebranch') }}" method = "POST" enctype="multipart/form-data" id="updateuserform"> -->
      @csrf

      <input type="hidden" name ="id" value = "{{ $user->id }}">
  <div class="form-group row">
    <label for="epf_No" class="col-sm-4 col-form-label">EPF No</label>
    <div class="col-sm-8">
    <input type="text" class="form-control" id="epf_no" name="epf_no" aria-describedby="epf_No" value="{{ $user->epf_No }}">
    </div>
  </div>
  <div class="form-group row">
    <label for="name" class="col-sm-4 col-form-label">Name</label>
    <div class="col-sm-8">
    <input type="text" class="form-control" id="name" name="name" value="{{ $user->name }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="company" class="col-sm-4 col-form-label">Company</label>
   

                            <div class="col-md-8">

                                <select id="company" class="form-control @error('company') is-invalid @enderror" name="company">
                          <option value="
                          
                          @if($user->company == "HNBA")

                                    HNBA

                                    @else

                                    HNBGI

                                    @endif  ">
                                    
                                    @if($user->company == "HNBA")

                                            HNB Assurance PLC

                                    
                                    @else

                                            HNB General Insurance Ltd.

                                    @endif
                                    
                            </option>
                                     <option value="HNBA">HNB Assurance PLC</option>
                                     <option value="HNBGI">HNB General Insurance Ltd.</option>
                                </select>
                               
                            </div>



  </div>


  <div class="form-group row">
    <label for="department" class="col-sm-4 col-form-label">Department</label>
    
    <div class="col-md-8">

<select id="department" class="form-control @error('department') is-invalid @enderror" name="department">
<option value="

@if($user->department == "ITD")

    ITD

    @else

    MKTD

    @endif  ">
    
    @if($user->department == "ITD")

            IT Department

    
    @else

            Marketing Department

    @endif
    
</option>
<option value="ITD">IT Department</option>
<option value="MKTD">Marketing Department</option>
</select>

</div>







  </div>












  <div class="form-group row">
    <label for="email" class="col-sm-4 col-form-label">Email</label>
    <div class="col-sm-8">
    <input type="text" class="form-control" id="email" name="email" value="{{ $user->email }}">
    </div>
  </div>

  <div class="form-group row">
          <label for="permission" class="col-md-4 col-form-label">Permission</label>

                            <div class="col-md-8">

                                <select id="permission" class="form-control @error('permission') is-invalid @enderror" name="permission">
                          <option value="
                          
                          @if($user->permission == "1")

                                          1

                                    
                                    @else

                                    2

                                    @endif
                          
                          
                          ">
                                    
                                    @if($user->permission == "1")

                                            Admin User

                                    
                                    @else

                                    Default User

                                    @endif
                                    
                            </option>
                                     <option value="1">Admin User</option>
                                     <option value="2">Default User</option>
                                </select>
                               
                            </div>
                        </div>
 
  






      </div>
      <div class="modal-footer">
      <button type="submit" id="submit" class="btn btn-success">Update User Details</button>
      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
</form>



<script>

function submitvali()
{

var epf_no = $("#epf_no").val();
var name = $("#name").val();
var company = $("#company").val();
var department = $("#department").val();
var email = $("#email").val();
var permission = $("#permission").val();



var dataString = 'epf_no='+ epf_no + '&name='+ name + '&company='+ company + '&department='+ department + '&email='+ email + '&permission='+ permission;
if(epf_no==''|| name==''||company==''||department==''||email=='' ||permission=='')
{
  
  
$.bootstrapGrowl('<span class = "fas fa-info-circle"></span>&nbsp;&nbsp;&nbsp;Warning&nbsp;!&nbsp;All Fields are Required..',
{
    type: 'danger',
    width: 500,
    delay: 5000,  

});

return false;
  
}

var atpos = email.indexOf("@");
var dotpos = email.lastIndexOf(".");

if(atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
{
  
  
$.bootstrapGrowl('<span class = "fas fa-info-circle"></span>&nbsp;&nbsp;&nbsp;Warning&nbsp;!&nbsp;Invalid Email Address..',
{
    type: 'danger',
    width: 500,
    delay: 5000,  

});

return false;
  
}



};

</script>





        
      </div>
    </div>
    
  </div>
</div>





            @endforeach   
            </tbody>
    </table>











@endsection