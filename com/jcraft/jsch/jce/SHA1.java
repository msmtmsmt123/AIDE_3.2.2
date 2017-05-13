package com.jcraft.jsch.jce;

import com.jcraft.jsch.HASH;
import java.security.MessageDigest;

public class SHA1 implements HASH {
    MessageDigest j6;

    public int DW() {
        return 20;
    }

    public void j6() {
        try {
            this.j6 = MessageDigest.getInstance("SHA-1");
        } catch (Exception e) {
            System.err.println(e);
        }
    }

    public void j6(byte[] bArr, int i, int i2) {
        this.j6.update(bArr, i, i2);
    }

    public byte[] FH() {
        return this.j6.digest();
    }
}