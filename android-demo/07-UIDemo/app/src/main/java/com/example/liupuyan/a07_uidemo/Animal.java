package com.example.liupuyan.a07_uidemo;

/**
 * Created by liupuyan on 2017/9/20.
 */

public class Animal {
    private String aName;
    private String aSpeak;
    private int aIcon;

    public Animal(String aName, String aSpeak, int aIcon) {
        this.aName = aName;
        this.aSpeak = aSpeak;
        this.aIcon = aIcon;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaSpeak() {
        return aSpeak;
    }

    public void setaSpeak(String aSpeak) {
        this.aSpeak = aSpeak;
    }

    public int getaIcon() {
        return aIcon;
    }

    public void setaIcon(int aIcon) {
        this.aIcon = aIcon;
    }
}
