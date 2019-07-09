
package operation;

import java.sql.ResultSet;
import javax.swing.JTable;
import org.junit.Test;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import repository.Repository;

public class Inning1OperationTest {
    
 
    @Test
    public void testPerform() {
        
        Inning1Operation instance = mock(Inning1Operation.class);
        instance.perform();
       
       String query,search;
        query="select * from batting where m_id=?";
        search="m1";
        ResultSet rs=null;
        
        JTable tbl_bowl=new JTable();
        JTable tbl_bat=new JTable();
       Repository repository=mock(Repository.class);
       when(repository.read(query, search)).thenReturn(rs); 
       
       Inning1Operation inng1op=new Inning1Operation(search,tbl_bowl,tbl_bat);
       inng1op.perform();
       System.out.println("perform");  
     
    }
    
}
