package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$ItemReceiver extends a.a.a.b.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f11d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f12e;

    @Override // a.a.a.b.b
    protected void a(int i2, Bundle bundle) {
        MediaSessionCompat.a(bundle);
        if (i2 != 0 || bundle == null || !bundle.containsKey("media_item")) {
            this.f12e.a(this.f11d);
            return;
        }
        Parcelable parcelable = bundle.getParcelable("media_item");
        if (parcelable == null || (parcelable instanceof MediaBrowserCompat$MediaItem)) {
            this.f12e.a((MediaBrowserCompat$MediaItem) parcelable);
        } else {
            this.f12e.a(this.f11d);
        }
    }
}
