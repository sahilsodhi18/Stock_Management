

package stockmanagement;

import java.text.SimpleDateFormat;
import java.util.Date;


public interface myvariables 
{
    String path = "jdbc:mysql://localhost/";
    String place = "stockdb";
    String username = "root";
    String password = "";
    
    Date obj = new Date();
    SimpleDateFormat myformat = new SimpleDateFormat("yyyy-MM-dd");
    String cdate = myformat.format(obj);
}
    

