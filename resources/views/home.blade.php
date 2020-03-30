@extends('layout.app1')


@section('title')
   Branch Location
@endsection




@extends('Layout.Nav')



@section('content')



@if($permission == "1")


<!-- <div style="height:100%; width:90%; display:inline-block; overflow:hidden;margin-left: 75px;"> -->


<!-- 
   <iframe class="custom-google-map" style="position:relative; top:-60px; border:none;" src="https://www.google.com/maps/d/u/2/embed?mid=1U7lxGpoHzTOVmeTk6c0w4KcUoFLq67Tr" width="1080" height="720"></iframe> -->
      <div class="row">

<div class = "col-md-5">

<p style="margin-left: 75px;">HNB Assurance Branch Map</p>

      
   <div style="height:90%; width:90%; display:inline-block; overflow:hidden;margin-left: 75px;">
      <iframe class="custom-google-map" style="position:relative; top:-60px; border:none;" src="https://www.google.com/maps/d/u/2/embed?mid=1U7lxGpoHzTOVmeTk6c0w4KcUoFLq67Tr" width="700" height="500"></iframe>

   </div>

        
</div>

<div class = "col-md-5">

<p style="margin-left: 75px;">HNB General Insurance Branch Map</p>

<div style="height:90%; width:90%; display:inline-block; overflow:hidden;margin-left: 75px;">
      <iframe class="custom-google-map" style="position:relative; top:-60px; border:none;" src="https://www.google.com/maps/d/u/2/embed?mid=1nlOSb5RNKwLrotr2bOr9WPic3gCCZczR" width="700" height="500"></iframe>

         </div>
</div>


</div>



@elseif($permission == "2" && $company == "HNBA")

<p style="margin-left: 250px;">HNB Assurance Branch Map</p>

<div style="height:60%; width:60%; display:inline-block; overflow:hidden;margin-left: 250px;">


   <iframe class="custom-google-map" style="position:relative; top:-60px; border:none;" src="https://www.google.com/maps/d/u/2/embed?mid=1U7lxGpoHzTOVmeTk6c0w4KcUoFLq67Tr" width="720" height="500"></iframe>
      
      
 

</div>

@else

<p style="margin-left: 250px;">HNB General Insurance Branch Map</p>


<div style="height:60%; width:60%; display:inline-block; overflow:hidden;margin-left: 250px;">


<iframe class="custom-google-map" style="position:relative; top:-60px; border:none;" src="https://www.google.com/maps/d/u/2/embed?mid=1nlOSb5RNKwLrotr2bOr9WPic3gCCZczR" width="720" height="500"></iframe>
    
   
    

</div>




@endif








@endsection