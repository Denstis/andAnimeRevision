package a.a.a.b;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: a.a.a.b.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0002a extends Binder implements a {

        /* JADX INFO: renamed from: a.a.a.b.a$a$a, reason: collision with other inner class name */
        private static class C0003a implements a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f1b;

            C0003a(IBinder iBinder) {
                this.f1b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1b;
            }
        }

        public AbstractBinderC0002a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0003a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString("android.support.v4.os.IResultReceiver");
            return true;
        }
    }

    void a(int i2, Bundle bundle);
}
