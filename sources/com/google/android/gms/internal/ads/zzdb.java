package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzbk;
import com.google.android.gms.internal.ads.zzbo;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdb implements zzdc {
    protected static volatile zzdx zzvo;
    protected MotionEvent zzvt;
    protected double zzwc;
    private double zzwd;
    private double zzwe;
    protected float zzwf;
    protected float zzwg;
    protected float zzwh;
    protected float zzwi;
    protected DisplayMetrics zzwl;
    protected LinkedList<MotionEvent> zzvu = new LinkedList<>();
    protected long zzvv = 0;
    protected long zzvw = 0;
    protected long zzvx = 0;
    protected long zzvy = 0;
    protected long zzvz = 0;
    protected long zzwa = 0;
    protected long zzwb = 0;
    private boolean zzwj = false;
    protected boolean zzwk = false;

    protected zzdb(Context context) {
        try {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcni)).booleanValue()) {
                zzci.zzbx();
            } else {
                zzed.zzb(zzvo);
            }
            this.zzwl = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    private final String zza(Context context, String str, int i2, View view, Activity activity, byte[] bArr) {
        zzbk.zza zzaVarZza;
        zzda zzdaVarZzcj;
        String str2;
        int i3;
        zzbo.zza.zzb zzbVarZza = null;
        if (bArr == null || bArr.length <= 0) {
            zzaVarZza = null;
        } else {
            try {
                zzaVarZza = zzbk.zza.zza(bArr, zzdqj.zzazb());
            } catch (zzdrg unused) {
                zzaVarZza = null;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zBooleanValue = ((Boolean) zzuv.zzon().zzd(zzza.zzcmx)).booleanValue();
        if (zBooleanValue) {
            zzdaVarZzcj = zzvo != null ? zzvo.zzcj() : null;
            str2 = ((Boolean) zzuv.zzon().zzd(zzza.zzcni)).booleanValue() ? "be" : "te";
        } else {
            zzdaVarZzcj = null;
            str2 = null;
        }
        try {
            if (i2 == zzdt.zzxm) {
                zzbVarZza = zza(context, view, activity);
                this.zzwj = true;
                i3 = 1002;
            } else if (i2 == zzdt.zzxl) {
                zzbVarZza = zzb(context, view, activity);
                i3 = 1008;
            } else {
                zzbVarZza = zza(context, zzaVarZza);
                i3 = 1000;
            }
            if (zBooleanValue && zzdaVarZzcj != null) {
                zzdaVarZzcj.zza(i3, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2);
            }
        } catch (Exception e2) {
            if (zBooleanValue && zzdaVarZzcj != null) {
                zzdaVarZzcj.zza(i2 == zzdt.zzxm ? 1003 : i2 == zzdt.zzxl ? 1009 : i2 == zzdt.zzxk ? 1001 : -1, -1, System.currentTimeMillis() - jCurrentTimeMillis, str2, e2);
            }
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (zzbVarZza != null) {
            try {
                if (((zzbo.zza) ((zzdqw) zzbVarZza.zzazr())).zzazu() != 0) {
                    String strZzj = zzci.zzj((zzbo.zza) ((zzdqw) zzbVarZza.zzazr()), str);
                    if (!zBooleanValue || zzdaVarZzcj == null) {
                        return strZzj;
                    }
                    zzdaVarZzcj.zza(i2 == zzdt.zzxm ? 1006 : i2 == zzdt.zzxl ? 1010 : i2 == zzdt.zzxk ? 1004 : -1, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2);
                    return strZzj;
                }
            } catch (Exception e3) {
                String string = Integer.toString(7);
                if (!zBooleanValue || zzdaVarZzcj == null) {
                    return string;
                }
                zzdaVarZzcj.zza(i2 == zzdt.zzxm ? 1007 : i2 == zzdt.zzxl ? 1011 : i2 == zzdt.zzxk ? 1005 : -1, -1, System.currentTimeMillis() - jCurrentTimeMillis2, str2, e3);
                return string;
            }
        }
        return Integer.toString(5);
    }

    private final void zzcc() {
        this.zzvz = 0L;
        this.zzvv = 0L;
        this.zzvw = 0L;
        this.zzvx = 0L;
        this.zzvy = 0L;
        this.zzwa = 0L;
        this.zzwb = 0L;
        if (this.zzvu.size() > 0) {
            Iterator<MotionEvent> it = this.zzvu.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.zzvu.clear();
        } else {
            MotionEvent motionEvent = this.zzvt;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.zzvt = null;
    }

    protected abstract long zza(StackTraceElement[] stackTraceElementArr);

    protected abstract zzbo.zza.zzb zza(Context context, View view, Activity activity);

    protected abstract zzbo.zza.zzb zza(Context context, zzbk.zza zzaVar);

    protected abstract zzef zza(MotionEvent motionEvent);

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context) {
        if (zzee.isMainThread()) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcnk)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return zza(context, null, zzdt.zzxk, null, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final String zza(Context context, String str, View view, Activity activity) {
        return zza(context, str, zzdt.zzxm, view, activity, null);
    }

    public final String zza(Context context, byte[] bArr) {
        if (zzee.isMainThread()) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcnk)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return zza(context, null, zzdt.zzxk, null, null, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zza(int i2, int i3, int i4) {
        MotionEvent motionEventObtain;
        if (this.zzvt != null) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcmv)).booleanValue()) {
                zzcc();
            } else {
                this.zzvt.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.zzwl;
        if (displayMetrics != null) {
            float f2 = displayMetrics.density;
            motionEventObtain = MotionEvent.obtain(0L, i4, 1, i2 * f2, i3 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            motionEventObtain = null;
        }
        this.zzvt = motionEventObtain;
        this.zzwk = false;
    }

    protected abstract zzbo.zza.zzb zzb(Context context, View view, Activity activity);

    @Override // com.google.android.gms.internal.ads.zzdc
    public final void zzb(MotionEvent motionEvent) {
        boolean z = false;
        if (this.zzwj) {
            zzcc();
            this.zzwj = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.zzwc = 0.0d;
            this.zzwd = motionEvent.getRawX();
            this.zzwe = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d2 = this.zzwd;
            Double.isNaN(rawX);
            double d3 = rawX - d2;
            double d4 = this.zzwe;
            Double.isNaN(rawY);
            double d5 = rawY - d4;
            this.zzwc += Math.sqrt((d3 * d3) + (d5 * d5));
            this.zzwd = rawX;
            this.zzwe = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    this.zzvt = MotionEvent.obtain(motionEvent);
                    this.zzvu.add(this.zzvt);
                    if (this.zzvu.size() > 6) {
                        this.zzvu.remove().recycle();
                    }
                    this.zzvx++;
                    this.zzvz = zza(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.zzvw += (long) (motionEvent.getHistorySize() + 1);
                    zzef zzefVarZza = zza(motionEvent);
                    if ((zzefVarZza == null || zzefVarZza.zzyt == null || zzefVarZza.zzyw == null) ? false : true) {
                        this.zzwa += zzefVarZza.zzyt.longValue() + zzefVarZza.zzyw.longValue();
                    }
                    if (this.zzwl != null && zzefVarZza != null && zzefVarZza.zzyu != null && zzefVarZza.zzyx != null) {
                        z = true;
                    }
                    if (z) {
                        this.zzwb += zzefVarZza.zzyu.longValue() + zzefVarZza.zzyx.longValue();
                    }
                } else if (action2 == 3) {
                    this.zzvy++;
                }
            } catch (zzdw unused) {
            }
        } else {
            this.zzwf = motionEvent.getX();
            this.zzwg = motionEvent.getY();
            this.zzwh = motionEvent.getRawX();
            this.zzwi = motionEvent.getRawY();
            this.zzvv++;
        }
        this.zzwk = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public void zzb(View view) {
    }
}
