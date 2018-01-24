/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reserva;

/**
 *
 * @author carlos
 */
public class Reserva {
    String data;
    int[] horario = new int[15];
    boolean confirma;
    
    public Reserva(String data,int horario[]){
        this.data=data;
        this.horario=horario;
        confirma=false;
    }
    
    
    
    
}
