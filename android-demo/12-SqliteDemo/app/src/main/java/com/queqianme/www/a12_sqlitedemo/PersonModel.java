package com.queqianme.www.a12_sqlitedemo;

/**
 * Created by liupuyan on 2017/10/16.
 */

public class PersonModel {
    private String name;
    private String phone;
    private int salary;

    public PersonModel(String name, String phone, int salary) {
        this.name = name;
        this.phone = phone;
        this.salary = salary;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "PersonModel{" +
                "name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", salary=" + salary +
                '}';
    }
}
