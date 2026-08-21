package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcrl implements zzcru<zzcrm> {
    private final zzaxl zzblk;
    private final zzddl zzfoa;
    private final Context zzlk;

    public zzcrl(zzddl zzddlVar, Context context, zzaxl zzaxlVar) {
        this.zzfoa = zzddlVar;
        this.zzlk = context;
        this.zzblk = zzaxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcrm> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcro
            private final zzcrl zzgge;

            {
                this.zzgge = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgge.zzamh();
            }
        });
    }

    final /* synthetic */ zzcrm zzamh() {
        boolean zIsCallerInstantApp = Wrappers.packageManager(this.zzlk).isCallerInstantApp();
        com.google.android.gms.ads.internal.zzq.zzkj();
        boolean zZzay = zzaul.zzay(this.zzlk);
        String str = this.zzblk.zzblz;
        com.google.android.gms.ads.internal.zzq.zzkl();
        boolean zZzvs = zzaur.zzvs();
        com.google.android.gms.ads.internal.zzq.zzkj();
        return new zzcrm(zIsCallerInstantApp, zZzay, str, zZzvs, zzaul.zzav(this.zzlk), DynamiteModule.getRemoteVersion(this.zzlk, ModuleDescriptor.MODULE_ID), DynamiteModule.getLocalVersion(this.zzlk, ModuleDescriptor.MODULE_ID));
    }
}
