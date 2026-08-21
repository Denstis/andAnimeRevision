package b.k.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import b.k.a.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int[] f2661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f2662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f2663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f2664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f2665f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f2666g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final CharSequence f2667h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final int f2668i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final CharSequence f2669j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final ArrayList<String> f2670k;
    final ArrayList<String> l;
    final boolean m;

    static class a implements Parcelable.Creator<b> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public b[] newArray(int i2) {
            return new b[i2];
        }
    }

    public b(Parcel parcel) {
        this.f2661b = parcel.createIntArray();
        this.f2662c = parcel.readInt();
        this.f2663d = parcel.readInt();
        this.f2664e = parcel.readString();
        this.f2665f = parcel.readInt();
        this.f2666g = parcel.readInt();
        this.f2667h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2668i = parcel.readInt();
        this.f2669j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2670k = parcel.createStringArrayList();
        this.l = parcel.createStringArrayList();
        this.m = parcel.readInt() != 0;
    }

    public b(b.k.a.a aVar) {
        int size = aVar.f2645b.size();
        this.f2661b = new int[size * 6];
        if (!aVar.f2652i) {
            throw new IllegalStateException("Not on back stack");
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            a.C0114a c0114a = aVar.f2645b.get(i3);
            int[] iArr = this.f2661b;
            int i4 = i2 + 1;
            iArr[i2] = c0114a.f2655a;
            int i5 = i4 + 1;
            d dVar = c0114a.f2656b;
            iArr[i4] = dVar != null ? dVar.mIndex : -1;
            int[] iArr2 = this.f2661b;
            int i6 = i5 + 1;
            iArr2[i5] = c0114a.f2657c;
            int i7 = i6 + 1;
            iArr2[i6] = c0114a.f2658d;
            int i8 = i7 + 1;
            iArr2[i7] = c0114a.f2659e;
            i2 = i8 + 1;
            iArr2[i8] = c0114a.f2660f;
        }
        this.f2662c = aVar.f2650g;
        this.f2663d = aVar.f2651h;
        this.f2664e = aVar.f2654k;
        this.f2665f = aVar.m;
        this.f2666g = aVar.n;
        this.f2667h = aVar.o;
        this.f2668i = aVar.p;
        this.f2669j = aVar.q;
        this.f2670k = aVar.r;
        this.l = aVar.s;
        this.m = aVar.t;
    }

    public b.k.a.a a(j jVar) {
        b.k.a.a aVar = new b.k.a.a(jVar);
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.f2661b.length) {
            a.C0114a c0114a = new a.C0114a();
            int i4 = i2 + 1;
            c0114a.f2655a = this.f2661b[i2];
            if (j.F) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i3 + " base fragment #" + this.f2661b[i4]);
            }
            int i5 = i4 + 1;
            int i6 = this.f2661b[i4];
            c0114a.f2656b = i6 >= 0 ? jVar.f2708f.get(i6) : null;
            int[] iArr = this.f2661b;
            int i7 = i5 + 1;
            c0114a.f2657c = iArr[i5];
            int i8 = i7 + 1;
            c0114a.f2658d = iArr[i7];
            int i9 = i8 + 1;
            c0114a.f2659e = iArr[i8];
            c0114a.f2660f = iArr[i9];
            aVar.f2646c = c0114a.f2657c;
            aVar.f2647d = c0114a.f2658d;
            aVar.f2648e = c0114a.f2659e;
            aVar.f2649f = c0114a.f2660f;
            aVar.a(c0114a);
            i3++;
            i2 = i9 + 1;
        }
        aVar.f2650g = this.f2662c;
        aVar.f2651h = this.f2663d;
        aVar.f2654k = this.f2664e;
        aVar.m = this.f2665f;
        aVar.f2652i = true;
        aVar.n = this.f2666g;
        aVar.o = this.f2667h;
        aVar.p = this.f2668i;
        aVar.q = this.f2669j;
        aVar.r = this.f2670k;
        aVar.s = this.l;
        aVar.t = this.m;
        aVar.a(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.f2661b);
        parcel.writeInt(this.f2662c);
        parcel.writeInt(this.f2663d);
        parcel.writeString(this.f2664e);
        parcel.writeInt(this.f2665f);
        parcel.writeInt(this.f2666g);
        TextUtils.writeToParcel(this.f2667h, parcel, 0);
        parcel.writeInt(this.f2668i);
        TextUtils.writeToParcel(this.f2669j, parcel, 0);
        parcel.writeStringList(this.f2670k);
        parcel.writeStringList(this.l);
        parcel.writeInt(this.m ? 1 : 0);
    }
}
