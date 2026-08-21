package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
abstract class zad<T> extends zac {
    protected final TaskCompletionSource<T> zacn;

    public zad(int i2, TaskCompletionSource<T> taskCompletionSource) {
        super(i2);
        this.zacn = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public void zaa(Status status) {
        this.zacn.trySetException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final void zaa(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException {
        try {
            zad(zaaVar);
        } catch (DeadObjectException e2) {
            zaa(zab.zaa(e2));
            throw e2;
        } catch (RemoteException e3) {
            zaa(zab.zaa(e3));
        } catch (RuntimeException e4) {
            zaa(e4);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public void zaa(zaab zaabVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public void zaa(RuntimeException runtimeException) {
        this.zacn.trySetException(runtimeException);
    }

    protected abstract void zad(GoogleApiManager.zaa<?> zaaVar);
}
