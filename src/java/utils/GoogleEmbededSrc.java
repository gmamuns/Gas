
package util;

public class GoogleEmbededSrc {
    public static void main(String[] args) {
        String mapSrc = "<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.595907443798!2d91.82081198891596!3d22.348002997117526!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8f4a5d57599%3A0x4b7918e20cf3fd2f!2sPolytechnic+Institute+Halt!5e0!3m2!1sen!2sbd!4v1533821750026\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>";
       String[] output = mapSrc.split("\\s+");
        System.out.println(output[1]);
        //for (String s : output) {
         //   System.out.println(s);
            //String[] innerOut = s.split(":");
           /* for(String i : innerOut){
             //System.out.println(s+" "+i + " " + i.length()); 
             if(i.length()== 3){System.out.print("Subject Code :"+i+" ");}else{System.out.println("GPA :"+i);}
            }*/
        //}
    }
    
}
