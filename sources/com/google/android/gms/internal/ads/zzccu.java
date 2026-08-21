package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public class zzccu extends Exception {
    private final int errorCode;

    public zzccu(int i2) {
        this.errorCode = i2;
    }

    public zzccu(String str, int i2) {
        super(str);
        this.errorCode = i2;
    }

    public zzccu(String str, Throwable th, int i2) {
        super(str, th);
        this.errorCode = 0;
    }

    public static int zzd(Throwable th) {
        if (th instanceof zzccu) {
            return ((zzccu) th).errorCode;
        }
        if (th instanceof zzavp) {
            return ((zzavp) th).getErrorCode();
        }
        return 0;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
