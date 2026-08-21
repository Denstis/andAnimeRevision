package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbdj {
    public final int heightPixels;
    private final int type;
    public final int widthPixels;

    private zzbdj(int i2, int i3, int i4) {
        this.type = i2;
        this.widthPixels = i3;
        this.heightPixels = i4;
    }

    public static zzbdj zzaar() {
        return new zzbdj(0, 0, 0);
    }

    public static zzbdj zzaas() {
        return new zzbdj(4, 0, 0);
    }

    public static zzbdj zzaat() {
        return new zzbdj(5, 0, 0);
    }

    public static zzbdj zzb(zzua zzuaVar) {
        return zzuaVar.zzccm ? new zzbdj(3, 0, 0) : zzuaVar.zzcco ? new zzbdj(2, 0, 0) : zzuaVar.zzbmb ? zzaar() : zzp(zzuaVar.widthPixels, zzuaVar.heightPixels);
    }

    public static zzbdj zzp(int i2, int i3) {
        return new zzbdj(1, i2, i3);
    }

    public final boolean isFluid() {
        return this.type == 2;
    }

    public final boolean zzaau() {
        return this.type == 3;
    }

    public final boolean zzaav() {
        return this.type == 0;
    }

    public final boolean zzaaw() {
        return this.type == 4;
    }

    public final boolean zzaax() {
        return this.type == 5;
    }
}
