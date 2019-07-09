
package operation;

import java.sql.ResultSet;
import javax.swing.JTextArea;
import org.junit.Test;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import repository.Repository;

public class OverviewOperationTest {
    
  
    @Test
    public void testPerform() {
         System.out.println("perform");
        OverviewOperation instance = mock(OverviewOperation.class);
        instance.perform();
       
       String query,search;
        query="select * from batting where m_id=?";
        search="m1";
        ResultSet rs=null;
        
        JTextArea txt_area=new JTextArea();
       Repository repository=mock(Repository.class);
       when(repository.read(query, search)).thenReturn(rs); 
       
       OverviewOperation overop=new OverviewOperation(search,txt_area);
       overop.perform();
         
    }
    
}
