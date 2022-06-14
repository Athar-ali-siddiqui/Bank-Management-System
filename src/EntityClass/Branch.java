/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EntityClass;

/**
 *
 * @author Ather Ali Siddiqui
 */
public class Branch {
    private int bcode;
    private String name , location;

    public Branch(int bcode, String name, String location) {
        this.bcode = bcode;
        this.name = name;
        this.location = location;
    }

    public int getBcode() {
        return bcode;
    }

    public String getName() {
        return name;
    }

    public String getLocation() {
        return location;
    }

    public Branch() {
    }
    
}
