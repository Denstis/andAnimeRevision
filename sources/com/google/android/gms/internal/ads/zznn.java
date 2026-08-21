package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.zznq;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"HandlerLeak"})
final class zznn<T extends zznq> extends Handler implements Runnable {
    private volatile boolean zzaei;
    private final T zzbfr;
    private final zzno<T> zzbfs;
    public final int zzbft;
    private final long zzbfu;
    private IOException zzbfv;
    private int zzbfw;
    private volatile Thread zzbfx;
    private final /* synthetic */ zznl zzbfy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznn(zznl zznlVar, Looper looper, T t, zzno<T> zznoVar, int i2, long j2) {
        super(looper);
        this.zzbfy = zznlVar;
        this.zzbfr = t;
        this.zzbfs = zznoVar;
        this.zzbft = i2;
        this.zzbfu = j2;
    }

    private final void execute() {
        this.zzbfv = null;
        this.zzbfy.zzbfm.execute(this.zzbfy.zzbfn);
    }

    private final void finish() {
        this.zzbfy.zzbfn = null;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.zzaei) {
            return;
        }
        int i2 = message.what;
        if (i2 == 0) {
            execute();
            return;
        }
        if (i2 == 4) {
            throw ((Error) message.obj);
        }
        finish();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = jElapsedRealtime - this.zzbfu;
        if (this.zzbfr.zzhj()) {
            this.zzbfs.zza((zznq) this.zzbfr, jElapsedRealtime, j2, false);
            return;
        }
        int i3 = message.what;
        if (i3 == 1) {
            this.zzbfs.zza((zznq) this.zzbfr, jElapsedRealtime, j2, false);
            return;
        }
        if (i3 == 2) {
            this.zzbfs.zza(this.zzbfr, jElapsedRealtime, j2);
            return;
        }
        if (i3 != 3) {
            return;
        }
        this.zzbfv = (IOException) message.obj;
        int iZza = this.zzbfs.zza(this.zzbfr, jElapsedRealtime, j2, this.zzbfv);
        if (iZza == 3) {
            this.zzbfy.zzbfo = this.zzbfv;
        } else if (iZza != 2) {
            this.zzbfw = iZza == 1 ? 1 : this.zzbfw + 1;
            zzee(Math.min((this.zzbfw - 1) * 1000, 5000));
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzbfx = Thread.currentThread();
            if (!this.zzbfr.zzhj()) {
                String strValueOf = String.valueOf(this.zzbfr.getClass().getSimpleName());
                zzog.beginSection(strValueOf.length() != 0 ? "load:".concat(strValueOf) : new String("load:"));
                try {
                    this.zzbfr.zzhk();
                    zzog.endSection();
                } catch (Throwable th) {
                    zzog.endSection();
                    throw th;
                }
            }
            if (this.zzaei) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e2) {
            if (this.zzaei) {
                return;
            }
            obtainMessage(3, e2).sendToTarget();
        } catch (Exception e3) {
            Log.e("LoadTask", "Unexpected exception loading stream", e3);
            if (this.zzaei) {
                return;
            }
            obtainMessage(3, new zznp(e3)).sendToTarget();
        } catch (OutOfMemoryError e4) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e4);
            if (this.zzaei) {
                return;
            }
            obtainMessage(3, new zznp(e4)).sendToTarget();
        } catch (Error e5) {
            Log.e("LoadTask", "Unexpected error loading stream", e5);
            if (!this.zzaei) {
                obtainMessage(4, e5).sendToTarget();
            }
            throw e5;
        } catch (InterruptedException unused) {
            zznr.checkState(this.zzbfr.zzhj());
            if (this.zzaei) {
                return;
            }
            sendEmptyMessage(2);
        }
    }

    public final void zzbb(int i2) {
        IOException iOException = this.zzbfv;
        if (iOException != null && this.zzbfw > i2) {
            throw iOException;
        }
    }

    public final void zzee(long j2) {
        zznr.checkState(this.zzbfy.zzbfn == null);
        this.zzbfy.zzbfn = this;
        if (j2 > 0) {
            sendEmptyMessageDelayed(0, j2);
        } else {
            execute();
        }
    }

    public final void zzk(boolean z) {
        this.zzaei = z;
        this.zzbfv = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.zzbfr.cancelLoad();
            if (this.zzbfx != null) {
                this.zzbfx.interrupt();
            }
        }
        if (z) {
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.zzbfs.zza((zznq) this.zzbfr, jElapsedRealtime, jElapsedRealtime - this.zzbfu, true);
        }
    }
}
