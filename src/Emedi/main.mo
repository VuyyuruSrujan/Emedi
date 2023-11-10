import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Prim "mo:prim";
import Principal "mo:base/Principal";
import RBTree "mo:base/RBTree";
import Bool "mo:base/Bool";
import Text "mo:base/Text";

actor{
 
type UserDetails = {
    Shopname: Text;
    username: Text;
    Email: Text;
    phonenumber: Nat; // Use Nat for phone number
    password: Text;
    Fullname: Text;
    City: Text;
    Streetadd: Text;
    State: Text;
    loc:Text;
    postalcode:Text;
    sname:Text;
    mail:Text;
    ph: Nat;
    Medicinename:Text;
    Medicinecost:Nat;
    

};

 let myDictionary = RBTree.RBTree<Principal, UserDetails>(Principal.compare);

//registration form


 public shared (msg) func pushRegDetails(Shopnam:Text,usernm:Text,mailid:Text,phno:Nat,passw:Text) : async Bool{
    if(myDictionary.get(msg.caller)==null){
      var user :UserDetails={Shopname= Shopnam ;username=usernm ; Email = mailid ; phonenumber = phno ;password = passw;
        Streetadd="";State="";City="";Fullname="";loc="";postalcode="";sname="";
        mail="";ph=0;Medicinename="";Medicinecost=0;};
      myDictionary.put(msg.caller,user);
      return true;
    }else{
      return false;
    }
  };

  //to call from frontend

 public shared query (msg) func getMyRegDetails() : async Bool{
    var res = myDictionary.get(msg.caller);
    if(res==null){
      return false;
    }else{
      return true;
    }
  };

 

  //to delete the values of regform

   public shared (msg) func deleteRegDetails() : async Bool{
    var res = myDictionary.get(msg.caller);
    if(res!=null){
      myDictionary.delete(msg.caller);
      return true;
    }else{
      return false;
    }
  };

  //ToUpdate detailes          

 public shared (msg) func pushMoreDetails(Shopname:Text,usernme:Text,phonenumber:Nat,city:Text,Sadd: Text,state: Text,location:Text,postal:Text) : async Bool{
    if(myDictionary.get(msg.caller)==null){
      var user :UserDetails={sname= Shopname; Fullname=usernme;ph=phonenumber;City=city ;Streetadd=Sadd;
      State=state; 
      loc=location; 
      postalcode=postal;
      Shopname="" ;
      username="" ;
      Email = "" ;
      phonenumber =0;
      password="";
      mail="";
      Medicinename="";
      Medicinecost=0;};
      myDictionary.put(msg.caller,user);
      return true;
    }else{
      return false;
    }
  };

   //to call from frontend

 public shared query (msg) func getMyMoreDetails() : async Bool{
    var res = myDictionary.get(msg.caller);
    if(res==null){
      return false;
    }else{
      return true;
    }
  };

 

  //to delete the values of more form

   public shared (msg) func deleteMoreDetails() : async Bool{
    var res = myDictionary.get(msg.caller);
    if(res!=null){
      myDictionary.delete(msg.caller);
      return true;
    }else{
      return false;
    }
  };


//to enter the medicine details
public shared (msg) func EnterMedicineDetailsAndCost(medName:Text,cost:Nat) : async Bool{
   
   if(myDictionary.get(msg.caller)==null){
      var user :UserDetails={Shopname= "" ;username="";Email ="" ;phonenumber = 0 ;
          password ="";Streetadd="";State="";City="";Fullname="";loc=""; postalcode="";sname="";
         mail="";ph=0;Medicinename=medName;Medicinecost=cost;};
      myDictionary.put(msg.caller,user);
      return true;
    }else{
      return false;
    }

};




};