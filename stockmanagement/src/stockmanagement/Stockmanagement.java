
package stockmanagement;


public class Stockmanagement {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        String a = "sahil,sodhi,manu";
        String c = "manu,nanu,";
        String b[] = a.split(",");
        System.out.print(b.length);
        for(int i=0 ; i<b.length ; i++)
        {
        System.out.print(b[i]);
    }
    }
    
}
