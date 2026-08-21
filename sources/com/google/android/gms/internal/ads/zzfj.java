package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class zzfj {
    private static final String TAG = "zzfj";
    private final String className;
    private final String zzaaj;
    private final Class<?>[] zzaam;
    private final zzdx zzvo;
    private final int zzaak = 2;
    private volatile Method zzaal = null;
    private CountDownLatch zzaan = new CountDownLatch(1);

    public zzfj(zzdx zzdxVar, String str, String str2, Class<?>... clsArr) {
        this.zzvo = zzdxVar;
        this.className = str;
        this.zzaaj = str2;
        this.zzaam = clsArr;
        this.zzvo.zzce().submit(new zzfi(this));
    }

    private final String zzb(byte[] bArr, String str) {
        return new String(this.zzvo.zzcg().zza(bArr, str), C.UTF8_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzcy() {
        try {
            try {
                Class clsLoadClass = this.zzvo.zzcf().loadClass(zzb(this.zzvo.zzch(), this.className));
                if (clsLoadClass != null) {
                    this.zzaal = clsLoadClass.getMethod(zzb(this.zzvo.zzch(), this.zzaaj), this.zzaam);
                    Method method = this.zzaal;
                }
            } finally {
                this.zzaan.countDown();
            }
        } catch (zzdk | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
        }
    }

    public final Method zzcz() {
        if (this.zzaal != null) {
            return this.zzaal;
        }
        try {
            if (this.zzaan.await(2L, TimeUnit.SECONDS)) {
                return this.zzaal;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
