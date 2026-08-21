package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class zzbg extends zzdvm {
    private Date zzcr;
    private Date zzcs;
    private long zzct;
    private long zzcu;
    private double zzcv;
    private float zzcw;
    private zzdvw zzcx;
    private long zzcy;
    private int zzcz;
    private int zzda;
    private int zzdb;
    private int zzdc;
    private int zzdd;
    private int zzde;

    public zzbg() {
        super("mvhd");
        this.zzcv = 1.0d;
        this.zzcw = 1.0f;
        this.zzcx = zzdvw.zzhxh;
    }

    public final long getDuration() {
        return this.zzcu;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.zzcr + ";modificationTime=" + this.zzcs + ";timescale=" + this.zzct + ";duration=" + this.zzcu + ";rate=" + this.zzcv + ";volume=" + this.zzcw + ";matrix=" + this.zzcx + ";nextTrackId=" + this.zzcy + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzdvk
    public final void zzg(ByteBuffer byteBuffer) {
        long jZza;
        zzo(byteBuffer);
        if (getVersion() == 1) {
            this.zzcr = zzdvp.zzfp(zzbc.zzc(byteBuffer));
            this.zzcs = zzdvp.zzfp(zzbc.zzc(byteBuffer));
            this.zzct = zzbc.zza(byteBuffer);
            jZza = zzbc.zzc(byteBuffer);
        } else {
            this.zzcr = zzdvp.zzfp(zzbc.zza(byteBuffer));
            this.zzcs = zzdvp.zzfp(zzbc.zza(byteBuffer));
            this.zzct = zzbc.zza(byteBuffer);
            jZza = zzbc.zza(byteBuffer);
        }
        this.zzcu = jZza;
        this.zzcv = zzbc.zzd(byteBuffer);
        byteBuffer.get(new byte[2]);
        this.zzcw = ((short) ((r0[1] & 255) | ((short) (0 | ((r0[0] << 8) & 65280))))) / 256.0f;
        zzbc.zzb(byteBuffer);
        zzbc.zza(byteBuffer);
        zzbc.zza(byteBuffer);
        this.zzcx = zzdvw.zzp(byteBuffer);
        this.zzcz = byteBuffer.getInt();
        this.zzda = byteBuffer.getInt();
        this.zzdb = byteBuffer.getInt();
        this.zzdc = byteBuffer.getInt();
        this.zzdd = byteBuffer.getInt();
        this.zzde = byteBuffer.getInt();
        this.zzcy = zzbc.zza(byteBuffer);
    }

    public final long zzq() {
        return this.zzct;
    }
}
