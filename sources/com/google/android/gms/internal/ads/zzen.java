package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbo;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzen extends zzfl {
    private static zzfk<String> zzzw = new zzfk<>();
    private final Context zzzu;

    public zzen(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3, Context context) {
        super(zzdxVar, str, str2, zzbVar, i2, 29);
        this.zzzu = context;
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        this.zzaaa.zzac("E");
        AtomicReference<String> atomicReferenceZzau = zzzw.zzau(this.zzzu.getPackageName());
        if (atomicReferenceZzau.get() == null) {
            synchronized (atomicReferenceZzau) {
                if (atomicReferenceZzau.get() == null) {
                    atomicReferenceZzau.set((String) this.zzaal.invoke(null, this.zzzu));
                }
            }
        }
        String str = atomicReferenceZzau.get();
        synchronized (this.zzaaa) {
            this.zzaaa.zzac(zzcg.zza(str.getBytes(), true));
        }
    }
}
