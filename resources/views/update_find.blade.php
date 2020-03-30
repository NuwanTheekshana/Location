@extends('layout.app1')


@section('title')
   All Branch Details
@endsection


@extends('Layout.Nav')

@section('content')


<p style="margin-left: 10px;">All Branch Details 
( 
   
   @if(Auth::user()->company == "HNBA" && Auth::user()->permission != "1")

      HNB Assurance PLC

   @elseif(Auth::user()->company == "HNBGI" && Auth::user()->permission != "1")

   HNB General Insurance LTD


   @else

   Admin User

   @endif

 )</p>


<style>

.dataTables_filter
{
   margin-left: 350px;
}

.pagination
{
   margin-left: 450px;
}







.project-tab {
    padding: 10%;
    margin-top: -8%;
}
.project-tab #tabs{
    background: #007b5e;
    color: #eee;
}
.project-tab #tabs h6.section-title{
    color: #eee;
}
.project-tab #tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
    color: #0062cc;
    background-color: transparent;
    border-color: transparent transparent #f3f3f3;
    border-bottom: 3px solid !important;
    font-size: 16px;
    font-weight: bold;
}
.project-tab .nav-link {
    border: 1px solid transparent;
    border-top-left-radius: .25rem;
    border-top-right-radius: .25rem;
    color: #0062cc;
    font-size: 16px;
    font-weight: 600;
}
.project-tab .nav-link:hover {
    border: none;
}
.project-tab thead{
    background: #f3f3f3;
    color: #333;
}
.project-tab a{
    text-decoration: none;
    color: #333;
    font-weight: 600;
}






</style>

@if(Auth::user()->permission == "1")


<nav>
        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
            <a class="nav-item nav-link active" id="nav-hnba-tab" data-toggle="tab" href="#nav-hnba" role="tab" aria-controls="nav-hnba" aria-selected="true">HNB Assurance PLC</a>
            <a class="nav-item nav-link" id="nav-hnbgi-tab" data-toggle="tab" href="#nav-hnbgi" role="tab" aria-controls="nav-hnbgi" aria-selected="false">HNB General Insurance</a>
         
        </div>
</nav>



  <div class="tab-content" id="nav-tabContent">
      <div class="tab-pane fade show active" id="nav-hnba" role="tabpanel" aria-labelledby="nav-hnba-tab">





 <div class="card">
  <div class="card-body">





  <table id="all_branch_data_hnba" class="table table-striped table-bordered" style="width:150%">
        <thead>
            <tr>
                <th width="10%">Branch Name</th>
                <th width="20%">Address</th>
                <th width="15%">Tel. No 1</th>
                <th width="15%">Tel. No 2</th>
                <th width="15%">Mobile No</th>
                <th width="15%">Fax No</th>
                <th width="20%">Action</th>
            </tr>
        </thead>
        <tbody>

        @foreach($branch_data_hnba as $data)
            <tr>
                <td>{{ $data->Branch_Name }}</td>
                <td>{{ $data->Address }}</td>
                <td>{{ $data->T_number_1 }}</td>
                <td>{{ $data->T_number_2 }}</td>
                <td>{{ $data->M_number }}</td>
                <td>{{ $data->F_number }}</td>
                
                <td>
                
                <button class="btn btn-success"><i class="fa fa-edit" aria-hidden="true" data-toggle="modal" data-target="#update{{ $data->id }}"></i></button>
                <button class = "btn btn-danger"><i class="fa fa-trash" aria-hidden="true" data-toggle="modal" data-target="#delete{{ $data->id }}"></i></button>
                </td>
            </tr>







<!--Delete Modal -->
<div id="delete{{ $data->id }}" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Delete Popup</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
       
       <form action="{{ url('/location_delete') }}" method = "GET">
       @csrf

        <p>Are you sure you want to delete this location?</p>
        <input type="hidden" value="{{ $data->id }}" name="id">

        <button type="submit" class="btn btn-danger pull-right">Delete Branch</button>
        <button type="button" class="btn btn-default pull-right"  style="margin-right: 20px;" data-dismiss="modal">Close</button>
          

        </form>


      </div>
      
    </div>

  </div>
