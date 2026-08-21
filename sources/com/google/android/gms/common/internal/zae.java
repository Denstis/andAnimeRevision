package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;

/* JADX INFO: loaded from: classes.dex */
final class zae extends DialogRedirect {
    private final /* synthetic */ int val$requestCode;
    private final /* synthetic */ Intent zaoh;
    private final /* synthetic */ LifecycleFragment zaoi;

    zae(Intent intent, LifecycleFragment lifecycleFragment, int i2) {
        this.zaoh = intent;
        this.zaoi = lifecycleFragment;
        this.val$requestCode = i2;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    public final void redirect() {
        Intent intent = this.zaoh;
        if (intent != null) {
            this.zaoi.startActivityForResult(intent, this.val$requestCode);
        }
    }
}
