package batting;

import java.sql.ResultSet;
import repository.DatabaseRepository;
import repository.Repository;


public class BattingIng2   implements BattingInterface{
String search;
    public BattingIng2(String search) {
        this.search=search;
       
    }


    @Override
    public ResultSet showBatting() {

            try {
             Repository con=new DatabaseRepository();
           return con.read("SELECT Name,Runs,Balls,6s,4s FROM batting WHERE M_ID=? and innings=2",search);

            } catch (Exception ex) {
          ex.getMessage();

            return null;
        }
   
    }

  
    
}
