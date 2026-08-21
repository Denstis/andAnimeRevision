package com.google.firebase.auth;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;
import com.google.firebase.annotations.PublicApi;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public class FirebaseAuthException extends FirebaseException {
    private final String zzc;

    @PublicApi
    public FirebaseAuthException(String str, String str2) {
        super(str2);
        this.zzc = Preconditions.checkNotEmpty(str);
    }

    @PublicApi
    public String getErrorCode() {
        return this.zzc;
    }
}
