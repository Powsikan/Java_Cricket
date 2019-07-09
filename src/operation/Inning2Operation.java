package operation;

import batting.BattingIng2;
import bowling.BowlIng2;
import java.sql.ResultSet;
import javax.swing.JTable;
import net.proteanit.sql.DbUtils;
import batting.BattingInterface;
import bowling.BowlingInterface;

public class Inning2Operation implements Operation {
String search;
JTable tbl_bowl;
JTable tbl_bat;
    public Inning2Operation(String search, JTable tbl_bowl,JTable tbl_bat) {
        this.search=search;
        this.tbl_bowl=tbl_bowl;
        this.tbl_bat=tbl_bat;
        
    }
    
    @Override
    public void perform() {
        BattingInterface bat2=new BattingIng2(search);
        BowlingInterface bl2=new BowlIng2(search);
        
    try{
          ResultSet showBowling= bl2.showBowling();
          tbl_bowl.setModel(DbUtils.resultSetToTableModel(showBowling));
           ResultSet  showBatting = bat2.showBatting();
           tbl_bat.setModel(DbUtils.resultSetToTableModel(showBatting));
           
         }catch(Exception e){
             e.getMessage();
         }
    }
}
