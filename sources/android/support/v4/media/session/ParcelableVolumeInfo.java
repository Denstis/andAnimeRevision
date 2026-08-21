package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f51c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f52d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f53e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f54f;

    static class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableVolumeInfo[] newArray(int i2) {
            return new ParcelableVolumeInfo[i2];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f50b = parcel.readInt();
        this.f52d = parcel.readInt();
        this.f53e = parcel.readInt();
        this.f54f = parcel.readInt();
        this.f51c = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f50b);
        parcel.writeInt(this.f52d);
        parcel.writeInt(this.f53e);
        parcel.writeInt(this.f54f);
        parcel.writeInt(this.f51c);
    }
}
