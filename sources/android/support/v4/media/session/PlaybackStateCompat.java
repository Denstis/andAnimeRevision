package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.h;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f55b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f56c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f57d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final float f58e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final long f59f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f60g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final CharSequence f61h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final long f62i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    List<CustomAction> f63j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final long f64k;
    final Bundle l;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f65b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CharSequence f66c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f67d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Bundle f68e;

        static class a implements Parcelable.Creator<CustomAction> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction[] newArray(int i2) {
                return new CustomAction[i2];
            }
        }

        CustomAction(Parcel parcel) {
            this.f65b = parcel.readString();
            this.f66c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f67d = parcel.readInt();
            this.f68e = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        CustomAction(String str, CharSequence charSequence, int i2, Bundle bundle) {
            this.f65b = str;
            this.f66c = charSequence;
            this.f67d = i2;
            this.f68e = bundle;
        }

        public static CustomAction a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new CustomAction(h.a.a(obj), h.a.d(obj), h.a.c(obj), h.a.b(obj));
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f66c) + ", mIcon=" + this.f67d + ", mExtras=" + this.f68e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f65b);
            TextUtils.writeToParcel(this.f66c, parcel, i2);
            parcel.writeInt(this.f67d);
            parcel.writeBundle(this.f68e);
        }
    }

    static class a implements Parcelable.Creator<PlaybackStateCompat> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat[] newArray(int i2) {
            return new PlaybackStateCompat[i2];
        }
    }

    PlaybackStateCompat(int i2, long j2, long j3, float f2, long j4, int i3, CharSequence charSequence, long j5, List<CustomAction> list, long j6, Bundle bundle) {
        this.f55b = i2;
        this.f56c = j2;
        this.f57d = j3;
        this.f58e = f2;
        this.f59f = j4;
        this.f60g = i3;
        this.f61h = charSequence;
        this.f62i = j5;
        this.f63j = new ArrayList(list);
        this.f64k = j6;
        this.l = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f55b = parcel.readInt();
        this.f56c = parcel.readLong();
        this.f58e = parcel.readFloat();
        this.f62i = parcel.readLong();
        this.f57d = parcel.readLong();
        this.f59f = parcel.readLong();
        this.f61h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f63j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f64k = parcel.readLong();
        this.l = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f60g = parcel.readInt();
    }

    public static PlaybackStateCompat a(Object obj) {
        ArrayList arrayList;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> listD = h.d(obj);
        if (listD != null) {
            ArrayList arrayList2 = new ArrayList(listD.size());
            Iterator<Object> it = listD.iterator();
            while (it.hasNext()) {
                arrayList2.add(CustomAction.a(it.next()));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return new PlaybackStateCompat(h.i(obj), h.h(obj), h.c(obj), h.g(obj), h.a(obj), 0, h.e(obj), h.f(obj), arrayList, h.b(obj), Build.VERSION.SDK_INT >= 22 ? i.a(obj) : null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f55b + ", position=" + this.f56c + ", buffered position=" + this.f57d + ", speed=" + this.f58e + ", updated=" + this.f62i + ", actions=" + this.f59f + ", error code=" + this.f60g + ", error message=" + this.f61h + ", custom actions=" + this.f63j + ", active item id=" + this.f64k + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f55b);
        parcel.writeLong(this.f56c);
        parcel.writeFloat(this.f58e);
        parcel.writeLong(this.f62i);
        parcel.writeLong(this.f57d);
        parcel.writeLong(this.f59f);
        TextUtils.writeToParcel(this.f61h, parcel, i2);
        parcel.writeTypedList(this.f63j);
        parcel.writeLong(this.f64k);
        parcel.writeBundle(this.l);
        parcel.writeInt(this.f60g);
    }
}
