package com.google.android.exoplayer2.offline;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.exoplayer2.offline.DownloadAction;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_MAX_SIMULTANEOUS_DOWNLOADS = 1;
    public static final int DEFAULT_MIN_RETRY_COUNT = 5;
    private static final String TAG = "DownloadManager";
    private final ActionFile actionFile;
    private final ArrayList<Task> activeDownloadTasks;
    private final DownloadAction.Deserializer[] deserializers;
    private final DownloaderConstructorHelper downloaderConstructorHelper;
    private boolean downloadsStopped;
    private final Handler fileIOHandler;
    private final HandlerThread fileIOThread;
    private final Handler handler;
    private boolean initialized;
    private final CopyOnWriteArraySet<Listener> listeners;
    private final int maxActiveDownloadTasks;
    private final int minRetryCount;
    private int nextTaskId;
    private boolean released;
    private final ArrayList<Task> tasks;

    public interface Listener {
        void onIdle(DownloadManager downloadManager);

        void onInitialized(DownloadManager downloadManager);

        void onTaskStateChanged(DownloadManager downloadManager, TaskState taskState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Task implements Runnable {
        public static final int STATE_QUEUED_CANCELING = 5;
        public static final int STATE_STARTED_CANCELING = 6;
        public static final int STATE_STARTED_STOPPING = 7;
        private final DownloadAction action;
        private volatile int currentState;
        private final DownloadManager downloadManager;
        private volatile Downloader downloader;
        private Throwable error;
        private final int id;
        private final int minRetryCount;
        private Thread thread;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface InternalState {
        }

        private Task(int i2, DownloadManager downloadManager, DownloadAction downloadAction, int i3) {
            this.id = i2;
            this.downloadManager = downloadManager;
            this.action = downloadAction;
            this.currentState = 0;
            this.minRetryCount = i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean canStart() {
            return this.currentState == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() {
            if (changeStateAndNotify(0, 5)) {
                this.downloadManager.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3978b.a();
                    }
                });
            } else if (changeStateAndNotify(1, 6)) {
                cancelDownload();
            }
        }

        private void cancelDownload() {
            if (this.downloader != null) {
                this.downloader.cancel();
            }
            this.thread.interrupt();
        }

        private boolean changeStateAndNotify(int i2, int i3) {
            return changeStateAndNotify(i2, i3, null);
        }

        private boolean changeStateAndNotify(int i2, int i3, Throwable th) {
            if (this.currentState != i2) {
                return false;
            }
            this.currentState = i3;
            this.error = th;
            if (!(this.currentState != getExternalState())) {
                this.downloadManager.onTaskStateChange(this);
            }
            return true;
        }

        private int getExternalState() {
            int i2 = this.currentState;
            if (i2 == 5) {
                return 0;
            }
            if (i2 == 6 || i2 == 7) {
                return 1;
            }
            return this.currentState;
        }

        private int getRetryDelayMillis(int i2) {
            return Math.min((i2 - 1) * 1000, 5000);
        }

        private String getStateString() {
            int i2 = this.currentState;
            return (i2 == 5 || i2 == 6) ? "CANCELING" : i2 != 7 ? TaskState.getStateString(this.currentState) : "STOPPING";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void start() {
            if (changeStateAndNotify(0, 1)) {
                this.thread = new Thread(this);
                this.thread.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stop() {
            if (changeStateAndNotify(1, 7)) {
                DownloadManager.logd("Stopping", this);
                cancelDownload();
            }
        }

        private static String toString(byte[] bArr) {
            if (bArr.length > 100) {
                return "<data is too long>";
            }
            return '\'' + Util.fromUtf8Bytes(bArr) + '\'';
        }

        public /* synthetic */ void a() {
            changeStateAndNotify(5, 3);
        }

        public /* synthetic */ void a(Throwable th) {
            if (!changeStateAndNotify(1, th != null ? 4 : 2, th) && !changeStateAndNotify(6, 3) && !changeStateAndNotify(7, 0)) {
                throw new IllegalStateException();
            }
        }

        public float getDownloadPercentage() {
            if (this.downloader != null) {
                return this.downloader.getDownloadPercentage();
            }
            return -1.0f;
        }

        public TaskState getDownloadState() {
            return new TaskState(this.id, this.action, getExternalState(), getDownloadPercentage(), getDownloadedBytes(), this.error);
        }

        public long getDownloadedBytes() {
            if (this.downloader != null) {
                return this.downloader.getDownloadedBytes();
            }
            return 0L;
        }

        public boolean isActive() {
            return this.currentState == 5 || this.currentState == 1 || this.currentState == 7 || this.currentState == 6;
        }

        public boolean isFinished() {
            return this.currentState == 4 || this.currentState == 2 || this.currentState == 3;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadManager.logd("Task is started", this);
            try {
                this.downloader = this.action.createDownloader(this.downloadManager.downloaderConstructorHelper);
                if (this.action.isRemoveAction) {
                    this.downloader.remove();
                } else {
                    long j2 = -1;
                    int i2 = 0;
                    while (!Thread.interrupted()) {
                        try {
                            this.downloader.download();
                            break;
                        } catch (IOException e2) {
                            long downloadedBytes = this.downloader.getDownloadedBytes();
                            if (downloadedBytes != j2) {
                                DownloadManager.logd("Reset error count. downloadedBytes = " + downloadedBytes, this);
                                j2 = downloadedBytes;
                                i2 = 0;
                            }
                            if (this.currentState != 1 || (i2 = i2 + 1) > this.minRetryCount) {
                                throw e2;
                            }
                            DownloadManager.logd("Download error. Retry " + i2, this);
                            Thread.sleep((long) getRetryDelayMillis(i2));
                        }
                    }
                }
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            this.downloadManager.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3979b.a(th);
                }
            });
        }

        public String toString() {
            return super.toString();
        }
    }

    public static final class TaskState {
        public static final int STATE_CANCELED = 3;
        public static final int STATE_COMPLETED = 2;
        public static final int STATE_FAILED = 4;
        public static final int STATE_QUEUED = 0;
        public static final int STATE_STARTED = 1;
        public final DownloadAction action;
        public final float downloadPercentage;
        public final long downloadedBytes;
        public final Throwable error;
        public final int state;
        public final int taskId;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface State {
        }

        private TaskState(int i2, DownloadAction downloadAction, int i3, float f2, long j2, Throwable th) {
            this.taskId = i2;
            this.action = downloadAction;
            this.state = i3;
            this.downloadPercentage = f2;
            this.downloadedBytes = j2;
            this.error = th;
        }

        public static String getStateString(int i2) {
            if (i2 == 0) {
                return "QUEUED";
            }
            if (i2 == 1) {
                return "STARTED";
            }
            if (i2 == 2) {
                return "COMPLETED";
            }
            if (i2 == 3) {
                return "CANCELED";
            }
            if (i2 == 4) {
                return "FAILED";
            }
            throw new IllegalStateException();
        }
    }

    public DownloadManager(DownloaderConstructorHelper downloaderConstructorHelper, int i2, int i3, File file, DownloadAction.Deserializer... deserializerArr) {
        this.downloaderConstructorHelper = downloaderConstructorHelper;
        this.maxActiveDownloadTasks = i2;
        this.minRetryCount = i3;
        this.actionFile = new ActionFile(file);
        this.deserializers = deserializerArr.length <= 0 ? DownloadAction.getDefaultDeserializers() : deserializerArr;
        this.downloadsStopped = true;
        this.tasks = new ArrayList<>();
        this.activeDownloadTasks = new ArrayList<>();
        Looper looperMyLooper = Looper.myLooper();
        this.handler = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper);
        this.fileIOThread = new HandlerThread("DownloadManager file i/o");
        this.fileIOThread.start();
        this.fileIOHandler = new Handler(this.fileIOThread.getLooper());
        this.listeners = new CopyOnWriteArraySet<>();
        loadActions();
        logd("Created");
    }

    public DownloadManager(DownloaderConstructorHelper downloaderConstructorHelper, File file, DownloadAction.Deserializer... deserializerArr) {
        this(downloaderConstructorHelper, 1, 5, file, deserializerArr);
    }

    public DownloadManager(Cache cache, DataSource.Factory factory, File file, DownloadAction.Deserializer... deserializerArr) {
        this(new DownloaderConstructorHelper(cache, factory), file, deserializerArr);
    }

    private Task addTaskForAction(DownloadAction downloadAction) {
        int i2 = this.nextTaskId;
        this.nextTaskId = i2 + 1;
        Task task = new Task(i2, this, downloadAction, this.minRetryCount);
        this.tasks.add(task);
        logd("Task is added", task);
        return task;
    }

    private void loadActions() {
        this.fileIOHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f3975b.a();
            }
        });
    }

    private static void logd(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logd(String str, Task task) {
        logd(str + ": " + task);
    }

    private void maybeNotifyListenersIdle() {
        if (isIdle()) {
            logd("Notify idle state");
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onIdle(this);
            }
        }
    }

    private void maybeStartTasks() {
        DownloadAction downloadAction;
        boolean z;
        if (!this.initialized || this.released) {
            return;
        }
        boolean z2 = this.downloadsStopped || this.activeDownloadTasks.size() == this.maxActiveDownloadTasks;
        for (int i2 = 0; i2 < this.tasks.size(); i2++) {
            Task task = this.tasks.get(i2);
            if (task.canStart() && ((z = (downloadAction = task.action).isRemoveAction) || !z2)) {
                int i3 = 0;
                boolean z3 = true;
                while (true) {
                    if (i3 >= i2) {
                        break;
                    }
                    Task task2 = this.tasks.get(i3);
                    if (task2.action.isSameMedia(downloadAction)) {
                        if (!z) {
                            if (task2.action.isRemoveAction) {
                                z2 = true;
                                z3 = false;
                                break;
                            }
                        } else {
                            logd(task + " clashes with " + task2);
                            task2.cancel();
                            z3 = false;
                        }
                    }
                    i3++;
                }
                if (z3) {
                    task.start();
                    if (!z) {
                        this.activeDownloadTasks.add(task);
                        z2 = this.activeDownloadTasks.size() == this.maxActiveDownloadTasks;
                    }
                }
            }
        }
    }

    private void notifyListenersTaskStateChange(Task task) {
        logd("Task state is changed", task);
        TaskState downloadState = task.getDownloadState();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onTaskStateChanged(this, downloadState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTaskStateChange(Task task) {
        if (this.released) {
            return;
        }
        boolean z = !task.isActive();
        if (z) {
            this.activeDownloadTasks.remove(task);
        }
        notifyListenersTaskStateChange(task);
        if (task.isFinished()) {
            this.tasks.remove(task);
            saveActions();
        }
        if (z) {
            maybeStartTasks();
            maybeNotifyListenersIdle();
        }
    }

    private void saveActions() {
        if (this.released) {
            return;
        }
        final DownloadAction[] downloadActionArr = new DownloadAction[this.tasks.size()];
        for (int i2 = 0; i2 < this.tasks.size(); i2++) {
            downloadActionArr[i2] = this.tasks.get(i2).action;
        }
        this.fileIOHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.d
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f3976b.b(downloadActionArr);
            }
        });
    }

    public /* synthetic */ void a() {
        final DownloadAction[] downloadActionArrLoad;
        try {
            downloadActionArrLoad = this.actionFile.load(this.deserializers);
            logd("Action file is loaded.");
        } catch (Throwable th) {
            Log.e(TAG, "Action file loading failed.", th);
            downloadActionArrLoad = new DownloadAction[0];
        }
        this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f3981b.a(downloadActionArrLoad);
            }
        });
    }

    public /* synthetic */ void a(DownloadAction[] downloadActionArr) {
        if (this.released) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.tasks);
        this.tasks.clear();
        for (DownloadAction downloadAction : downloadActionArr) {
            addTaskForAction(downloadAction);
        }
        logd("Tasks are created.");
        this.initialized = true;
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onInitialized(this);
        }
        if (!arrayList.isEmpty()) {
            this.tasks.addAll(arrayList);
            saveActions();
        }
        maybeStartTasks();
        for (int i2 = 0; i2 < this.tasks.size(); i2++) {
            Task task = this.tasks.get(i2);
            if (task.currentState == 0) {
                notifyListenersTaskStateChange(task);
            }
        }
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public /* synthetic */ void b(DownloadAction[] downloadActionArr) throws Throwable {
        try {
            this.actionFile.store(downloadActionArr);
            logd("Actions persisted.");
        } catch (IOException e2) {
            Log.e(TAG, "Persisting actions failed.", e2);
        }
    }

    public TaskState[] getAllTaskStates() {
        Assertions.checkState(!this.released);
        TaskState[] taskStateArr = new TaskState[this.tasks.size()];
        for (int i2 = 0; i2 < taskStateArr.length; i2++) {
            taskStateArr[i2] = this.tasks.get(i2).getDownloadState();
        }
        return taskStateArr;
    }

    public int getDownloadCount() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.tasks.size(); i3++) {
            if (!this.tasks.get(i3).action.isRemoveAction) {
                i2++;
            }
        }
        return i2;
    }

    public int getTaskCount() {
        Assertions.checkState(!this.released);
        return this.tasks.size();
    }

    public TaskState getTaskState(int i2) {
        Assertions.checkState(!this.released);
        for (int i3 = 0; i3 < this.tasks.size(); i3++) {
            Task task = this.tasks.get(i3);
            if (task.id == i2) {
                return task.getDownloadState();
            }
        }
        return null;
    }

    public int handleAction(DownloadAction downloadAction) {
        Assertions.checkState(!this.released);
        Task taskAddTaskForAction = addTaskForAction(downloadAction);
        if (this.initialized) {
            saveActions();
            maybeStartTasks();
            if (taskAddTaskForAction.currentState == 0) {
                notifyListenersTaskStateChange(taskAddTaskForAction);
            }
        }
        return taskAddTaskForAction.id;
    }

    public int handleAction(byte[] bArr) {
        Assertions.checkState(!this.released);
        return handleAction(DownloadAction.deserializeFromStream(this.deserializers, new ByteArrayInputStream(bArr)));
    }

    public boolean isIdle() {
        Assertions.checkState(!this.released);
        if (!this.initialized) {
            return false;
        }
        for (int i2 = 0; i2 < this.tasks.size(); i2++) {
            if (this.tasks.get(i2).isActive()) {
                return false;
            }
        }
        return true;
    }

    public boolean isInitialized() {
        Assertions.checkState(!this.released);
        return this.initialized;
    }

    public void release() {
        if (this.released) {
            return;
        }
        this.released = true;
        for (int i2 = 0; i2 < this.tasks.size(); i2++) {
            this.tasks.get(i2).stop();
        }
        final ConditionVariable conditionVariable = new ConditionVariable();
        Handler handler = this.fileIOHandler;
        conditionVariable.getClass();
        handler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.h
            @Override // java.lang.Runnable
            public final void run() {
                conditionVariable.open();
            }
        });
        conditionVariable.block();
        this.fileIOThread.quit();
        logd("Released");
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public void startDownloads() {
        Assertions.checkState(!this.released);
        if (this.downloadsStopped) {
            this.downloadsStopped = false;
            maybeStartTasks();
            logd("Downloads are started");
        }
    }

    public void stopDownloads() {
        Assertions.checkState(!this.released);
        if (this.downloadsStopped) {
            return;
        }
        this.downloadsStopped = true;
        for (int i2 = 0; i2 < this.activeDownloadTasks.size(); i2++) {
            this.activeDownloadTasks.get(i2).stop();
        }
        logd("Downloads are stopping");
    }
}
