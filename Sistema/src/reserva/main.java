/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reserva;

import java.awt.GridLayout;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author carlos
 */
public class main {
    //public static Reserva[] tempBD= new Reserva[100];
    //public static int[] horario= new int[15];
    static int [] horario={11};
    Reserva temp=new Reserva("17/01/18",horario);
    public static Reserva [] tempBD={temp};
    
    
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        new TelaReserva(tempBD).setVisible(true);
        
        // TODO code application logic here
    }
    
}
