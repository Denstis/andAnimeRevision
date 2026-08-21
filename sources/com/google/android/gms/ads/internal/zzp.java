package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzdf;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzza;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
final class zzp extends AsyncTask<Void, Void, String> {
    private final /* synthetic */ zzl zzblj;

    private zzp(zzl zzlVar) {
        this.zzblj = zzlVar;
    }

    /* synthetic */ zzp(zzl zzlVar, zzk zzkVar) {
        this(zzlVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final String doInBackground(Void... voidArr) {
        try {
            this.zzblj.zzblq = (zzdf) this.zzblj.zzblm.get(((Long) zzuv.zzon().zzd(zzza.zzcpf)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            zzaxi.zzd("", e2);
        }
        return this.zzblj.zzjx();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        if (this.zzblj.zzblo == null || str2 == null) {
            return;
        }
        this.zzblj.zzblo.loadUrl(str2);
    }
}
