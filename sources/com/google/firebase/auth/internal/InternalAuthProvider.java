package com.google.firebase.auth.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.internal.InternalTokenProvider;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public interface InternalAuthProvider extends InternalTokenProvider {
    @KeepForSdk
    void addIdTokenListener(IdTokenListener idTokenListener);

    @Override // com.google.firebase.internal.InternalTokenProvider
    @KeepForSdk
    Task<GetTokenResult> getAccessToken(boolean z);

    @Override // com.google.firebase.internal.InternalTokenProvider
    String getUid();

    @KeepForSdk
    void removeIdTokenListener(IdTokenListener idTokenListener);
}
