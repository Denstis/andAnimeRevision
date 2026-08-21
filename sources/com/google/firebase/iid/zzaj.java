package com.google.firebase.iid;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzaj extends zzah<Bundle> {
    zzaj(int i2, int i3, Bundle bundle) {
        super(i2, 1, bundle);
    }

    @Override // com.google.firebase.iid.zzah
    final void zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        zza(bundle2);
    }

    @Override // com.google.firebase.iid.zzah
    final boolean zza() {
        return false;
    }
}
