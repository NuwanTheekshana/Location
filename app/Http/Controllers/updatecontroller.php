<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\sendrequest;
use Auth;
use Mail;

class updatecontroller extends Controller
{
    public function updatebranch(Request $request)
    {

     

        $adminusers = User::where('permission', '1')->pluck('email');


       $list[]= $adminusers;
       $implode = implode(",",$list);

       $fresh_mail_list = str_replace('[', '', $implode);
       $fresh_mail_list = str_replace(']', '', $fresh_mail_list);
       $fresh_mail_list = str_replace('"', '', $fresh_mail_list);

       

      

       

        $id = $request->id;
        $Branch_Name = $request->Bname;
        $Tnumber_1 = $request->T_number_1;
        $Tnumber_2 = $request->T_number_2;
        $Mnumber = $request->Mnumber;
        $Fnumber = $request->Fnumber;
        $Address = $request->Address;
        $Fnumber = $request->Fnumber;
        $Note = $request->Note;
        $Location_Code = $request->Location_Code;
        $image = $request->image;


        if($Note == null)
        {
            $Note = "";
        }
        


        $request->validate([
            'Branch_Name' => 'max:100',
            'T_number_1' => 'numeric|nullable',
            'T_number_2' => 'numeric|nullable',
            'Mnumber' => 'numeric|nullable',
            'Fnumber' => 'numeric|nullable',
        ]);
        

        $imgname = $request->imgname;

        $update_request_by = Auth::user()->name;
        $update_request_company = Auth::user()->company;

       
        if($image != null)
        {
            
            $request->validate([
                'image' => 'image|mimes:jpeg,png,jpg|max:4096',
            ]);

            $img = $request->file('image');
            $new_img_name = rand().'.'.$img->getClientOriginalExtension();
            $img->move(public_path("Image"), $new_img_name);
        }
        else
        {
            $new_img_name = $imgname;
        }


     


        $update_rec = sendrequest::find($id);
        $update_rec->Branch_Name = $Branch_Name;
        $update_rec->T_number_1 = $Tnumber_1;
        $update_rec->T_number_2 = $Tnumber_2;
        $update_rec->M_number = $Mnumber;
        $update_rec->F_number = $Fnumber;
        $update_rec->Address = $Address;
        $update_rec->Note = $Note;
        $update_rec->Location_Code = $Location_Code;
        $update_rec->img = $new_img_name;
        $update_rec->update();





        // send Email
        
        $data = array(
            'Branch_Name'=>$Branch_Name,
            'Tel_No'=>$Tnumber_1,
            'Tel_No_2'=>$Tnumber_2,
            'Mobile_No'=>$Mnumber,
            'Address'=>$Address,
            'Fax_No'=>$Fnumber,
            'Location_Code'=>$Location_Code,
            'Note'=>$Note,
            'Image'=>$new_img_name,
            'request_by'=>$update_request_by,
            'Company'=>$update_request_company,

        );



        

        $adminusers = User::where('permission', '1')->pluck('email');
        $adminuserscount = User::where('permission', '1')->count('email');
        $request_user_email = Auth::user()->email;

        
      


        $list[]= $adminusers;
        $implode = implode(",",$list);

        
 
        $fresh_mail_list = str_replace('[', '', $implode);
        $fresh_mail_list = str_replace(']', '', $fresh_mail_list);
        $fresh_mail_list = str_replace('"', '', $fresh_mail_list);

        $frsh_mail = explode(',', $fresh_mail_list);






        if($image != null)
        {
            $img_path = asset('Image/' . $new_img_name);


            try{
                Mail::send('Mail_Layout.updatelocation', $data, function($message)use($data,$img_path,$frsh_mail,$request_user_email) {
                $message
                ->from('hnbamap@gmail.com', 'Update Branch Location')
                ->to($frsh_mail, 'Update Branch Location')
                ->cc($request_user_email, 'Update Branch Location')
                ->subject('Update Branch Location')
                ->attach($img_path);
        
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
    
        }

        else
        {
            try{
                Mail::send('Mail_Layout.updatelocation', $data, function($message)use($data,$frsh_mail,$request_user_email) {
                    $message
                    ->from('hnbamap@gmail.com', 'Update Branch Location')
                    ->to($frsh_mail, 'Update Branch Location')
                    ->cc($request_user_email, 'Update Branch Location')
                    ->subject('Update Branch Location');
                
        
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
    
        }

    

        return redirect()->back()->with('success', 'Request Send Successfully..!');


        
        
    }


    public function location_delete(Request $request)
    {
        $id=$request->id;
        
        $delete_rec = sendrequest::find($id);
        $delete_rec->delete_status = "1";
        $delete_rec->update();



        $Branch_Name = $delete_rec->Branch_Name;
        $Tel_No_1 = $delete_rec->T_number_1;
        $Tel_No_2 = $delete_rec->T_number_2;
        $Mobile_No = $delete_rec->M_number;
        $Fax_No = $delete_rec->F_number;
        $Address = $delete_rec->Address;
        $Location_Code = $delete_rec->Location_Code;
        $Note = $delete_rec->Note;
        $new_img_name = $delete_rec->new_img_name;
        $request_by = $delete_rec->request_by;
        $Company = $delete_rec->Company;







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
            Mail::send('Mail_Layout.deletebranch', $data, function($message)use($data,$frsh_mail,$request_user_email) {
            $message
            ->from('hnbamap@gmail.com', 'Remove Branch Location Request')
            ->cc($request_user_email, 'Remove Branch Location Request')
            ->subject('Remove Branch Location Request');

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



        

        return redirect()->back()->with('success', 'Brach Location Delete Successfully..!');

    }
}
