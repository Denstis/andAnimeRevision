package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzafl implements zzn {
    private volatile zzafa zzcyl;
    private final Context zzlk;

    public zzafl(Context context) {
        this.zzlk = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        if (this.zzcyl == null) {
            return;
        }
        this.zzcyl.disconnect();
        Binder.flushPendingCommands();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzn
    public final zzo zzc(zzq<?> zzqVar) throws zzae {
        zzafd zzafdVarZzh = zzafd.zzh(zzqVar);
        long jElapsedRealtime = com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime();
        try {
            zzaxv zzaxvVar = new zzaxv();
            this.zzcyl = new zzafa(this.zzlk, com.google.android.gms.ads.internal.zzq.zzkx().zzwd(), new zzafp(this, zzaxvVar), new zzafo(this, zzaxvVar));
            this.zzcyl.checkAvailabilityAndConnect();
            zzddi zzddiVarZza = zzdcy.zza(zzdcy.zzb(zzaxvVar, new zzafk(this, zzafdVarZzh), zzaxn.zzdwi), ((Integer) zzuv.zzon().zzd(zzza.zzcpx)).intValue(), TimeUnit.MILLISECONDS, zzaxn.zzdwl);
            zzddiVarZza.addListener(new zzafm(this), zzaxn.zzdwi);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzddiVarZza.get();
            long jElapsedRealtime2 = com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() - jElapsedRealtime;
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(jElapsedRealtime2);
            sb.append("ms");
            zzaug.zzdy(sb.toString());
            zzaff zzaffVar = (zzaff) new zzaoz(parcelFileDescriptor).zza(zzaff.CREATOR);
            if (zzaffVar == null) {
                return null;
            }
            if (zzaffVar.zzcyi) {
                throw new zzae(zzaffVar.zzcyj);
            }
            if (zzaffVar.zzcyg.length != zzaffVar.zzcyh.length) {
                return null;
            }
            HashMap map = new HashMap();
            int i2 = 0;
            while (true) {
                String[] strArr = zzaffVar.zzcyg;
                if (i2 >= strArr.length) {
                    return new zzo(zzaffVar.statusCode, zzaffVar.data, map, zzaffVar.zzac, zzaffVar.zzad);
                }
                map.put(strArr[i2], zzaffVar.zzcyh[i2]);
                i2++;
            }
        } catch (InterruptedException | ExecutionException unused) {
            long jElapsedRealtime3 = com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() - jElapsedRealtime;
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(jElapsedRealtime3);
            sb2.append("ms");
            zzaug.zzdy(sb2.toString());
            return null;
        } catch (Throwable th) {
            long jElapsedRealtime4 = com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() - jElapsedRealtime;
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(jElapsedRealtime4);
            sb3.append("ms");
            zzaug.zzdy(sb3.toString());
            throw th;
        }
    }
}
