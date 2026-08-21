package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class zznk extends IOException {
    private final int type;
    private final zznf zzbew;

    public zznk(IOException iOException, zznf zznfVar, int i2) {
        super(iOException);
        this.zzbew = zznfVar;
        this.type = i2;
    }

    public zznk(String str, zznf zznfVar, int i2) {
        super(str);
        this.zzbew = zznfVar;
        this.type = 1;
    }

    public zznk(String str, IOException iOException, zznf zznfVar, int i2) {
        super(str, iOException);
        this.zzbew = zznfVar;
        this.type = 1;
    }
}
