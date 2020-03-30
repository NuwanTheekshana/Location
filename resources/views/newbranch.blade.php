@extends('layout.app1')




@section('title')
   Branch Location
@endsection


@section('content')


@extends('Layout.Nav')


<p style="margin-left: 75px;">Update New Branch Details</p>


<div class="card" style="width:50%;margin-left: 75px;">
  <div class="card-body">

<!-- 
  @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
    -->





  <form action="{{ url('/sendrequest') }}" method = "POST" enctype="multipart/form-data">
  @csrf
  <div class="form-group row">
    <label for="Branch_Name" class="col-sm-4 col-form-label">Branch Name</label>
    <div class="col-sm-6">
      <input type="Branch_Name" class="form-control @error('Branch_Name') is-invalid @enderror" name="Branch_Name" id="Branch_Name" value="{{ old('Branch_Name') }}" placeholder="" required>
    </div>
  </div>
  <div class="form-group row">
    <label for="Tnumber_1" class="col-sm-4 col-form-label">Telphone No 1</label>
    <div class="col-sm-6">
      <input type="text" class="form-control @error('Tnumber_1') is-invalid @enderror" name = "Tnumber_1" id="Tnumber_1" value="{{ old('Tnumber_1') }}" placeholder="">
      
    </div>
  </div>

  <div class="form-group row">
    <label for="Tnumber_2" class="col-sm-4 col-form-label">Telphone No 2</label>
    <div class="col-sm-6">
      <input type="text" class="form-control @error('Tnumber_2') is-invalid @enderror" name = "Tnumber_2" id="Tnumber_2" value="{{ old('Tnumber_2') }}" placeholder="">
      
    </div>
  </div>

  <div class="form-group row">
    <label for="Mnumber" class="col-sm-4 col-form-label">Mobile No</label>
    <div class="col-sm-6">
      <input type="text" class="form-control @error('Mnumber') is-invalid @enderror" name = "Mnumber" id="Mnumber" value="{{ old('Mnumber') }}" placeholder="">
      
    </div>
  </div>

  <div class="form-group row">
    <label for="Fnumber" class="col-sm-4 col-form-label">Fax No</label>
    <div class="col-sm-6">
      <input type="text" class="form-control @error('Fnumber') is-invalid @enderror" name = "Fnumber" id="Fnumber" value="{{ old('Fnumber') }}" placeholder="">
      
    </div>
  </div>


  <div class="form-group row">
    <label for="Address" class="col-sm-4 col-form-label">Address</label>
    <div class="col-sm-6">
      <!-- <input type="text" class="form-control" name = "Address" id="Address" placeholder="" required> -->
      <textarea class="form-control @error('Address') is-invalid @enderror" name="Address" id="Address" cols="30" rows="3" required>{{ old('Address') }}</textarea>
      
    </div>
  </div>

  
  

  <div class="form-group row">
    <label for="Location_Code" class="col-sm-4 col-form-label">Geo Location Code</label>
    <div class="col-sm-6">
      <input type="text" class="form-control @error('Location_Code') is-invalid @enderror" name = "Location_Code" id="Location_Code" value="{{ old('Location_Code') }}" placeholder="" required>
    </div>
  </div>

  <div class="form-group row">
    <label for="Note" class="col-sm-4 col-form-label">Note</label>
    <div class="col-sm-6">
      <!-- <input type="text" class="form-control" name = "Address" id="Address" placeholder="" required> -->
      <textarea class="form-control @error('Address') is-invalid @enderror" name="AddrNoteess" id="Note" cols="30" rows="3">{{ old('Note') }}</textarea>
      
    </div>
  </div>
  
  
  
  <div class="form-group row">
  <label for="image" class="col-sm-4 col-form-label">Images</label>
    <div class="col-sm-6">
    <input type="file" class="form-control @error('image') is-invalid @enderror" name= "image" id="attachment" required>
    </div>
  </div>



  <div class="form-group row">
    <div class="col-sm-6">
      <button type="submit" class="btn btn-primary">Send Request</button>
    </div>
  </div>
</form>










  </div>
</div>








@endsection