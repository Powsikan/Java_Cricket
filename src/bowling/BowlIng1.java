package bowling;

import java.sql.ResultSet;
import repository.DatabaseRepository;
import repository.Repository;

public class BowlIng1  implements BowlingInterface {
String search;
    public BowlIng1(String search) {
        this.search=search;
       
    }
     
    
    @Override
    public ResultSet showBowling() {
     
      try {
          Repository con=new DatabaseRepository();
           return con.read("SELECT Name,overs,Runs,wickets FROM bowling WHERE M_ID=? and innings=1",search);

           } catch (Exception ex) {
          ex.getMessage();

           return null;
        }
      
    }
    
}
