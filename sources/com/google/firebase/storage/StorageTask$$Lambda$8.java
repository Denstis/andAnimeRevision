package com.google.firebase.storage;

import com.google.firebase.storage.StorageTask;
import com.google.firebase.storage.TaskListenerImpl;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class StorageTask$$Lambda$8 implements TaskListenerImpl.OnRaise {
    private static final StorageTask$$Lambda$8 instance = new StorageTask$$Lambda$8();

    private StorageTask$$Lambda$8() {
    }

    @Override // com.google.firebase.storage.TaskListenerImpl.OnRaise
    public void raise(Object obj, Object obj2) {
        ((OnPausedListener) obj).onPaused((StorageTask.ProvideError) obj2);
    }
}
