package bowling;

import java.sql.ResultSet;
import repository.DatabaseRepository;
import repository.Repository;

public class BowlIng2  implements BowlingInterface   {
String search;
    public BowlIng2(String search) {
        this.search=search;
       
    }
    
 
    @Override
    public ResultSet showBowling() {
   
     try {
           Repository con=new DatabaseRepository();
           return con.read("SELECT Name,overs,Runs,wickets FROM bowling WHERE M_ID=? and innings=2",search);

           } catch (Exception ex) {
         ex.getMessage();

           return null;
        }
    
    }
    
}
