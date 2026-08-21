package com.google.firebase.storage;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class StorageTaskScheduler {
    public static StorageTaskScheduler sInstance = new StorageTaskScheduler();
    private static BlockingQueue<Runnable> mCommandQueue = new LinkedBlockingQueue();
    private static final ThreadPoolExecutor COMMAND_POOL_EXECUTOR = new ThreadPoolExecutor(5, 5, 5, TimeUnit.SECONDS, mCommandQueue, new StorageThreadFactory("Command-"));
    private static BlockingQueue<Runnable> mUploadQueue = new LinkedBlockingQueue();
    private static final ThreadPoolExecutor UPLOAD_QUEUE_EXECUTOR = new ThreadPoolExecutor(2, 2, 5, TimeUnit.SECONDS, mUploadQueue, new StorageThreadFactory("Upload-"));
    private static BlockingQueue<Runnable> mDownloadQueue = new LinkedBlockingQueue();
    private static final ThreadPoolExecutor DOWNLOAD_QUEUE_EXECUTOR = new ThreadPoolExecutor(3, 3, 5, TimeUnit.SECONDS, mDownloadQueue, new StorageThreadFactory("Download-"));
    private static BlockingQueue<Runnable> mCallbackQueue = new LinkedBlockingQueue();
    private static final ThreadPoolExecutor CALLBACK_QUEUE_EXECUTOR = new ThreadPoolExecutor(1, 1, 5, TimeUnit.SECONDS, mCallbackQueue, new StorageThreadFactory("Callbacks-"));

    static class StorageThreadFactory implements ThreadFactory {
        private final String mNameSuffix;
        private final AtomicInteger threadNumber = new AtomicInteger(1);

        StorageThreadFactory(String str) {
            this.mNameSuffix = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "FirebaseStorage-" + this.mNameSuffix + this.threadNumber.getAndIncrement());
            thread.setDaemon(false);
            thread.setPriority(9);
            return thread;
        }
    }

    static {
        COMMAND_POOL_EXECUTOR.allowCoreThreadTimeOut(true);
        UPLOAD_QUEUE_EXECUTOR.allowCoreThreadTimeOut(true);
        DOWNLOAD_QUEUE_EXECUTOR.allowCoreThreadTimeOut(true);
        CALLBACK_QUEUE_EXECUTOR.allowCoreThreadTimeOut(true);
    }

    public static StorageTaskScheduler getInstance() {
        return sInstance;
    }

    public Executor getCommandPoolExecutor() {
        return COMMAND_POOL_EXECUTOR;
    }

    public void scheduleCallback(Runnable runnable) {
        CALLBACK_QUEUE_EXECUTOR.execute(runnable);
    }

    public void scheduleCommand(Runnable runnable) {
        COMMAND_POOL_EXECUTOR.execute(runnable);
    }

    public void scheduleDownload(Runnable runnable) {
        DOWNLOAD_QUEUE_EXECUTOR.execute(runnable);
    }

    public void scheduleUpload(Runnable runnable) {
        UPLOAD_QUEUE_EXECUTOR.execute(runnable);
    }
}
