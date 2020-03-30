<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\sendrequest;
use App\User;
use Mail;
use Auth;

class requestcontroller extends Controller
{
    
    public function sendrequest(Request $request)
    {


        $Branch_Name = $request->Branch_Name;
        $Tel_No_1 = $request->Tnumber_1;
        $Tel_No_2 = $request->Tnumber_2;
        $Mobile_No = $request->Mnumber;
        $Fax_No = $request->Fnumber;
        $Address = $request->Address;
        $Location_Code = $request->Location_Code;
        $Note = $request->AddrNoteess;
        $Image = $request->image;
        $request_by = Auth::user()->name;
        $Company = Auth::user()->company;

      
        $errors = [
            'Branch_Name.required' => 'Branch Name is Required.',
            'Branch_Name.unique' => 'The Branch Name has already been taken.',
            'Location_Code.required' => 'Location Code is Required.',
            'Location_Code.unique' => 'The Location Code has already been taken.',      
            'Tel_No_1.numeric' => 'Tel. No Must be a number.',
            'Tel_No_1.min' => 'The Tel. No must be at least 10.',
            'Tel_No_2.numeric' => 'Tel. No Must be a number.',
            'Tel_No_2.min' => 'The Tel. No must be at least 10.',
            'Mnumber.numeric' => 'Mobile No Must be a number.',
            'Mnumber.min' => 'The Mobile No must be at least 10.',
            'Fnumber.numeric' => 'Fax No Must be a number.',
            'Fnumber.min' => 'The Fax No must be at least 10.',
            'image.mimes' => 'The Image must be a file of type: jpeg, png, jpg.',
            'image.image' => 'The Image must be an image.',
            'image.max' => 'The Image may not be greater than 4MB.',
          ];



        $request->validate([
             'Branch_Name' => 'required|max:100|unique:sendrequests',
             'Tel_No_1' => 'numeric|nullable|min:10',
             'Tel_No_2' => 'numeric|nullable|min:10',
             'Mnumber' => 'numeric|nullable|min:10',
             'Fnumber' => 'numeric|nullable|min:10',
             'Location_Code' => 'required|unique:sendrequests',
             'image' => 'image|mimes:jpeg,png,jpg|max:4096',
        ],$errors);


        








            if($Mobile_No == null)
            {
                $Mobile_No = "0";
            }
            if($Tel_No_1 == null)
            {
                $Tel_No_1 = "0";
            }
            if($Tel_No_2 == null)
            {
                $Tel_No_2 = "0";
            }
            if($Fax_No == null)
            {
                $Fax_No = "0";
            }
            if($Note == null)
            {
                $Note = "-";
            }

          

            $img = $request->file('image');


            
            $new_img_name = rand().'.'.$img->getClientOriginalExtension();
            $img->move(public_path("Image"), $new_img_name);
        
        
        $request_data = new sendrequest();
        
        $request_data->Branch_Name = $Branch_Name;
        $request_data->T_number_1 = $Tel_No_1;
        $request_data->T_number_2 = $Tel_No_2;
        $request_data->M_number = $Mobile_No;
        $request_data->F_number = $Fax_No;
        $request_data->Address = $Address;
        $request_data->Location_Code = $Location_Code;
        $request_data->Note = $Note;
        $request_data->img = $new_img_name;
        $request_data->request_by = $request_by;
        $request_data->Company = $Company;
        $request_data->delete_status = "0";
        $request_data->save();

        
        
        

        $data = array(
                'Branch_Name'=>$Branch_Name,
                'Tel_No'=>$Tel_No_1,
                'Tel_No_2'=>$Tel_No_2,
                'Mobile_No'=>$Mobile_No,
                'Fax_No'=>$Fax_No,
                'Address'=>$Address,
                'Location_Code'=>$Location_Code,
                'Note'=>$Note,
                'Image'=>$new_img_name,
                'request_by'=>$request_by,
                'Company'=>$Company,

            );


        $img_path = asset('Image/' . $new_img_name);




        $adminusers = User::where('permission', '1')->pluck('email');
        $adminuserscount = User::where('permission', '1')->count('email');
        $request_user_email = Auth::user()->email;

        
      


        $list[]= $adminusers;
        $implode = implode(",",$list);

        
 
        $fresh_mail_list = str_replace('[', '', $implode);
        $fresh_mail_list = str_replace(']', '', $fresh_mail_list);
        $fresh_mail_list = str_replace('"', '', $fresh_mail_list);

        $frsh_mail = explode(',', $fresh_mail_list);

        
        // $emails = array('Nuwan.athukorala@hnbassurance.com', 'nuwanthikshana@gmail.com');
        // $emails2 = array($implode);


            try{
                Mail::send('Mail_Layout.sendrequest', $data, function($message)use($data,$img_path,$frsh_mail,$request_user_email) {
                $message
                ->from('hnbamap@gmail.com', 'New Branch Location Request')
                ->cc($request_user_email, 'New Branch Location Request')
                ->subject('New Branch Location Request')
                ->attach($img_path);

                foreach ($frsh_mail as $email) {
                    $message->to($email);
                }
                
                });
    
            }catch(JWTException $exception){
                $this->serverstatuscode = "0";
                $this->serverstatusdes = $exception->getMessage();
            }
            if (Mail::failures()) {
                 $this->statusdesc  =   "Error sending mail";
                 $this->statuscode  =   "0";
    
            }else{
    
               $this->statusdesc  =   "Message sent Succesfully";
               $this->statuscode  =   "1";
            }


            
            return redirect('newbranch')->with('success', 'Request Send Successfully..!');
            
        








    }




}
