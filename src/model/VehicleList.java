package model;

/**
 * Created by gunner on 7/3/15.
 */
public class VehicleList {
    private String veh_mfr_code;
    private String make;
    private String model;
    private int price;
    private String vehicle_id;
    private String transmission;
    private String fuel_type;
    private int no_of_cylinder;
    private String drive_sys_desc;
    private String vehicle_type;

    public String getVeh_mfr_code() {
        return veh_mfr_code;
    }

    public void setVeh_mfr_code(String veh_mfr_code) {
        this.veh_mfr_code = veh_mfr_code;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getVehicle_id() {
        return vehicle_id;
    }

    public void setVehicle_id(String vehicle_id) {
        this.vehicle_id = vehicle_id;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getFuel_type() {
        return fuel_type;
    }

    public void setFuel_type(String fuel_type) {
        this.fuel_type = fuel_type;
    }

    public int getNo_of_cylinder() {
        return no_of_cylinder;
    }

    public void setNo_of_cylinder(int no_of_cylinder) {
        this.no_of_cylinder = no_of_cylinder;
    }

    public String getDrive_sys_desc() {
        return drive_sys_desc;
    }

    public void setDrive_sys_desc(String drive_sys_desc) {
        this.drive_sys_desc = drive_sys_desc;
    }

    public String getVehicle_type() {
        return vehicle_type;
    }

    public void setVehicle_type(String vehicle_type) {
        this.vehicle_type = vehicle_type;
    }
}
