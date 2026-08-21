package animebestapp.com.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable {
    public static final a CREATOR = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName(TtmlNode.ATTR_ID)
    private final long f1599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("title")
    private final String f1600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SerializedName(ImagesContract.URL)
    private final String f1601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @SerializedName("release")
    private final String f1602e;

    public static final class a implements Parcelable.Creator<e> {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public e createFromParcel(Parcel parcel) {
            g.p.b.f.b(parcel, "parcel");
            return new e(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public e[] newArray(int i2) {
            return new e[i2];
        }
    }

    public e(long j2, String str, String str2, String str3) {
        g.p.b.f.b(str, "title");
        g.p.b.f.b(str2, ImagesContract.URL);
        this.f1599b = j2;
        this.f1600c = str;
        this.f1601d = str2;
        this.f1602e = str3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public e(Parcel parcel) {
        g.p.b.f.b(parcel, "parcel");
        long j2 = parcel.readLong();
        String string = parcel.readString();
        g.p.b.f.a((Object) string, "parcel.readString()");
        String string2 = parcel.readString();
        g.p.b.f.a((Object) string2, "parcel.readString()");
        this(j2, string, string2, parcel.readString());
    }

    public final long a() {
        return this.f1599b;
    }

    public final String b() {
        return this.f1602e;
    }

    public final String c() {
        return this.f1600c;
    }

    public final String d() {
        return this.f1601d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                if (!(this.f1599b == eVar.f1599b) || !g.p.b.f.a((Object) this.f1600c, (Object) eVar.f1600c) || !g.p.b.f.a((Object) this.f1601d, (Object) eVar.f1601d) || !g.p.b.f.a((Object) this.f1602e, (Object) eVar.f1602e)) {
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j2 = this.f1599b;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        String str = this.f1600c;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f1601d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1602e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "Schedule(id=" + this.f1599b + ", title=" + this.f1600c + ", url=" + this.f1601d + ", release=" + this.f1602e + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        g.p.b.f.b(parcel, "parcel");
        parcel.writeLong(this.f1599b);
        parcel.writeString(this.f1600c);
        parcel.writeString(this.f1601d);
        parcel.writeString(this.f1602e);
    }
}
