
package operation;

import batting.BattingIng1;
import bowling.BowlIng1;
import java.sql.ResultSet;
import javax.swing.JTable;
import net.proteanit.sql.DbUtils;
import batting.BattingInterface;
import bowling.BowlingInterface;

public class Inning1Operation implements Operation {
String search;
JTable tbl_bowl;
JTable tbl_bat;
    public Inning1Operation(String search, JTable tbl_bowl,JTable tbl_bat) {
        this.search=search;
        this.tbl_bowl=tbl_bowl;
        this.tbl_bat=tbl_bat;
        
    }

    
    @Override
    public void perform() {
        BattingInterface bat1=new BattingIng1(search);
        BowlingInterface bl1=new BowlIng1(search);
        
    try{
          ResultSet showBowling= bl1.showBowling();
          tbl_bowl.setModel(DbUtils.resultSetToTableModel(showBowling));
           ResultSet  showBatting = bat1.showBatting();
           tbl_bat.setModel(DbUtils.resultSetToTableModel(showBatting));
           
         }catch(Exception e){
        e.getMessage();
         }
    }
    
}
