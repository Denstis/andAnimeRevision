package b.k.a;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class l implements Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    n[] f2750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int[] f2751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    b[] f2752d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f2753e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f2754f;

    static class a implements Parcelable.Creator<l> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public l[] newArray(int i2) {
            return new l[i2];
        }
    }

    public l() {
        this.f2753e = -1;
    }

    public l(Parcel parcel) {
        this.f2753e = -1;
        this.f2750b = (n[]) parcel.createTypedArray(n.CREATOR);
        this.f2751c = parcel.createIntArray();
        this.f2752d = (b[]) parcel.createTypedArray(b.CREATOR);
        this.f2753e = parcel.readInt();
        this.f2754f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedArray(this.f2750b, i2);
        parcel.writeIntArray(this.f2751c);
        parcel.writeTypedArray(this.f2752d, i2);
        parcel.writeInt(this.f2753e);
        parcel.writeInt(this.f2754f);
    }
}
