package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzawy;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzaxl;
import com.google.android.gms.internal.ads.zzaxn;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzdg;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzza;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzh implements zzdc, Runnable {
    private zzaxl zzblh;
    private Context zzlk;
    private final List<Object[]> zzblf = new Vector();
    private final AtomicReference<zzdc> zzblg = new AtomicReference<>();
    private CountDownLatch zzbli = new CountDownLatch(1);

    public zzh(Context context, zzaxl zzaxlVar) {
        this.zzlk = context;
        this.zzblh = zzaxlVar;
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcnl)).booleanValue()) {
            zzuv.zzoj();
            if (!zzawy.zzwk()) {
                run();
                return;
            }
        }
        zzaxn.zzdwi.execute(this);
    }

    private static Context zze(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    private final boolean zzjn() {
        try {
            this.zzbli.await();
            return true;
        } catch (InterruptedException e2) {
            zzaxi.zzd("Interrupted during GADSignals creation.", e2);
            return false;
        }
    }

    private final void zzjo() {
        if (this.zzblf.isEmpty()) {
            return;
        }
        for (Object[] objArr : this.zzblf) {
            if (objArr.length == 1) {
                this.zzblg.get().zzb((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                this.zzblg.get().zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzblf.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        try {
            boolean z2 = this.zzblh.zzdwg;
            if (!((Boolean) zzuv.zzon().zzd(zzza.zzckr)).booleanValue() && z2) {
                z = true;
            }
            this.zzblg.set(zzdg.zza(this.zzblh.zzblz, zze(this.zzlk), z));
        } finally {
            this.zzbli.countDown();
            this.zzlk = null;
            this.zzblh = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context) {
        zzdc zzdcVar;
        if (!zzjn() || (zzdcVar = this.zzblg.get()) == null) {
            return "";
        }
        zzjo();
        return zzdcVar.zza(zze(context));
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context, String str, View view, Activity activity) {
        zzdc zzdcVar;
        if (!zzjn() || (zzdcVar = this.zzblg.get()) == null) {
            return "";
        }
        zzjo();
        return zzdcVar.zza(zze(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zza(int i2, int i3, int i4) {
        zzdc zzdcVar = this.zzblg.get();
        if (zzdcVar == null) {
            this.zzblf.add(new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)});
        } else {
            zzjo();
            zzdcVar.zza(i2, i3, i4);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zzb(MotionEvent motionEvent) {
        zzdc zzdcVar = this.zzblg.get();
        if (zzdcVar == null) {
            this.zzblf.add(new Object[]{motionEvent});
        } else {
            zzjo();
            zzdcVar.zzb(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zzb(View view) {
        zzdc zzdcVar = this.zzblg.get();
        if (zzdcVar != null) {
            zzdcVar.zzb(view);
        }
    }
}
