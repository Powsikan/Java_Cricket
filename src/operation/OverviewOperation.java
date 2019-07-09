
package operation;

import overview.Overview;
import java.sql.ResultSet;
import javax.swing.JTextArea;

public class OverviewOperation implements Operation {
    String search;
    JTextArea txt_area;
public OverviewOperation(String search,JTextArea txt_area)
{
    this.search=search;
    this.txt_area=txt_area;
   
}
    @Override
    public void perform() {
        Overview ov=new Overview(search);
  try{
          ResultSet showOverview = ov.showOverview();
         
              while(showOverview.next()) {
                  txt_area.setText(showOverview.getString("Details"));
              }
          
       }catch(Exception e){
      e.getMessage();
       }
    }
}
    
    
    

