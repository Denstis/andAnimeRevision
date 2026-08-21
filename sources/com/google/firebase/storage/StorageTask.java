package com.google.firebase.storage;

import android.app.Activity;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.storage.StorageTask.ProvideError;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class StorageTask<ResultT extends ProvideError> extends ControllableTask<ResultT> {
    static final int INTERNAL_STATE_CANCELED = 256;
    static final int INTERNAL_STATE_CANCELING = 32;
    static final int INTERNAL_STATE_FAILURE = 64;
    static final int INTERNAL_STATE_IN_PROGRESS = 4;
    static final int INTERNAL_STATE_NOT_STARTED = 1;
    static final int INTERNAL_STATE_PAUSED = 16;
    static final int INTERNAL_STATE_PAUSING = 8;
    static final int INTERNAL_STATE_QUEUED = 2;
    static final int INTERNAL_STATE_SUCCESS = 128;
    static final int STATES_CANCELED = 256;
    static final int STATES_COMPLETE = 448;
    static final int STATES_FAILURE = 64;
    static final int STATES_INPROGRESS = -465;
    static final int STATES_PAUSED = 16;
    static final int STATES_SUCCESS = 128;
    private static final String TAG = "StorageTask";
    private ResultT finalResult;
    private static final HashMap<Integer, HashSet<Integer>> ValidUserInitiatedStateChanges = new HashMap<>();
    private static final HashMap<Integer, HashSet<Integer>> ValidTaskInitiatedStateChanges = new HashMap<>();
    protected final Object syncObject = new Object();
    final TaskListenerImpl<OnSuccessListener<? super ResultT>, ResultT> successManager = new TaskListenerImpl<>(this, 128, StorageTask$$Lambda$1.lambdaFactory$(this));
    final TaskListenerImpl<OnFailureListener, ResultT> failureManager = new TaskListenerImpl<>(this, 64, StorageTask$$Lambda$4.lambdaFactory$(this));
    final TaskListenerImpl<OnCompleteListener<ResultT>, ResultT> completeListener = new TaskListenerImpl<>(this, STATES_COMPLETE, StorageTask$$Lambda$5.lambdaFactory$(this));
    final TaskListenerImpl<OnCanceledListener, ResultT> cancelManager = new TaskListenerImpl<>(this, 256, StorageTask$$Lambda$6.lambdaFactory$(this));
    final TaskListenerImpl<OnProgressListener<? super ResultT>, ResultT> progressManager = new TaskListenerImpl<>(this, STATES_INPROGRESS, StorageTask$$Lambda$7.instance);
    final TaskListenerImpl<OnPausedListener<? super ResultT>, ResultT> pausedManager = new TaskListenerImpl<>(this, 16, StorageTask$$Lambda$8.instance);
    private volatile int currentState = 1;

    protected interface ProvideError {
        Exception getError();
    }

    public class SnapshotBase implements ProvideError {
        private final Exception error;

        public SnapshotBase(Exception exc) {
            StorageException storageExceptionFromErrorStatus;
            Status status;
            if (exc != null) {
                this.error = exc;
                return;
            }
            if (StorageTask.this.isCanceled()) {
                status = Status.RESULT_CANCELED;
            } else {
                if (StorageTask.this.getInternalState() != 64) {
                    storageExceptionFromErrorStatus = null;
                    this.error = storageExceptionFromErrorStatus;
                }
                status = Status.RESULT_INTERNAL_ERROR;
            }
            storageExceptionFromErrorStatus = StorageException.fromErrorStatus(status);
            this.error = storageExceptionFromErrorStatus;
        }

        @Override // com.google.firebase.storage.StorageTask.ProvideError
        public Exception getError() {
            return this.error;
        }

        public StorageReference getStorage() {
            return getTask().getStorage();
        }

        public StorageTask<ResultT> getTask() {
            return StorageTask.this;
        }
    }

    static {
        ValidUserInitiatedStateChanges.put(1, new HashSet<>(Arrays.asList(16, 256)));
        ValidUserInitiatedStateChanges.put(2, new HashSet<>(Arrays.asList(8, 32)));
        ValidUserInitiatedStateChanges.put(4, new HashSet<>(Arrays.asList(8, 32)));
        ValidUserInitiatedStateChanges.put(16, new HashSet<>(Arrays.asList(2, 256)));
        ValidUserInitiatedStateChanges.put(64, new HashSet<>(Arrays.asList(2, 256)));
        ValidTaskInitiatedStateChanges.put(1, new HashSet<>(Arrays.asList(2, 64)));
        ValidTaskInitiatedStateChanges.put(2, new HashSet<>(Arrays.asList(4, 64, 128)));
        ValidTaskInitiatedStateChanges.put(4, new HashSet<>(Arrays.asList(4, 64, 128)));
        ValidTaskInitiatedStateChanges.put(8, new HashSet<>(Arrays.asList(16, 64, 128)));
        ValidTaskInitiatedStateChanges.put(32, new HashSet<>(Arrays.asList(256, 64, 128)));
    }

    protected StorageTask() {
    }

    private <ContinuationResultT> Task<ContinuationResultT> continueWithImpl(Executor executor, Continuation<ResultT, ContinuationResultT> continuation) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.completeListener.addListener(null, executor, StorageTask$$Lambda$9.lambdaFactory$(this, continuation, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private <ContinuationResultT> Task<ContinuationResultT> continueWithTaskImpl(Executor executor, Continuation<ResultT, Task<ContinuationResultT>> continuation) {
        CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationTokenSource.getToken());
        this.completeListener.addListener(null, executor, StorageTask$$Lambda$10.lambdaFactory$(this, continuation, taskCompletionSource, cancellationTokenSource));
        return taskCompletionSource.getTask();
    }

    private void ensureFinalState() {
        if (isComplete() || isPaused() || getInternalState() == 2 || tryChangeState(256, false)) {
            return;
        }
        tryChangeState(64, false);
    }

    private ResultT getFinalResult() {
        ResultT resultt = this.finalResult;
        if (resultt != null) {
            return resultt;
        }
        if (!isComplete()) {
            return null;
        }
        if (this.finalResult == null) {
            this.finalResult = (ResultT) snapState();
        }
        return this.finalResult;
    }

    private String getStateString(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 4 ? i2 != 8 ? i2 != 16 ? i2 != 32 ? i2 != 64 ? i2 != 128 ? i2 != 256 ? "Unknown Internal State!" : "INTERNAL_STATE_CANCELED" : "INTERNAL_STATE_SUCCESS" : "INTERNAL_STATE_FAILURE" : "INTERNAL_STATE_CANCELING" : "INTERNAL_STATE_PAUSED" : "INTERNAL_STATE_PAUSING" : "INTERNAL_STATE_IN_PROGRESS" : "INTERNAL_STATE_QUEUED" : "INTERNAL_STATE_NOT_STARTED";
    }

    private String getStateString(int[] iArr) {
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 : iArr) {
            sb.append(getStateString(i2));
            sb.append(", ");
        }
        return sb.substring(0, sb.length() - 2);
    }

    static /* synthetic */ void lambda$continueWithImpl$4(StorageTask storageTask, Continuation continuation, TaskCompletionSource taskCompletionSource, Task task) {
        try {
            Object objThen = continuation.then(storageTask);
            if (taskCompletionSource.getTask().isComplete()) {
                return;
            }
            taskCompletionSource.setResult(objThen);
        } catch (RuntimeExecutionException e2) {
            boolean z = e2.getCause() instanceof Exception;
            Exception exc = e2;
            if (z) {
                exc = (Exception) e2.getCause();
            }
            taskCompletionSource.setException(exc);
        } catch (Exception e3) {
            taskCompletionSource.setException(e3);
        }
    }

    static /* synthetic */ void lambda$continueWithTaskImpl$5(StorageTask storageTask, Continuation continuation, TaskCompletionSource taskCompletionSource, CancellationTokenSource cancellationTokenSource, Task task) {
        try {
            Task task2 = (Task) continuation.then(storageTask);
            if (taskCompletionSource.getTask().isComplete()) {
                return;
            }
            if (task2 == null) {
                taskCompletionSource.setException(new NullPointerException("Continuation returned null"));
                return;
            }
            taskCompletionSource.getClass();
            task2.addOnSuccessListener(StorageTask$$Lambda$16.lambdaFactory$(taskCompletionSource));
            taskCompletionSource.getClass();
            task2.addOnFailureListener(StorageTask$$Lambda$17.lambdaFactory$(taskCompletionSource));
            cancellationTokenSource.getClass();
            task2.addOnCanceledListener(StorageTask$$Lambda$18.lambdaFactory$(cancellationTokenSource));
        } catch (RuntimeExecutionException e2) {
            boolean z = e2.getCause() instanceof Exception;
            Exception exc = e2;
            if (z) {
                exc = (Exception) e2.getCause();
            }
            taskCompletionSource.setException(exc);
        } catch (Exception e3) {
            taskCompletionSource.setException(e3);
        }
    }

    static /* synthetic */ void lambda$getRunnable$7(StorageTask storageTask) {
        try {
            storageTask.run();
        } finally {
            storageTask.ensureFinalState();
        }
    }

    static /* synthetic */ void lambda$new$0(StorageTask storageTask, OnSuccessListener onSuccessListener, ProvideError provideError) {
        StorageTaskManager.getInstance().unRegister(storageTask);
        onSuccessListener.onSuccess(provideError);
    }

    static /* synthetic */ void lambda$new$1(StorageTask storageTask, OnFailureListener onFailureListener, ProvideError provideError) {
        StorageTaskManager.getInstance().unRegister(storageTask);
        onFailureListener.onFailure(provideError.getError());
    }

    static /* synthetic */ void lambda$new$2(StorageTask storageTask, OnCompleteListener onCompleteListener, ProvideError provideError) {
        StorageTaskManager.getInstance().unRegister(storageTask);
        onCompleteListener.onComplete(storageTask);
    }

    static /* synthetic */ void lambda$new$3(StorageTask storageTask, OnCanceledListener onCanceledListener, ProvideError provideError) {
        StorageTaskManager.getInstance().unRegister(storageTask);
        onCanceledListener.onCanceled();
    }

    static /* synthetic */ void lambda$successTaskImpl$6(SuccessContinuation successContinuation, TaskCompletionSource taskCompletionSource, CancellationTokenSource cancellationTokenSource, ProvideError provideError) {
        try {
            Task taskThen = successContinuation.then(provideError);
            taskCompletionSource.getClass();
            taskThen.addOnSuccessListener(StorageTask$$Lambda$13.lambdaFactory$(taskCompletionSource));
            taskCompletionSource.getClass();
            taskThen.addOnFailureListener(StorageTask$$Lambda$14.lambdaFactory$(taskCompletionSource));
            cancellationTokenSource.getClass();
            taskThen.addOnCanceledListener(StorageTask$$Lambda$15.lambdaFactory$(cancellationTokenSource));
        } catch (RuntimeExecutionException e2) {
            boolean z = e2.getCause() instanceof Exception;
            Exception exc = e2;
            if (z) {
                exc = (Exception) e2.getCause();
            }
            taskCompletionSource.setException(exc);
        } catch (Exception e3) {
            taskCompletionSource.setException(e3);
        }
    }

    private <ContinuationResultT> Task<ContinuationResultT> successTaskImpl(Executor executor, SuccessContinuation<ResultT, ContinuationResultT> successContinuation) {
        CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationTokenSource.getToken());
        this.successManager.addListener(null, executor, StorageTask$$Lambda$11.lambdaFactory$(successContinuation, taskCompletionSource, cancellationTokenSource));
        return taskCompletionSource.getTask();
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnCanceledListener(Activity activity, OnCanceledListener onCanceledListener) {
        Preconditions.checkNotNull(onCanceledListener);
        Preconditions.checkNotNull(activity);
        this.cancelManager.addListener(activity, null, onCanceledListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnCanceledListener(OnCanceledListener onCanceledListener) {
        Preconditions.checkNotNull(onCanceledListener);
        this.cancelManager.addListener(null, null, onCanceledListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnCanceledListener(Executor executor, OnCanceledListener onCanceledListener) {
        Preconditions.checkNotNull(onCanceledListener);
        Preconditions.checkNotNull(executor);
        this.cancelManager.addListener(null, executor, onCanceledListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnCompleteListener(Activity activity, OnCompleteListener<ResultT> onCompleteListener) {
        Preconditions.checkNotNull(onCompleteListener);
        Preconditions.checkNotNull(activity);
        this.completeListener.addListener(activity, null, onCompleteListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnCompleteListener(OnCompleteListener<ResultT> onCompleteListener) {
        Preconditions.checkNotNull(onCompleteListener);
        this.completeListener.addListener(null, null, onCompleteListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnCompleteListener(Executor executor, OnCompleteListener<ResultT> onCompleteListener) {
        Preconditions.checkNotNull(onCompleteListener);
        Preconditions.checkNotNull(executor);
        this.completeListener.addListener(null, executor, onCompleteListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnFailureListener(Activity activity, OnFailureListener onFailureListener) {
        Preconditions.checkNotNull(onFailureListener);
        Preconditions.checkNotNull(activity);
        this.failureManager.addListener(activity, null, onFailureListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnFailureListener(OnFailureListener onFailureListener) {
        Preconditions.checkNotNull(onFailureListener);
        this.failureManager.addListener(null, null, onFailureListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        Preconditions.checkNotNull(onFailureListener);
        Preconditions.checkNotNull(executor);
        this.failureManager.addListener(null, executor, onFailureListener);
        return this;
    }

    @Override // com.google.firebase.storage.ControllableTask
    public StorageTask<ResultT> addOnPausedListener(Activity activity, OnPausedListener<? super ResultT> onPausedListener) {
        Preconditions.checkNotNull(onPausedListener);
        Preconditions.checkNotNull(activity);
        this.pausedManager.addListener(activity, null, onPausedListener);
        return this;
    }

    @Override // com.google.firebase.storage.ControllableTask
    public StorageTask<ResultT> addOnPausedListener(OnPausedListener<? super ResultT> onPausedListener) {
        Preconditions.checkNotNull(onPausedListener);
        this.pausedManager.addListener(null, null, onPausedListener);
        return this;
    }

    @Override // com.google.firebase.storage.ControllableTask
    public StorageTask<ResultT> addOnPausedListener(Executor executor, OnPausedListener<? super ResultT> onPausedListener) {
        Preconditions.checkNotNull(onPausedListener);
        Preconditions.checkNotNull(executor);
        this.pausedManager.addListener(null, executor, onPausedListener);
        return this;
    }

    @Override // com.google.firebase.storage.CancellableTask
    public StorageTask<ResultT> addOnProgressListener(Activity activity, OnProgressListener<? super ResultT> onProgressListener) {
        Preconditions.checkNotNull(onProgressListener);
        Preconditions.checkNotNull(activity);
        this.progressManager.addListener(activity, null, onProgressListener);
        return this;
    }

    @Override // com.google.firebase.storage.CancellableTask
    public StorageTask<ResultT> addOnProgressListener(OnProgressListener<? super ResultT> onProgressListener) {
        Preconditions.checkNotNull(onProgressListener);
        this.progressManager.addListener(null, null, onProgressListener);
        return this;
    }

    @Override // com.google.firebase.storage.CancellableTask
    public StorageTask<ResultT> addOnProgressListener(Executor executor, OnProgressListener<? super ResultT> onProgressListener) {
        Preconditions.checkNotNull(onProgressListener);
        Preconditions.checkNotNull(executor);
        this.progressManager.addListener(null, executor, onProgressListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnSuccessListener(Activity activity, OnSuccessListener<? super ResultT> onSuccessListener) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(onSuccessListener);
        this.successManager.addListener(activity, null, onSuccessListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnSuccessListener(OnSuccessListener<? super ResultT> onSuccessListener) {
        Preconditions.checkNotNull(onSuccessListener);
        this.successManager.addListener(null, null, onSuccessListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public StorageTask<ResultT> addOnSuccessListener(Executor executor, OnSuccessListener<? super ResultT> onSuccessListener) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(onSuccessListener);
        this.successManager.addListener(null, executor, onSuccessListener);
        return this;
    }

    @Override // com.google.firebase.storage.CancellableTask
    public boolean cancel() {
        return tryChangeState(new int[]{256, 32}, true);
    }

    @Override // com.google.android.gms.tasks.Task
    public <ContinuationResultT> Task<ContinuationResultT> continueWith(Continuation<ResultT, ContinuationResultT> continuation) {
        return continueWithImpl(null, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public <ContinuationResultT> Task<ContinuationResultT> continueWith(Executor executor, Continuation<ResultT, ContinuationResultT> continuation) {
        return continueWithImpl(executor, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public <ContinuationResultT> Task<ContinuationResultT> continueWithTask(Continuation<ResultT, Task<ContinuationResultT>> continuation) {
        return continueWithTaskImpl(null, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public <ContinuationResultT> Task<ContinuationResultT> continueWithTask(Executor executor, Continuation<ResultT, Task<ContinuationResultT>> continuation) {
        return continueWithTaskImpl(executor, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public Exception getException() {
        if (getFinalResult() == null) {
            return null;
        }
        return getFinalResult().getError();
    }

    int getInternalState() {
        return this.currentState;
    }

    @Override // com.google.android.gms.tasks.Task
    public ResultT getResult() {
        if (getFinalResult() == null) {
            throw new IllegalStateException();
        }
        Exception error = getFinalResult().getError();
        if (error == null) {
            return (ResultT) getFinalResult();
        }
        throw new RuntimeExecutionException(error);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    @Override // com.google.android.gms.tasks.Task
    public <X extends Throwable> ResultT getResult(Class<X> cls) throws X {
        if (getFinalResult() == null) {
            throw new IllegalStateException();
        }
        if (cls.isInstance(getFinalResult().getError())) {
            throw cls.cast(getFinalResult().getError());
        }
        Exception error = getFinalResult().getError();
        if (error == null) {
            return (ResultT) getFinalResult();
        }
        throw new RuntimeExecutionException(error);
    }

    Runnable getRunnable() {
        return StorageTask$$Lambda$12.lambdaFactory$(this);
    }

    public ResultT getSnapshot() {
        return (ResultT) snapState();
    }

    abstract StorageReference getStorage();

    Object getSyncObject() {
        return this.syncObject;
    }

    @Override // com.google.firebase.storage.CancellableTask, com.google.android.gms.tasks.Task
    public boolean isCanceled() {
        return getInternalState() == 256;
    }

    @Override // com.google.android.gms.tasks.Task
    public boolean isComplete() {
        return (getInternalState() & STATES_COMPLETE) != 0;
    }

    @Override // com.google.firebase.storage.CancellableTask
    public boolean isInProgress() {
        return (getInternalState() & STATES_INPROGRESS) != 0;
    }

    @Override // com.google.firebase.storage.ControllableTask
    public boolean isPaused() {
        return (getInternalState() & 16) != 0;
    }

    @Override // com.google.android.gms.tasks.Task
    public boolean isSuccessful() {
        return (getInternalState() & 128) != 0;
    }

    protected void onCanceled() {
    }

    protected void onFailure() {
    }

    protected void onPaused() {
    }

    protected void onProgress() {
    }

    protected void onQueued() {
    }

    protected void onSuccess() {
    }

    @Override // com.google.android.gms.tasks.Task
    public <ContinuationResultT> Task<ContinuationResultT> onSuccessTask(SuccessContinuation<ResultT, ContinuationResultT> successContinuation) {
        return successTaskImpl(null, successContinuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public <ContinuationResultT> Task<ContinuationResultT> onSuccessTask(Executor executor, SuccessContinuation<ResultT, ContinuationResultT> successContinuation) {
        return successTaskImpl(executor, successContinuation);
    }

    @Override // com.google.firebase.storage.ControllableTask
    public boolean pause() {
        return tryChangeState(new int[]{16, 8}, true);
    }

    boolean queue() {
        if (!tryChangeState(2, false)) {
            return false;
        }
        schedule();
        return true;
    }

    public StorageTask<ResultT> removeOnCanceledListener(OnCanceledListener onCanceledListener) {
        Preconditions.checkNotNull(onCanceledListener);
        this.cancelManager.removeListener(onCanceledListener);
        return this;
    }

    public StorageTask<ResultT> removeOnCompleteListener(OnCompleteListener<ResultT> onCompleteListener) {
        Preconditions.checkNotNull(onCompleteListener);
        this.completeListener.removeListener(onCompleteListener);
        return this;
    }

    public StorageTask<ResultT> removeOnFailureListener(OnFailureListener onFailureListener) {
        Preconditions.checkNotNull(onFailureListener);
        this.failureManager.removeListener(onFailureListener);
        return this;
    }

    public StorageTask<ResultT> removeOnPausedListener(OnPausedListener<? super ResultT> onPausedListener) {
        Preconditions.checkNotNull(onPausedListener);
        this.pausedManager.removeListener(onPausedListener);
        return this;
    }

    public StorageTask<ResultT> removeOnProgressListener(OnProgressListener<? super ResultT> onProgressListener) {
        Preconditions.checkNotNull(onProgressListener);
        this.progressManager.removeListener(onProgressListener);
        return this;
    }

    public StorageTask<ResultT> removeOnSuccessListener(OnSuccessListener<? super ResultT> onSuccessListener) {
        Preconditions.checkNotNull(onSuccessListener);
        this.successManager.removeListener(onSuccessListener);
        return this;
    }

    void resetState() {
    }

    @Override // com.google.firebase.storage.ControllableTask
    public boolean resume() {
        if (!tryChangeState(2, true)) {
            return false;
        }
        resetState();
        schedule();
        return true;
    }

    abstract void run();

    abstract void schedule();

    ResultT snapState() {
        ResultT resultt;
        synchronized (this.syncObject) {
            resultt = (ResultT) snapStateImpl();
        }
        return resultt;
    }

    abstract ResultT snapStateImpl();

    boolean tryChangeState(int i2, boolean z) {
        return tryChangeState(new int[]{i2}, z);
    }

    boolean tryChangeState(int[] iArr, boolean z) {
        HashMap<Integer, HashSet<Integer>> map = z ? ValidUserInitiatedStateChanges : ValidTaskInitiatedStateChanges;
        synchronized (this.syncObject) {
            for (int i2 : iArr) {
                HashSet<Integer> hashSet = map.get(Integer.valueOf(getInternalState()));
                if (hashSet != null && hashSet.contains(Integer.valueOf(i2))) {
                    this.currentState = i2;
                    int i3 = this.currentState;
                    if (i3 == 2) {
                        StorageTaskManager.getInstance().ensureRegistered(this);
                        onQueued();
                    } else if (i3 == 4) {
                        onProgress();
                    } else if (i3 == 16) {
                        onPaused();
                    } else if (i3 == 64) {
                        onFailure();
                    } else if (i3 == 128) {
                        onSuccess();
                    } else if (i3 == 256) {
                        onCanceled();
                    }
                    this.successManager.onInternalStateChanged();
                    this.failureManager.onInternalStateChanged();
                    this.cancelManager.onInternalStateChanged();
                    this.completeListener.onInternalStateChanged();
                    this.pausedManager.onInternalStateChanged();
                    this.progressManager.onInternalStateChanged();
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "changed internal state to: " + getStateString(i2) + " isUser: " + z + " from state:" + getStateString(this.currentState));
                    }
                    return true;
                }
            }
            Log.w(TAG, "unable to change internal state to: " + getStateString(iArr) + " isUser: " + z + " from state:" + getStateString(this.currentState));
            return false;
        }
    }
}
