package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes.dex */
abstract class zaau implements Runnable {
    private final /* synthetic */ zaak zagj;

    private zaau(zaak zaakVar) {
        this.zagj = zaakVar;
    }

    /* synthetic */ zaau(zaak zaakVar, zaal zaalVar) {
        this(zaakVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.zagj.zaeo.lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    zaan();
                }
            } catch (RuntimeException e2) {
                this.zagj.zaft.zab(e2);
            }
        } finally {
            this.zagj.zaeo.unlock();
        }
    }

    protected abstract void zaan();
}
