package com.SoftwareFactory.constant;


public enum  GlobalEnum {
    webRoot ("http://www.sofac.kr");


    private String value;

    GlobalEnum(final String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}