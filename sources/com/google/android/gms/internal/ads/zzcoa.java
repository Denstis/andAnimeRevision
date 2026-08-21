package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public final class zzcoa implements zzcru<zzcnx> {
    private final zzatr zzbml;
    private final zzcwe zzfga;
    private final zzcru<zzcrx> zzgee;
    private final Context zzlk;

    public zzcoa(zzcpd<zzcrx> zzcpdVar, zzcwe zzcweVar, Context context, zzatr zzatrVar) {
        this.zzgee = zzcpdVar;
        this.zzfga = zzcweVar;
        this.zzlk = context;
        this.zzbml = zzatrVar;
    }

    final /* synthetic */ zzcnx zza(zzcrx zzcrxVar) {
        String str;
        boolean z;
        String strZzvk;
        float f2;
        int i2;
        int i3;
        int i4;
        DisplayMetrics displayMetrics;
        zzua zzuaVar = this.zzfga.zzbll;
        zzua[] zzuaVarArr = zzuaVar.zzccn;
        if (zzuaVarArr != null) {
            str = null;
            boolean z2 = false;
            boolean z3 = false;
            z = false;
            for (zzua zzuaVar2 : zzuaVarArr) {
                if (!zzuaVar2.zzcco && !z2) {
                    str = zzuaVar2.zzabd;
                    z2 = true;
                }
                if (zzuaVar2.zzcco && !z3) {
                    z3 = true;
                    z = true;
                }
                if (z2 && z3) {
                    break;
                }
            }
        } else {
            str = zzuaVar.zzabd;
            z = zzuaVar.zzcco;
        }
        Resources resources = this.zzlk.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            strZzvk = null;
            f2 = 0.0f;
            i2 = 0;
            i3 = 0;
        } else {
            float f3 = displayMetrics.density;
            int i5 = displayMetrics.widthPixels;
            i3 = displayMetrics.heightPixels;
            strZzvk = this.zzbml.zzuh().zzvk();
            i2 = i5;
            f2 = f3;
        }
        StringBuilder sb = new StringBuilder();
        zzua[] zzuaVarArr2 = zzuaVar.zzccn;
        if (zzuaVarArr2 != null) {
            boolean z4 = false;
            for (zzua zzuaVar3 : zzuaVarArr2) {
                if (zzuaVar3.zzcco) {
                    z4 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    sb.append((zzuaVar3.width != -1 || f2 == 0.0f) ? zzuaVar3.width : (int) (zzuaVar3.widthPixels / f2));
                    sb.append("x");
                    sb.append((zzuaVar3.height != -2 || f2 == 0.0f) ? zzuaVar3.height : (int) (zzuaVar3.heightPixels / f2));
                }
            }
            if (z4) {
                if (sb.length() != 0) {
                    i4 = 0;
                    sb.insert(0, "|");
                } else {
                    i4 = 0;
                }
                sb.insert(i4, "320x50");
            }
        }
        return new zzcnx(zzuaVar, str, z, sb.toString(), f2, i2, i3, strZzvk);
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcnx> zzalv() {
        return zzdcy.zzb(this.zzgee.zzalv(), new zzdal(this) { // from class: com.google.android.gms.internal.ads.zzcnz
            private final zzcoa zzged;

            {
                this.zzged = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdal
            public final Object apply(Object obj) {
                return this.zzged.zza((zzcrx) obj);
            }
        }, zzaxn.zzdwn);
    }
}
