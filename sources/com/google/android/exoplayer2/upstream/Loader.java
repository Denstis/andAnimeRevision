package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class Loader implements LoaderErrorThrower {
    private static final int ACTION_TYPE_DONT_RETRY = 2;
    private static final int ACTION_TYPE_DONT_RETRY_FATAL = 3;
    private static final int ACTION_TYPE_RETRY = 0;
    private static final int ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT = 1;
    public static final LoadErrorAction DONT_RETRY;
    public static final LoadErrorAction DONT_RETRY_FATAL;
    public static final LoadErrorAction RETRY;
    public static final LoadErrorAction RETRY_RESET_ERROR_COUNT;
    private LoadTask<? extends Loadable> currentTask;
    private final ExecutorService downloadExecutorService;
    private IOException fatalError;

    public interface Callback<T extends Loadable> {
        void onLoadCanceled(T t, long j2, long j3, boolean z);

        void onLoadCompleted(T t, long j2, long j3);

        LoadErrorAction onLoadError(T t, long j2, long j3, IOException iOException, int i2);
    }

    public static final class LoadErrorAction {
        private final long retryDelayMillis;
        private final int type;

        private LoadErrorAction(int i2, long j2) {
            this.type = i2;
            this.retryDelayMillis = j2;
        }

        public boolean isRetry() {
            int i2 = this.type;
            return i2 == 0 || i2 == 1;
        }
    }

    @SuppressLint({"HandlerLeak"})
    private final class LoadTask<T extends Loadable> extends Handler implements Runnable {
        private static final int MSG_CANCEL = 1;
        private static final int MSG_END_OF_SOURCE = 2;
        private static final int MSG_FATAL_ERROR = 4;
        private static final int MSG_IO_EXCEPTION = 3;
        private static final int MSG_START = 0;
        private static final String TAG = "LoadTask";
        private Callback<T> callback;
        private volatile boolean canceled;
        private IOException currentError;
        public final int defaultMinRetryCount;
        private int errorCount;
        private volatile Thread executorThread;
        private final T loadable;
        private volatile boolean released;
        private final long startTimeMs;

        public LoadTask(Looper looper, T t, Callback<T> callback, int i2, long j2) {
            super(looper);
            this.loadable = t;
            this.callback = callback;
            this.defaultMinRetryCount = i2;
            this.startTimeMs = j2;
        }

        private void execute() {
            this.currentError = null;
            Loader.this.downloadExecutorService.execute(Loader.this.currentTask);
        }

        private void finish() {
            Loader.this.currentTask = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z) {
            this.released = z;
            this.currentError = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.canceled = true;
                this.loadable.cancelLoad();
                if (this.executorThread != null) {
                    this.executorThread.interrupt();
                }
            }
            if (z) {
                finish();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.callback.onLoadCanceled(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.released) {
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
            long j2 = jElapsedRealtime - this.startTimeMs;
            if (this.canceled) {
                this.callback.onLoadCanceled(this.loadable, jElapsedRealtime, j2, false);
                return;
            }
            int i3 = message.what;
            if (i3 == 1) {
                this.callback.onLoadCanceled(this.loadable, jElapsedRealtime, j2, false);
                return;
            }
            if (i3 == 2) {
                try {
                    this.callback.onLoadCompleted(this.loadable, jElapsedRealtime, j2);
                    return;
                } catch (RuntimeException e2) {
                    Log.e(TAG, "Unexpected exception handling load completed", e2);
                    Loader.this.fatalError = new UnexpectedLoaderException(e2);
                    return;
                }
            }
            if (i3 != 3) {
                return;
            }
            this.currentError = (IOException) message.obj;
            this.errorCount++;
            LoadErrorAction loadErrorActionOnLoadError = this.callback.onLoadError(this.loadable, jElapsedRealtime, j2, this.currentError, this.errorCount);
            if (loadErrorActionOnLoadError.type == 3) {
                Loader.this.fatalError = this.currentError;
            } else if (loadErrorActionOnLoadError.type != 2) {
                if (loadErrorActionOnLoadError.type == 1) {
                    this.errorCount = 1;
                }
                start(loadErrorActionOnLoadError.retryDelayMillis != C.TIME_UNSET ? loadErrorActionOnLoadError.retryDelayMillis : getRetryDelayMillis());
            }
        }

        public void maybeThrowError(int i2) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i2) {
                throw iOException;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Object e2;
            try {
                this.executorThread = Thread.currentThread();
                if (!this.canceled) {
                    TraceUtil.beginSection("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        TraceUtil.endSection();
                    } catch (Throwable th) {
                        TraceUtil.endSection();
                        throw th;
                    }
                }
                if (this.released) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e3) {
                e2 = e3;
                if (this.released) {
                    return;
                }
                obtainMessage(3, e2).sendToTarget();
            } catch (Error e4) {
                Log.e(TAG, "Unexpected error loading stream", e4);
                if (!this.released) {
                    obtainMessage(4, e4).sendToTarget();
                }
                throw e4;
            } catch (InterruptedException unused) {
                Assertions.checkState(this.canceled);
                if (this.released) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (Exception e5) {
                Log.e(TAG, "Unexpected exception loading stream", e5);
                if (this.released) {
                    return;
                }
                e2 = new UnexpectedLoaderException(e5);
                obtainMessage(3, e2).sendToTarget();
            } catch (OutOfMemoryError e6) {
                Log.e(TAG, "OutOfMemory error loading stream", e6);
                if (this.released) {
                    return;
                }
                e2 = new UnexpectedLoaderException(e6);
                obtainMessage(3, e2).sendToTarget();
            }
        }

        public void start(long j2) {
            Assertions.checkState(Loader.this.currentTask == null);
            Loader.this.currentTask = this;
            if (j2 > 0) {
                sendEmptyMessageDelayed(0, j2);
            } else {
                execute();
            }
        }
    }

    public interface Loadable {
        void cancelLoad();

        void load();
    }

    public interface ReleaseCallback {
        void onLoaderReleased();
    }

    private static final class ReleaseTask implements Runnable {
        private final ReleaseCallback callback;

        public ReleaseTask(ReleaseCallback releaseCallback) {
            this.callback = releaseCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.callback.onLoaderReleased();
        }
    }

    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    static {
        long j2 = C.TIME_UNSET;
        RETRY = createRetryAction(false, C.TIME_UNSET);
        RETRY_RESET_ERROR_COUNT = createRetryAction(true, C.TIME_UNSET);
        DONT_RETRY = new LoadErrorAction(2, j2);
        DONT_RETRY_FATAL = new LoadErrorAction(3, j2);
    }

    public Loader(String str) {
        this.downloadExecutorService = Util.newSingleThreadExecutor(str);
    }

    public static LoadErrorAction createRetryAction(boolean z, long j2) {
        return new LoadErrorAction(z ? 1 : 0, j2);
    }

    public void cancelLoading() {
        this.currentTask.cancel(false);
    }

    public boolean isLoading() {
        return this.currentTask != null;
    }

    @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
    public void maybeThrowError() throws IOException {
        maybeThrowError(Integer.MIN_VALUE);
    }

    @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
    public void maybeThrowError(int i2) throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask<? extends Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            if (i2 == Integer.MIN_VALUE) {
                i2 = loadTask.defaultMinRetryCount;
            }
            loadTask.maybeThrowError(i2);
        }
    }

    public void release() {
        release(null);
    }

    public void release(ReleaseCallback releaseCallback) {
        LoadTask<? extends Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (releaseCallback != null) {
            this.downloadExecutorService.execute(new ReleaseTask(releaseCallback));
        }
        this.downloadExecutorService.shutdown();
    }

    public <T extends Loadable> long startLoading(T t, Callback<T> callback, int i2) {
        Looper looperMyLooper = Looper.myLooper();
        Assertions.checkState(looperMyLooper != null);
        this.fatalError = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looperMyLooper, t, callback, i2, jElapsedRealtime).start(0L);
        return jElapsedRealtime;
    }
}
