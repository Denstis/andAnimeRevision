package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import b.c.b.a;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzchd implements zzcga<zzbrs> {
    private final zzcvp zzfbb;
    private final Executor zzfbx;
    private final zzbso zzfxy;
    private final Context zzlk;

    public zzchd(Context context, Executor executor, zzbso zzbsoVar, zzcvp zzcvpVar) {
        this.zzlk = context;
        this.zzfxy = zzbsoVar;
        this.zzfbx = executor;
        this.zzfbb = zzcvpVar;
    }

    private static String zzc(zzcvr zzcvrVar) {
        try {
            return zzcvrVar.zzgjh.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    final /* synthetic */ zzddi zza(Uri uri, zzcvz zzcvzVar, zzcvr zzcvrVar, Object obj) {
        try {
            a aVarA = new a.C0097a().a();
            aVarA.f2247a.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzd zzdVar = new com.google.android.gms.ads.internal.overlay.zzd(aVarA.f2247a);
            final zzaxv zzaxvVar = new zzaxv();
            zzbru zzbruVarZza = this.zzfxy.zza(new zzbla(zzcvzVar, zzcvrVar, null), new zzbrx(new zzbsu(zzaxvVar) { // from class: com.google.android.gms.internal.ads.zzchf
                private final zzaxv zzbrt;

                {
                    this.zzbrt = zzaxvVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbsu
                public final void zza(boolean z, Context context) {
                    zzaxv zzaxvVar2 = this.zzbrt;
                    try {
                        com.google.android.gms.ads.internal.zzq.zzki();
                        com.google.android.gms.ads.internal.overlay.zzn.zza(context, (AdOverlayInfoParcel) zzaxvVar2.get(), true);
                    } catch (Exception unused) {
                    }
                }
            }));
            zzaxvVar.set(new AdOverlayInfoParcel(zzdVar, null, zzbruVarZza.zzadi(), null, new zzaxl(0, 0, false)));
            this.zzfbb.zzud();
            return zzdcy.zzah(zzbruVarZza.zzadh());
        } catch (Throwable th) {
            zzaxi.zzc("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        return (this.zzlk instanceof Activity) && PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzaal.zzk(this.zzlk) && !TextUtils.isEmpty(zzc(zzcvrVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<zzbrs> zzb(final zzcvz zzcvzVar, final zzcvr zzcvrVar) {
        String strZzc = zzc(zzcvrVar);
        final Uri uri = strZzc != null ? Uri.parse(strZzc) : null;
        return zzdcy.zzb(zzdcy.zzah(null), new zzdcj(this, uri, zzcvzVar, zzcvrVar) { // from class: com.google.android.gms.internal.ads.zzchc
            private final zzchd zzfxu;
            private final Uri zzfxv;
            private final zzcvz zzfxw;
            private final zzcvr zzfxx;

            {
                this.zzfxu = this;
                this.zzfxv = uri;
                this.zzfxw = zzcvzVar;
                this.zzfxx = zzcvrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfxu.zza(this.zzfxv, this.zzfxw, this.zzfxx, obj);
            }
        }, this.zzfbx);
    }
}
