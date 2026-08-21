package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$SearchResultReceiver extends a.a.a.b.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f15d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Bundle f16e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f17f;

    @Override // a.a.a.b.b
    protected void a(int i2, Bundle bundle) {
        MediaSessionCompat.a(bundle);
        if (i2 != 0 || bundle == null || !bundle.containsKey("search_results")) {
            this.f17f.a(this.f15d, this.f16e);
            return;
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
        ArrayList arrayList = null;
        if (parcelableArray != null) {
            arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaBrowserCompat$MediaItem) parcelable);
            }
        }
        this.f17f.a(this.f15d, this.f16e, arrayList);
    }
}
