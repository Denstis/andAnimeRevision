package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcyp {
    private final Executor executor;
    private final String zzblz;
    private final Clock zzbmp;
    private final String zzcdr;
    private final String zzdix;
    private final zzcwc zzfgu;
    private final zzcjf zzfhu;
    private final zzaxm zzgmx;
    private final Context zzlk;

    public zzcyp(Executor executor, zzaxm zzaxmVar, zzcjf zzcjfVar, zzaxl zzaxlVar, String str, String str2, Context context, zzcwc zzcwcVar, Clock clock) {
        this.executor = executor;
        this.zzgmx = zzaxmVar;
        this.zzfhu = zzcjfVar;
        this.zzblz = zzaxlVar.zzblz;
        this.zzdix = str;
        this.zzcdr = str2;
        this.zzlk = context;
        this.zzfgu = zzcwcVar;
        this.zzbmp = clock;
    }

    private static String zzc(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    private static String zzgj(String str) {
        return (TextUtils.isEmpty(str) || !zzaxc.isEnabled()) ? str : "fakeForAdDebugLog";
    }

    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, List<String> list) {
        zza(zzcvzVar, zzcvrVar, false, list);
    }

    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, List<String> list, zzapy zzapyVar) {
        long jCurrentTimeMillis = this.zzbmp.currentTimeMillis();
        try {
            String type = zzapyVar.getType();
            String string = Integer.toString(zzapyVar.getAmount());
            ArrayList arrayList = new ArrayList();
            zzcwc zzcwcVar = this.zzfgu;
            String strZzgj = zzcwcVar == null ? "" : zzgj(zzcwcVar.zzdnz);
            zzcwc zzcwcVar2 = this.zzfgu;
            String strZzgj2 = zzcwcVar2 != null ? zzgj(zzcwcVar2.zzdoa) : "";
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zzate.zzd(zzc(zzc(zzc(zzc(zzc(zzc(it.next(), "@gw_rwd_userid@", Uri.encode(strZzgj)), "@gw_rwd_custom_data@", Uri.encode(strZzgj2)), "@gw_tmstmp@", Long.toString(jCurrentTimeMillis)), "@gw_rwd_itm@", Uri.encode(type)), "@gw_rwd_amt@", string), "@gw_sdkver@", this.zzblz), this.zzlk, zzcvrVar.zzdlr));
            }
            zzi(arrayList);
        } catch (RemoteException unused) {
        }
    }

    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, boolean z, List<String> list) {
        ArrayList arrayList = new ArrayList();
        String str = z ? "1" : "0";
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String strZzc = zzc(zzc(zzc(it.next(), "@gw_adlocid@", zzcvzVar.zzgka.zzfga.zzgkh), "@gw_adnetrefresh@", str), "@gw_sdkver@", this.zzblz);
            if (zzcvrVar != null) {
                strZzc = zzate.zzd(zzc(zzc(zzc(strZzc, "@gw_qdata@", zzcvrVar.zzdce), "@gw_adnetid@", zzcvrVar.zzaex), "@gw_allocid@", zzcvrVar.zzdcu), this.zzlk, zzcvrVar.zzdlr);
            }
            arrayList.add(zzc(zzc(zzc(strZzc, "@gw_adnetstatus@", this.zzfhu.zzakw()), "@gw_seqnum@", this.zzdix), "@gw_sessid@", this.zzcdr));
        }
        zzi(arrayList);
    }

    public final void zzei(final String str) {
        this.executor.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzcys
            private final String zzcyz;
            private final zzcyp zzgna;

            {
                this.zzgna = this;
                this.zzcyz = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgna.zzgk(this.zzcyz);
            }
        });
    }

    final /* synthetic */ void zzgk(String str) {
        this.zzgmx.zzei(str);
    }

    public final void zzi(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            zzei(it.next());
        }
    }
}
