package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
final class zav implements zabt {
    private final /* synthetic */ zas zaeq;

    private zav(zas zasVar) {
        this.zaeq = zasVar;
    }

    /* synthetic */ zav(zas zasVar, zat zatVar) {
        this(zasVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(int i2, boolean z) {
        this.zaeq.zaeo.lock();
        try {
            if (this.zaeq.zaen) {
                this.zaeq.zaen = false;
                this.zaeq.zaa(i2, z);
            } else {
                this.zaeq.zaen = true;
                this.zaeq.zaef.onConnectionSuspended(i2);
            }
        } finally {
            this.zaeq.zaeo.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(Bundle bundle) {
        this.zaeq.zaeo.lock();
        try {
            this.zaeq.zaem = ConnectionResult.RESULT_SUCCESS;
            this.zaeq.zax();
        } finally {
            this.zaeq.zaeo.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zac(ConnectionResult connectionResult) {
        this.zaeq.zaeo.lock();
        try {
            this.zaeq.zaem = connectionResult;
            this.zaeq.zax();
        } finally {
            this.zaeq.zaeo.unlock();
        }
    }
}
