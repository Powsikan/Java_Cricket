package overview;

import java.sql.ResultSet;
import repository.DatabaseRepository;
import repository.Repository;


public class Team  {
    String search;

    public Team(String search){
        this.search=search;
    
    }
   public ResultSet showTeam(){
       
         try {
             
              Repository con = new DatabaseRepository();
            return con.read("SELECT Details as TEAMS FROM match_details WHERE M_ID=?", search);
            
           } catch (Exception ex) {
             ex.getMessage();
           return null;
        }
        
    }
    
}
