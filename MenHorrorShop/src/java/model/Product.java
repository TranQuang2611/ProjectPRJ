/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;
import lombok.ToString;
import lombok.Getter;
import lombok.Setter;
import lombok.*;

/**
 *
 * @author admin
 */
@Getter 
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString(onlyExplicitlyIncluded = true)
public class Product {
    @ToString.Include
    int id;
    Category category;
    String rankdd;
    String rankdtcl;
    int champion;
    int rp;
    int skin;
    int little;
    int price;
    int status;
    @ToString.Include
    String taikhoan;
    @ToString.Include
    String password;
    
    
    

    

   
    
    
    
}
