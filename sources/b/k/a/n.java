package b.k.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class n implements Parcelable {
    public static final Parcelable.Creator<n> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f2758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f2759c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f2760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f2761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f2762f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final String f2763g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final boolean f2764h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final boolean f2765i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final Bundle f2766j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final boolean f2767k;
    Bundle l;
    d m;

    static class a implements Parcelable.Creator<n> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public n createFromParcel(Parcel parcel) {
            return new n(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public n[] newArray(int i2) {
            return new n[i2];
        }
    }

    n(Parcel parcel) {
        this.f2758b = parcel.readString();
        this.f2759c = parcel.readInt();
        this.f2760d = parcel.readInt() != 0;
        this.f2761e = parcel.readInt();
        this.f2762f = parcel.readInt();
        this.f2763g = parcel.readString();
        this.f2764h = parcel.readInt() != 0;
        this.f2765i = parcel.readInt() != 0;
        this.f2766j = parcel.readBundle();
        this.f2767k = parcel.readInt() != 0;
        this.l = parcel.readBundle();
    }

    n(d dVar) {
        this.f2758b = dVar.getClass().getName();
        this.f2759c = dVar.mIndex;
        this.f2760d = dVar.mFromLayout;
        this.f2761e = dVar.mFragmentId;
        this.f2762f = dVar.mContainerId;
        this.f2763g = dVar.mTag;
        this.f2764h = dVar.mRetainInstance;
        this.f2765i = dVar.mDetached;
        this.f2766j = dVar.mArguments;
        this.f2767k = dVar.mHidden;
    }

    public d a(h hVar, f fVar, d dVar, k kVar, androidx.lifecycle.r rVar) {
        if (this.m == null) {
            Context contextC = hVar.c();
            Bundle bundle = this.f2766j;
            if (bundle != null) {
                bundle.setClassLoader(contextC.getClassLoader());
            }
            this.m = fVar != null ? fVar.a(contextC, this.f2758b, this.f2766j) : d.instantiate(contextC, this.f2758b, this.f2766j);
            Bundle bundle2 = this.l;
            if (bundle2 != null) {
                bundle2.setClassLoader(contextC.getClassLoader());
                this.m.mSavedFragmentState = this.l;
            }
            this.m.setIndex(this.f2759c, dVar);
            d dVar2 = this.m;
            dVar2.mFromLayout = this.f2760d;
            dVar2.mRestored = true;
            dVar2.mFragmentId = this.f2761e;
            dVar2.mContainerId = this.f2762f;
            dVar2.mTag = this.f2763g;
            dVar2.mRetainInstance = this.f2764h;
            dVar2.mDetached = this.f2765i;
            dVar2.mHidden = this.f2767k;
            dVar2.mFragmentManager = hVar.f2703d;
            if (j.F) {
                Log.v("FragmentManager", "Instantiated fragment " + this.m);
            }
        }
        d dVar3 = this.m;
        dVar3.mChildNonConfig = kVar;
        dVar3.mViewModelStore = rVar;
        return dVar3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f2758b);
        parcel.writeInt(this.f2759c);
        parcel.writeInt(this.f2760d ? 1 : 0);
        parcel.writeInt(this.f2761e);
        parcel.writeInt(this.f2762f);
        parcel.writeString(this.f2763g);
        parcel.writeInt(this.f2764h ? 1 : 0);
        parcel.writeInt(this.f2765i ? 1 : 0);
        parcel.writeBundle(this.f2766j);
        parcel.writeInt(this.f2767k ? 1 : 0);
        parcel.writeBundle(this.l);
    }
}
