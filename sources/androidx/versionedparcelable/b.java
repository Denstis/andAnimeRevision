package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseIntArray f1419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Parcel f1420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1424f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1425g;

    b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "");
    }

    b(Parcel parcel, int i2, int i3, String str) {
        this.f1419a = new SparseIntArray();
        this.f1424f = -1;
        this.f1425g = 0;
        this.f1420b = parcel;
        this.f1421c = i2;
        this.f1422d = i3;
        this.f1425g = this.f1421c;
        this.f1423e = str;
    }

    private int d(int i2) {
        int i3;
        do {
            int i4 = this.f1425g;
            if (i4 >= this.f1422d) {
                return -1;
            }
            this.f1420b.setDataPosition(i4);
            int i5 = this.f1420b.readInt();
            i3 = this.f1420b.readInt();
            this.f1425g += i5;
        } while (i3 != i2);
        return this.f1420b.dataPosition();
    }

    @Override // androidx.versionedparcelable.a
    public void a() {
        int i2 = this.f1424f;
        if (i2 >= 0) {
            int i3 = this.f1419a.get(i2);
            int iDataPosition = this.f1420b.dataPosition();
            this.f1420b.setDataPosition(i3);
            this.f1420b.writeInt(iDataPosition - i3);
            this.f1420b.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.a
    public void a(Parcelable parcelable) {
        this.f1420b.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void a(String str) {
        this.f1420b.writeString(str);
    }

    @Override // androidx.versionedparcelable.a
    public void a(byte[] bArr) {
        if (bArr == null) {
            this.f1420b.writeInt(-1);
        } else {
            this.f1420b.writeInt(bArr.length);
            this.f1420b.writeByteArray(bArr);
        }
    }

    @Override // androidx.versionedparcelable.a
    public boolean a(int i2) {
        int iD = d(i2);
        if (iD == -1) {
            return false;
        }
        this.f1420b.setDataPosition(iD);
        return true;
    }

    @Override // androidx.versionedparcelable.a
    protected a b() {
        Parcel parcel = this.f1420b;
        int iDataPosition = parcel.dataPosition();
        int i2 = this.f1425g;
        if (i2 == this.f1421c) {
            i2 = this.f1422d;
        }
        return new b(parcel, iDataPosition, i2, this.f1423e + "  ");
    }

    @Override // androidx.versionedparcelable.a
    public void b(int i2) {
        a();
        this.f1424f = i2;
        this.f1419a.put(i2, this.f1420b.dataPosition());
        c(0);
        c(i2);
    }

    @Override // androidx.versionedparcelable.a
    public void c(int i2) {
        this.f1420b.writeInt(i2);
    }

    @Override // androidx.versionedparcelable.a
    public byte[] d() {
        int i2 = this.f1420b.readInt();
        if (i2 < 0) {
            return null;
        }
        byte[] bArr = new byte[i2];
        this.f1420b.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.a
    public int e() {
        return this.f1420b.readInt();
    }

    @Override // androidx.versionedparcelable.a
    public <T extends Parcelable> T f() {
        return (T) this.f1420b.readParcelable(b.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.a
    public String g() {
        return this.f1420b.readString();
    }
}
