package overview;

import java.sql.ResultSet;
import repository.DatabaseRepository;
import repository.Repository;

public class Overview{
  String search;
    public Overview(String search){
        this.search=search;
    }

    public ResultSet showOverview(){
                 
        try {
            Repository con = new DatabaseRepository();
             ResultSet rs = con.read("SELECT  Details FROM overview  WHERE M_ID=?", search);
            return rs;
        }
            catch (Exception ex) {
                ex.getMessage();

           return null; 
        }       
    }    
}
    

