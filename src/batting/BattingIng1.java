package batting;

import java.sql.ResultSet;
import repository.DatabaseRepository;
import repository.Repository;


public class BattingIng1  implements BattingInterface {
    String search;
    public BattingIng1(String search) {
        this.search=search;
       
    }
  
    @Override
    public ResultSet showBatting() {

         try {
           
          Repository con=new DatabaseRepository();
            return con.read("SELECT Name,Runs,Balls,6s,4s FROM batting WHERE M_ID=? and innings=1",search);
             } catch (Exception ex) {
           ex.getMessage();

           return null;
        }
         
    }

   
    
}
