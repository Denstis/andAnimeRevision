package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$CustomActionResultReceiver extends a.a.a.b.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f8d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Bundle f9e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f10f;

    @Override // a.a.a.b.b
    protected void a(int i2, Bundle bundle) {
        if (this.f10f == null) {
            return;
        }
        MediaSessionCompat.a(bundle);
        if (i2 == -1) {
            this.f10f.a(this.f8d, this.f9e, bundle);
            return;
        }
        if (i2 == 0) {
            this.f10f.c(this.f8d, this.f9e, bundle);
            return;
        }
        if (i2 == 1) {
            this.f10f.b(this.f8d, this.f9e, bundle);
            return;
        }
        Log.w("MediaBrowserCompat", "Unknown result code: " + i2 + " (extras=" + this.f9e + ", resultData=" + bundle + ")");
    }
}
