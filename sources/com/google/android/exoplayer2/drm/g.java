package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.EventDispatcher;

/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements EventDispatcher.Event {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ g f3954a = new g();

    private /* synthetic */ g() {
    }

    @Override // com.google.android.exoplayer2.util.EventDispatcher.Event
    public final void sendTo(Object obj) {
        ((DefaultDrmSessionEventListener) obj).onDrmKeysRestored();
    }
}
