package com.google.firebase.storage;

import android.app.Activity;
import android.os.Build;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.storage.StorageTask;
import com.google.firebase.storage.StorageTask.ProvideError;
import com.google.firebase.storage.internal.ActivityLifecycleListener;
import com.google.firebase.storage.internal.SmartHandler;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class TaskListenerImpl<ListenerTypeT, ResultT extends StorageTask.ProvideError> {
    private OnRaise<ListenerTypeT, ResultT> onRaise;
    private int targetStates;
    private StorageTask<ResultT> task;
    private final Queue<ListenerTypeT> listenerQueue = new ConcurrentLinkedQueue();
    private final HashMap<ListenerTypeT, SmartHandler> handlerMap = new HashMap<>();

    interface OnRaise<ListenerTypeT, ResultT> {
        void raise(ListenerTypeT listenertypet, ResultT resultt);
    }

    public TaskListenerImpl(StorageTask<ResultT> storageTask, int i2, OnRaise<ListenerTypeT, ResultT> onRaise) {
        this.task = storageTask;
        this.targetStates = i2;
        this.onRaise = onRaise;
    }

    static /* synthetic */ void lambda$addListener$1(TaskListenerImpl taskListenerImpl, Object obj, StorageTask.ProvideError provideError) {
        taskListenerImpl.onRaise.raise(obj, provideError);
    }

    static /* synthetic */ void lambda$onInternalStateChanged$2(TaskListenerImpl taskListenerImpl, Object obj, StorageTask.ProvideError provideError) {
        taskListenerImpl.onRaise.raise(obj, provideError);
    }

    public void addListener(Activity activity, Executor executor, ListenerTypeT listenertypet) {
        boolean z;
        SmartHandler smartHandler;
        Preconditions.checkNotNull(listenertypet);
        synchronized (this.task.getSyncObject()) {
            boolean z2 = true;
            z = (this.task.getInternalState() & this.targetStates) != 0;
            this.listenerQueue.add(listenertypet);
            smartHandler = new SmartHandler(executor);
            this.handlerMap.put(listenertypet, smartHandler);
            if (activity != null) {
                if (Build.VERSION.SDK_INT >= 17) {
                    if (activity.isDestroyed()) {
                        z2 = false;
                    }
                    Preconditions.checkArgument(z2, "Activity is already destroyed!");
                }
                ActivityLifecycleListener.getInstance().runOnActivityStopped(activity, listenertypet, TaskListenerImpl$$Lambda$1.lambdaFactory$(this, listenertypet));
            }
        }
        if (z) {
            smartHandler.callBack(TaskListenerImpl$$Lambda$2.lambdaFactory$(this, listenertypet, this.task.snapState()));
        }
    }

    public int getListenerCount() {
        return Math.max(this.listenerQueue.size(), this.handlerMap.size());
    }

    public void onInternalStateChanged() {
        if ((this.task.getInternalState() & this.targetStates) != 0) {
            StorageTask.ProvideError provideErrorSnapState = this.task.snapState();
            for (ListenerTypeT listenertypet : this.listenerQueue) {
                SmartHandler smartHandler = this.handlerMap.get(listenertypet);
                if (smartHandler != null) {
                    smartHandler.callBack(TaskListenerImpl$$Lambda$3.lambdaFactory$(this, listenertypet, provideErrorSnapState));
                }
            }
        }
    }

    public void removeListener(ListenerTypeT listenertypet) {
        Preconditions.checkNotNull(listenertypet);
        synchronized (this.task.getSyncObject()) {
            this.handlerMap.remove(listenertypet);
            this.listenerQueue.remove(listenertypet);
            ActivityLifecycleListener.getInstance().removeCookie(listenertypet);
        }
    }
}
