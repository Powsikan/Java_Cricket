
package operation;

import java.sql.ResultSet;
import javax.swing.JTable;
import org.junit.Test;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import repository.Repository;

public class Inning2OperationTest {
    
  
    @Test
    public void testPerform() {
       System.out.println("perform");
        Inning2Operation instance = mock(Inning2Operation.class);
        instance.perform();
       
       String query,search;
        query="select * from batting where m_id=?";
        search="m1";
        ResultSet rs=null;
        
        JTable tbl_bowl=new JTable();
        JTable tbl_bat=new JTable();
       Repository repository=mock(Repository.class);
       when(repository.read(query, search)).thenReturn(rs); 
       
       Inning2Operation inng2op=new Inning2Operation(search,tbl_bowl,tbl_bat);
       inng2op.perform();
         
    }
    
}
