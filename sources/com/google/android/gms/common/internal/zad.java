package com.google.android.gms.common.internal;

import android.content.Intent;
import b.k.a.d;

/* JADX INFO: loaded from: classes.dex */
final class zad extends DialogRedirect {
    private final /* synthetic */ d val$fragment;
    private final /* synthetic */ int val$requestCode;
    private final /* synthetic */ Intent zaoh;

    zad(Intent intent, d dVar, int i2) {
        this.zaoh = intent;
        this.val$fragment = dVar;
        this.val$requestCode = i2;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    public final void redirect() {
        Intent intent = this.zaoh;
        if (intent != null) {
            this.val$fragment.startActivityForResult(intent, this.val$requestCode);
        }
    }
}
