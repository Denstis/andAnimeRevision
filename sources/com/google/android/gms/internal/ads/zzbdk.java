package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import com.google.android.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class zzbdk extends MutableContextWrapper {
    private Activity zzdvj;
    private Context zzehy;
    private Context zzzc;

    public zzbdk(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.zzehy.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        this.zzzc = context.getApplicationContext();
        this.zzdvj = context instanceof Activity ? (Activity) context : null;
        this.zzehy = context;
        super.setBaseContext(this.zzzc);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.zzdvj;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            this.zzzc.startActivity(intent);
        }
    }

    public final Activity zzxn() {
        return this.zzdvj;
    }

    public final Context zzzk() {
        return this.zzehy;
    }
}
