package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "LargeParcelTeleporterCreator")
@SafeParcelable.Reserved({1})
public final class zzaoz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaoz> CREATOR = new zzapb();

    @SafeParcelable.Field(id = 2)
    private ParcelFileDescriptor zzdlv;
    private Parcelable zzdlw = null;
    private boolean zzdlx = true;

    @SafeParcelable.Constructor
    public zzaoz(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.zzdlv = parcelFileDescriptor;
    }

    static final /* synthetic */ void zza(OutputStream outputStream, byte[] bArr) throws Throwable {
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(outputStream);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
            IOUtils.closeQuietly(dataOutputStream);
        } catch (IOException e3) {
            e = e3;
            dataOutputStream2 = dataOutputStream;
            zzaxi.zzc("Error transporting the ad response", e);
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e, "LargeParcelTeleporter.pipeData.1");
            if (dataOutputStream2 == null) {
                IOUtils.closeQuietly(outputStream);
            } else {
                IOUtils.closeQuietly(dataOutputStream2);
            }
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream2 = dataOutputStream;
            if (dataOutputStream2 == null) {
                IOUtils.closeQuietly(outputStream);
            } else {
                IOUtils.closeQuietly(dataOutputStream2);
            }
            throw th;
        }
    }

    private static <T> ParcelFileDescriptor zzh(final byte[] bArr) {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe;
        try {
            parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorArrCreatePipe[1]);
        } catch (IOException e2) {
            e = e2;
            autoCloseOutputStream = null;
        }
        try {
            zzaxn.zzdwi.execute(new Runnable(autoCloseOutputStream, bArr) { // from class: com.google.android.gms.internal.ads.zzapc
                private final OutputStream zzdly;
                private final byte[] zzdlz;

                {
                    this.zzdly = autoCloseOutputStream;
                    this.zzdlz = bArr;
                }

                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    zzaoz.zza(this.zzdly, this.zzdlz);
                }
            });
            return parcelFileDescriptorArrCreatePipe[0];
        } catch (IOException e3) {
            e = e3;
            zzaxi.zzc("Error transporting the ad response", e);
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e, "LargeParcelTeleporter.pipeData.2");
            IOUtils.closeQuietly(autoCloseOutputStream);
            return null;
        }
    }

    private final ParcelFileDescriptor zztb() {
        if (this.zzdlv == null) {
            Parcel parcelObtain = Parcel.obtain();
            try {
                this.zzdlw.writeToParcel(parcelObtain, 0);
                byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                this.zzdlv = zzh(bArrMarshall);
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }
        return this.zzdlv;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        zztb();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdlv, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final <T extends SafeParcelable> T zza(Parcelable.Creator<T> creator) {
        if (this.zzdlx) {
            ParcelFileDescriptor parcelFileDescriptor = this.zzdlv;
            if (parcelFileDescriptor == null) {
                zzaxi.zzes("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    dataInputStream.readFully(bArr, 0, bArr.length);
                    IOUtils.closeQuietly(dataInputStream);
                    Parcel parcelObtain = Parcel.obtain();
                    try {
                        parcelObtain.unmarshall(bArr, 0, bArr.length);
                        parcelObtain.setDataPosition(0);
                        this.zzdlw = creator.createFromParcel(parcelObtain);
                        parcelObtain.recycle();
                        this.zzdlx = false;
                    } catch (Throwable th) {
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (IOException e2) {
                    zzaxi.zzc("Could not read from parcel file descriptor", e2);
                    IOUtils.closeQuietly(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                IOUtils.closeQuietly(dataInputStream);
                throw th2;
            }
        }
        return (T) this.zzdlw;
    }
}