</div>











<!-- Modal -->
<div class="modal fade" id="update{{ $data->id }}" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Update Location</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
      </div>
      <div class="modal-body">
        
      <form action="{{ url('/updatebranch') }}" method = "POST" enctype="multipart/form-data">
      @csrf

      <input type="hidden" name ="id" value = "{{ $data->id }}">
  <div class="form-group row">
    <label for="Bname" class="col-sm-6 col-form-label">Branch Name</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Bname" name="Bname" aria-describedby="Bname" value="{{ $data->Branch_Name }}">
    </div>
  </div>
  <div class="form-group row">
    <label for="Tnumber" class="col-sm-6 col-form-label">Telphone No. 1</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="T_number_1" name="T_number_1" value="{{ $data->T_number_1 }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Tnumber" class="col-sm-6 col-form-label">Telphone No. 2</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="T_number_2" name="T_number_2" value="{{ $data->T_number_2 }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Mnumber" class="col-sm-6 col-form-label">Mobile No</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Mnumber" name="Mnumber" value="{{ $data->M_number }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Fnumber" class="col-sm-6 col-form-label">Fax No</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Fnumber" name="Fnumber" value="{{ $data->F_number }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Address" class="col-sm-6 col-form-label">Address</label>
   <div class="col-sm-6">
    <textarea name="Address" id="Address" class="form-control" name="Address" cols="30" rows="3">{{ $data->Address }}</textarea>
   </div>
  </div>

  <div class="form-group row">
    <label for="Location_Code" class="col-sm-6 col-form-label">Geo Location Code</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Location_Code" name="Location_Code" value="{{ $data->Location_Code }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Note" class="col-sm-6 col-form-label">Special Note</label>
   <div class="col-sm-6">
    <textarea name="Note" id="Note" class="form-control" name="Note" cols="30" rows="3">{{ $data->Note }}</textarea>
   </div>
  </div>
 
  
  <div class="form-group row">
  <label for="image" class="col-sm-6 col-form-label">Images</label>
    <div class="col-sm-6">
    <input type="file" class="form-control" name= "image" id="attachment">
    <input type="hidden" name = "imgname" value="{{ $data->img }}">
    </div>
  </div>








      </div>
      <div class="modal-footer">
      <button type="submit" class="btn btn-success">Update Location</button>
      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
</form>
        
      </div>
    </div>
    
  </div>
</div>








         @endforeach   
            </tbody>
    </table>










  

    
    </div>
</div>


</div>
 




<div class="tab-pane fade" id="nav-hnbgi" role="tabpanel" aria-labelledby="nav-hnbgi-tab">

<div class="card">
  <div class="card-body">




  <table id="all_branch_data_hnbgi" class="table table-striped table-bordered" style="width:150%">
        <thead>
            <tr>
                <th width="10%">Branch Name</th>
                <th width="10%">Address</th>
                <th width="10%">Tel. No 1</th>
                <th width="10%">Tel. No 2</th>
                <th width="15%">Mobile No</th>
                <th width="15%">Fax No</th>
                <th width="20%">Action</th>
            </tr>
        </thead>
        <tbody>

        @foreach($branch_data_hnbgi as $branchdatagi)
            <tr>
                <td width="10%">{{ $branchdatagi->Branch_Name }}</td>
                <td width="20%">{{ $branchdatagi->Address }}</td>
                <td width="15%">{{ $branchdatagi->T_number_1 }}</td>
                <td width="15%">{{ $branchdatagi->T_number_2 }}</td>
                <td width="15%">{{ $branchdatagi->M_number }}</td>
                <td width="15%">{{ $branchdatagi->F_number }}</td>
                
                <td width="20%">
                
                <button class="btn btn-success"><i class="fa fa-edit" aria-hidden="true" data-toggle="modal" data-target="#update{{ $branchdatagi->id }}"></i></button>
                <button class = "btn btn-danger"><i class="fa fa-trash" aria-hidden="true" data-toggle="modal" data-target="#delete{{ $branchdatagi->id }}"></i></button>
                </td>
            </tr>







<!--Delete Modal -->
<div id="delete{{ $branchdatagi->id }}" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Delete Pop</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>

      <div class="modal-body">

      <form action="{{ url('/location_delete') }}" method = "GET">
       @csrf

        <p>Are you sure you want to delete this location?</p>
        <input type="hidden" value="{{ $branchdatagi->id }}" name="id">

        <button type="submit" class="btn btn-danger pull-right">Delete Branch</button>
        <button type="button" class="btn btn-default pull-right"  style="margin-right: 20px;" data-dismiss="modal">Close</button>
          

        </form>
      
    </div>

  </div>
</div>

</div>




<!-- Modal -->
<div class="modal fade" id="update{{ $branchdatagi->id }}" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Update Location</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
      </div>
      <div class="modal-body">
        
      <form action="{{ url('/updatebranch') }}" method = "POST" enctype="multipart/form-data">
      @csrf

      <input type="hidden" name ="id" value = "{{ $branchdatagi->id }}">
  <div class="form-group row">
    <label for="Bname" class="col-sm-6 col-form-label">Branch Name</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Bname" name="Bname" aria-describedby="Bname" value="{{ $branchdatagi->Branch_Name }}">
    </div>
  </div>
  <div class="form-group row">
    <label for="Tnumber" class="col-sm-6 col-form-label">Telphone No. 1</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Tnumber" name="T_number_1" value="{{ $branchdatagi->T_number_1 }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Tnumber" class="col-sm-6 col-form-label">Telphone No. 2</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Tnumber" name="T_number_2" value="{{ $branchdatagi->T_number_2 }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Mnumber" class="col-sm-6 col-form-label">Mobile No</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Mnumber" name="Mnumber" value="{{ $branchdatagi->M_number }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Fnumber" class="col-sm-6 col-form-label">Fax No</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Fnumber" name="Fnumber" value="{{ $branchdatagi->F_number }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Address" class="col-sm-6 col-form-label">Address</label>
   <div class="col-sm-6">
    <textarea name="Address" id="Address" class="form-control" name="Address" cols="30" rows="3">{{ $branchdatagi->Address }}</textarea>
   </div>
  </div>

  <div class="form-group row">
    <label for="Location_Code" class="col-sm-6 col-form-label">Geo Location Code</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Location_Code" name="Location_Code" value="{{ $branchdatagi->Location_Code }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Note" class="col-sm-6 col-form-label">Special Note</label>
   <div class="col-sm-6">
    <textarea name="Note" id="Note" class="form-control" name="Note" cols="30" rows="3">{{ $branchdatagi->Note }}</textarea>
   </div>
  </div>
 
  
  <div class="form-group row">
  <label for="image" class="col-sm-6 col-form-label">Images</label>
    <div class="col-sm-6">
    <input type="file" class="form-control" name= "image" id="attachment">
    <input type="hidden" name = "imgname" value="{{ $branchdatagi->img }}">
    </div>
  </div>








      </div>
      <div class="modal-footer">
      <button type="submit" class="btn btn-success">Update Location</button>
      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
</form>
        
      </div>
    </div>
    
  </div>
</div>








         @endforeach   
            </tbody>
    </table>




  

    
    </div>
</div>






</div>



</div>



@else


<div class="card">
  <div class="card-body">




  <table id="all_branch_data" class="table table-striped table-bordered" style="width:150%">
        <thead>
            <tr>
                <th width="10%">Branch Name</th>
                <th width="10%">Address</th>
                <th width="10%">Tel. No 1</th>
                <th width="10%">Tel. No 2</th>
                <th width="15%">Mobile No</th>
                <th width="15%">Fax No</th>
                <th width="20%">Action</th>
            </tr>
        </thead>
        <tbody>

        @foreach($branch_data as $data)
            <tr>
                <td width="10%">{{ $data->Branch_Name }}</td>
                <td width="20%">{{ $data->Address }}</td>
                <td width="15%">{{ $data->T_number_1 }}</td>
                <td width="15%">{{ $data->T_number_2 }}</td>
                <td width="15%">{{ $data->M_number }}</td>
                <td width="15%">{{ $data->F_number }}</td>
                
                <td width="20%">
                
                <button class="btn btn-success"><i class="fa fa-edit" aria-hidden="true" data-toggle="modal" data-target="#{{ $data->id }}"></i></button>
                <button class = "btn btn-danger"><i class="fa fa-trash" aria-hidden="true" data-toggle="modal" data-target="#delete{{ $data->id }}"></i></button>
                </td>
            </tr>








<!--Delete Modal -->
<div id="delete{{ $data->id }}" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Delete Pop</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
      
      <form action="{{ url('/location_delete') }}" method = "GET">
       @csrf

        <p>Are you sure you want to delete this location?</p>
        <input type="hidden" value="{{ $data->id }}" name="id">

        <button type="submit" class="btn btn-danger pull-right">Delete Branch</button>
        <button type="button" class="btn btn-default pull-right"  style="margin-right: 20px;" data-dismiss="modal">Close</button>
          

        </form>

      </div>
     
    </div>

  </div>
</div>









<!-- Modal -->
<div class="modal fade" id="{{ $data->id }}" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <h4 class="modal-title">Update Location</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
      </div>
      <div class="modal-body">
        
      <form action="{{ url('/updatebranch') }}" method = "POST" enctype="multipart/form-data">
      @csrf

      <input type="hidden" name ="id" value = "{{ $data->id }}">
  <div class="form-group row">
    <label for="Bname" class="col-sm-6 col-form-label">Branch Name</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Bname" name="Bname" aria-describedby="Bname" value="{{ $data->Branch_Name }}">
    </div>
  </div>
  <div class="form-group row">
    <label for="Tnumber" class="col-sm-6 col-form-label">Telphone No. 1</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Tnumber" name="T_number_1" value="{{ $data->T_number_1 }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Tnumber" class="col-sm-6 col-form-label">Telphone No. 2</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Tnumber" name="T_number_2" value="{{ $data->T_number_2 }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Mnumber" class="col-sm-6 col-form-label">Mobile No</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Mnumber" name="Mnumber" value="{{ $data->M_number }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Fnumber" class="col-sm-6 col-form-label">Fax No</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Fnumber" name="Fnumber" value="{{ $data->F_number }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Address" class="col-sm-6 col-form-label">Address</label>
   <div class="col-sm-6">
    <textarea name="Address" id="Address" class="form-control" name="Address" cols="30" rows="3">{{ $data->Address }}</textarea>
   </div>
  </div>

  <div class="form-group row">
    <label for="Location_Code" class="col-sm-6 col-form-label">Geo Location Code</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="Location_Code" name="Location_Code" value="{{ $data->Location_Code }}">
    </div>
  </div>

  <div class="form-group row">
    <label for="Note" class="col-sm-6 col-form-label">Special Note</label>
   <div class="col-sm-6">
    <textarea name="Note" id="Note" class="form-control" name="Note" cols="30" rows="3">{{ $data->Note }}</textarea>
   </div>
  </div>
 
  
  <div class="form-group row">
  <label for="image" class="col-sm-6 col-form-label">Images</label>
    <div class="col-sm-6">
    <input type="file" class="form-control" name= "image" id="attachment">
    <input type="hidden" name = "imgname" value="{{ $data->img }}">
    </div>
  </div>








      </div>
      <div class="modal-footer">
      <button type="submit" class="btn btn-success">Update Location</button>
      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
</form>
        
      </div>
    </div>
    
  </div>
</div>








         @endforeach   
            </tbody>
    </table>




  

    
    </div>
</div>







@endif




@endsection