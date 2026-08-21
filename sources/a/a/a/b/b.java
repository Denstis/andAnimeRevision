package a.a.a.b;

import a.a.a.b.a;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Handler f2b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a.a.a.b.a f3c;

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

    /* JADX INFO: renamed from: a.a.a.b.b$b, reason: collision with other inner class name */
    class BinderC0004b extends a.AbstractBinderC0002a {
        BinderC0004b() {
        }

        @Override // a.a.a.b.a
        public void a(int i2, Bundle bundle) {
            b bVar = b.this;
            Handler handler = bVar.f2b;
            if (handler != null) {
                handler.post(bVar.new c(i2, bundle));
            } else {
                bVar.a(i2, bundle);
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f5b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Bundle f6c;

        c(int i2, Bundle bundle) {
            this.f5b = i2;
            this.f6c = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f5b, this.f6c);
        }
    }

    b(Parcel parcel) {
        this.f3c = a.AbstractBinderC0002a.a(parcel.readStrongBinder());
    }

    protected void a(int i2, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        synchronized (this) {
            if (this.f3c == null) {
                this.f3c = new BinderC0004b();
            }
            parcel.writeStrongBinder(this.f3c.asBinder());
        }
    }
}
