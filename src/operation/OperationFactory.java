
package operation;

import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.table.DefaultTableModel;

public class OperationFactory {
    public Operation getInstance( Object selected_item,String search,JTable tbl_bat,JTable tbl_bowl,JTextArea txt_area){
       Operation operation=null;
       
         if(selected_item.equals("Overview")){
          operation =new OverviewOperation(search,txt_area);
          DefaultTableModel dm = (DefaultTableModel) tbl_bat.getModel();
          while(dm.getRowCount()>0){
              dm.removeRow(0);
          }
          DefaultTableModel dm2 = (DefaultTableModel) tbl_bowl.getModel();
          while(dm2.getRowCount()>0){
              dm2.removeRow(0);
          }
          
       }
       
       
       else if(selected_item.equals("1st Innings")){
         operation =new Inning1Operation(search,tbl_bowl,tbl_bat);
         txt_area.setText("");
         
        }
        
       
        else if(selected_item.equals("2nd Innings")){
           operation =new Inning2Operation(search,tbl_bowl,tbl_bat);
              txt_area.setText("");   
     }
        
        
        return operation;
        
    }
}
