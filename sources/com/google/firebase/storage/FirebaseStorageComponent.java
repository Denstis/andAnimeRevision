package com.google.firebase.storage;

import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.inject.Provider;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class FirebaseStorageComponent {
    private final FirebaseApp app;
    private final Provider<InternalAuthProvider> authProvider;
    private final Map<String, FirebaseStorage> instances = new HashMap();

    FirebaseStorageComponent(FirebaseApp firebaseApp, Provider<InternalAuthProvider> provider) {
        this.app = firebaseApp;
        this.authProvider = provider;
    }

    synchronized void clearInstancesForTesting() {
        this.instances.clear();
    }

    synchronized FirebaseStorage get(String str) {
        FirebaseStorage firebaseStorage;
        firebaseStorage = this.instances.get(str);
        if (firebaseStorage == null) {
            firebaseStorage = new FirebaseStorage(str, this.app, this.authProvider);
            this.instances.put(str, firebaseStorage);
        }
        return firebaseStorage;
    }
}
