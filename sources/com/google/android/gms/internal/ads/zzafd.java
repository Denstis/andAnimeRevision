package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "HttpRequestParcelCreator")
public final class zzafd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzafd> CREATOR = new zzafc();

    @SafeParcelable.Field(id = 1)
    private final String url;

    @SafeParcelable.Field(id = 2)
    private final String[] zzcyg;

    @SafeParcelable.Field(id = 3)
    private final String[] zzcyh;

    @SafeParcelable.Constructor
    zzafd(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String[] strArr, @SafeParcelable.Param(id = 3) String[] strArr2) {
        this.url = str;
        this.zzcyg = strArr;
        this.zzcyh = strArr2;
    }

    public static zzafd zzh(zzq<?> zzqVar) {
        Map<String, String> headers = zzqVar.getHeaders();
        int size = headers.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i2 = 0;
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            strArr[i2] = entry.getKey();
            strArr2[i2] = entry.getValue();
            i2++;
        }
        return new zzafd(zzqVar.getUrl(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.url, false);
        SafeParcelWriter.writeStringArray(parcel, 2, this.zzcyg, false);
        SafeParcelWriter.writeStringArray(parcel, 3, this.zzcyh, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
