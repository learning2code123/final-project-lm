Rails.application.routes.draw do

 # Routes for the Looks resource:

  # CREATE
  get("/insert_looks", { :controller => "looks", :action => "create" })
          
  # READ
  get("/looks", { :controller => "looks", :action => "index" })
  
  #get("/looks/:path_id", { :controller => "looks", :action => "show" })
  
  # UPDATE
  
  #post("/modify_look/:path_id", { :controller => "looks", :action => "update" })
  
  # DELETE
  #get("/delete_look/:path_id", { :controller => "looks", :action => "destroy" })

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  post("/insert_garment", { :controller => "photos", :action => "create" })
          
  # READ
  get("/garments", { :controller => "photos", :action => "index" })
  
  get("/garments/:path_id", { :controller => "photos", :action => "show" })
  
  # UPDATE
  
  post("/modify_garment/:path_id", { :controller => "photos", :action => "update" })

  get("/modify_garment_color/:path_id", { :controller => "photos", :action => "updated_color" })
  
  # DELETE
  get("/delete_garment/:path_id", { :controller => "photos", :action => "destroy" })

  #------------------------------

  #HOMEPAGE

  get("/", { :controller => "user_authentication", :action => "sign_in_form" })

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
