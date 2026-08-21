package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import b.e.g;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbyb extends zzach {
    private final zzbur zzfjl;
    private final zzbuj zzfml;
    private final zzbvj zzfpm;
    private final Context zzzc;

    public zzbyb(Context context, zzbur zzburVar, zzbvj zzbvjVar, zzbuj zzbujVar) {
        this.zzzc = context;
        this.zzfjl = zzburVar;
        this.zzfpm = zzbvjVar;
        this.zzfml = zzbujVar;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void destroy() {
        this.zzfml.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final List<String> getAvailableAssetNames() {
        g<String, zzaau> gVarZzahx = this.zzfjl.zzahx();
        g<String, String> gVarZzahz = this.zzfjl.zzahz();
        String[] strArr = new String[gVarZzahx.size() + gVarZzahz.size()];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < gVarZzahx.size()) {
            strArr[i4] = gVarZzahx.b(i3);
            i3++;
            i4++;
        }
        while (i2 < gVarZzahz.size()) {
            strArr[i4] = gVarZzahz.b(i2);
            i2++;
            i4++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final String getCustomTemplateId() {
        return this.zzfjl.getCustomTemplateId();
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final zzwr getVideoController() {
        return this.zzfjl.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void performClick(String str) {
        this.zzfml.zzfp(str);
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void recordImpression() {
        this.zzfml.zzahd();
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final String zzco(String str) {
        return this.zzfjl.zzahz().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final zzabi zzcp(String str) {
        return this.zzfjl.zzahx().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final IObjectWrapper zzqm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final IObjectWrapper zzqr() {
        return ObjectWrapper.wrap(this.zzzc);
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zzqs() {
        return this.zzfml.zzahl() && this.zzfjl.zzahv() != null && this.zzfjl.zzahu() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zzqt() {
        IObjectWrapper iObjectWrapperZzahw = this.zzfjl.zzahw();
        if (iObjectWrapperZzahw != null) {
            com.google.android.gms.ads.internal.zzq.zzky().zzae(iObjectWrapperZzahw);
            return true;
        }
        zzaxi.zzeu("Trying to start OMID session before creation.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzqu() {
        String strZzahy = this.zzfjl.zzahy();
        if ("Google".equals(strZzahy)) {
            zzaxi.zzeu("Illegal argument specified for omid partner name.");
        } else {
            this.zzfml.zzg(strZzahy, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zzu(IObjectWrapper iObjectWrapper) {
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof ViewGroup) || !this.zzfpm.zza((ViewGroup) objUnwrap)) {
            return false;
        }
        this.zzfjl.zzahu().zza(new zzbya(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzv(IObjectWrapper iObjectWrapper) {
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((objUnwrap instanceof View) && this.zzfjl.zzahw() != null) {
            this.zzfml.zzy((View) objUnwrap);
        }
    }
}
