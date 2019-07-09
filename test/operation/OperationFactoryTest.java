
package operation;

import java.sql.ResultSet;
import javax.swing.JTable;
import javax.swing.JTextArea;
import org.junit.Test;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import repository.Repository;


public class OperationFactoryTest {
    
  
    @Test
    public void testGetInstance() {
        System.out.println("getInstance");
        Object selected_item = new Object();
        String search = "m1";
        JTable tbl_head = new JTable();
        JTable tbl_bat = new JTable();
        JTable tbl_bowl = new JTable();
        JTextArea txt_area = new JTextArea();
        OperationFactory instance = new OperationFactory();
        Operation expResult = mock(Operation.class);
        Operation result = instance.getInstance(selected_item, search,  tbl_bat, tbl_bowl, txt_area);
         instance.getInstance(selected_item, search,  tbl_bat, tbl_bowl, txt_area);
    }
    
     @Test
    public void innings1TestPerform(){
        
        System.out.println("perform");
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
         
     
    }
    
    
     @Test
    public void innings2TestPerform() {
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
    
       @Test
    public void overviewTestPerform() {
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
