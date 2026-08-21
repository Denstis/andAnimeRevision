package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.d;
import android.support.v4.media.e;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence f19c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CharSequence f20d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CharSequence f21e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Bitmap f22f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Uri f23g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Bundle f24h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Uri f25i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Object f26j;

    static class a implements Parcelable.Creator<MediaDescriptionCompat> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.a(d.a(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat[] newArray(int i2) {
            return new MediaDescriptionCompat[i2];
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f27a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CharSequence f28b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CharSequence f29c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f30d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Bitmap f31e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Uri f32f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Bundle f33g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Uri f34h;

        public b a(Bitmap bitmap) {
            this.f31e = bitmap;
            return this;
        }

        public b a(Uri uri) {
            this.f32f = uri;
            return this;
        }

        public b a(Bundle bundle) {
            this.f33g = bundle;
            return this;
        }

        public b a(CharSequence charSequence) {
            this.f30d = charSequence;
            return this;
        }

        public b a(String str) {
            this.f27a = str;
            return this;
        }

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f27a, this.f28b, this.f29c, this.f30d, this.f31e, this.f32f, this.f33g, this.f34h);
        }

        public b b(Uri uri) {
            this.f34h = uri;
            return this;
        }

        public b b(CharSequence charSequence) {
            this.f29c = charSequence;
            return this;
        }

        public b c(CharSequence charSequence) {
            this.f28b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f18b = parcel.readString();
        this.f19c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f20d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f21e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f22f = (Bitmap) parcel.readParcelable(classLoader);
        this.f23g = (Uri) parcel.readParcelable(classLoader);
        this.f24h = parcel.readBundle(classLoader);
        this.f25i = (Uri) parcel.readParcelable(classLoader);
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f18b = str;
        this.f19c = charSequence;
        this.f20d = charSequence2;
        this.f21e = charSequence3;
        this.f22f = bitmap;
        this.f23g = uri;
        this.f24h = bundle;
        this.f25i = uri2;
    }

    public static MediaDescriptionCompat a(Object obj) {
        Uri uri;
        Bundle bundle = null;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        b bVar = new b();
        bVar.a(d.e(obj));
        bVar.c(d.g(obj));
        bVar.b(d.f(obj));
        bVar.a(d.a(obj));
        bVar.a(d.c(obj));
        bVar.a(d.d(obj));
        Bundle bundleB = d.b(obj);
        if (bundleB != null) {
            MediaSessionCompat.a(bundleB);
            uri = (Uri) bundleB.getParcelable("android.support.v4.media.description.MEDIA_URI");
        } else {
            uri = null;
        }
        if (uri == null) {
            bundle = bundleB;
        } else if (!bundleB.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || bundleB.size() != 2) {
            bundleB.remove("android.support.v4.media.description.MEDIA_URI");
            bundleB.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = bundleB;
        }
        bVar.a(bundle);
        if (uri != null) {
            bVar.b(uri);
        } else if (Build.VERSION.SDK_INT >= 23) {
            bVar.b(e.a(obj));
        }
        MediaDescriptionCompat mediaDescriptionCompatA = bVar.a();
        mediaDescriptionCompatA.f26j = obj;
        return mediaDescriptionCompatA;
    }

    public Object a() {
        if (this.f26j != null || Build.VERSION.SDK_INT < 21) {
            return this.f26j;
        }
        Object objA = d.a.a();
        d.a.a(objA, this.f18b);
        d.a.c(objA, this.f19c);
        d.a.b(objA, this.f20d);
        d.a.a(objA, this.f21e);
        d.a.a(objA, this.f22f);
        d.a.a(objA, this.f23g);
        Bundle bundle = this.f24h;
        if (Build.VERSION.SDK_INT < 23 && this.f25i != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f25i);
        }
        d.a.a(objA, bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            e.a.a(objA, this.f25i);
        }
        this.f26j = d.a.a(objA);
        return this.f26j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f19c) + ", " + ((Object) this.f20d) + ", " + ((Object) this.f21e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            d.a(a(), parcel, i2);
            return;
        }
        parcel.writeString(this.f18b);
        TextUtils.writeToParcel(this.f19c, parcel, i2);
        TextUtils.writeToParcel(this.f20d, parcel, i2);
        TextUtils.writeToParcel(this.f21e, parcel, i2);
        parcel.writeParcelable(this.f22f, i2);
        parcel.writeParcelable(this.f23g, i2);
        parcel.writeBundle(this.f24h);
        parcel.writeParcelable(this.f25i, i2);
    }
}
