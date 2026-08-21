package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(21)
public final class zzhf {
    private static final zzhf zzagz = new zzhf(new int[]{2}, 2);
    private final int[] zzaha;
    private final int zzahb;

    private zzhf(int[] iArr, int i2) {
        this.zzaha = Arrays.copyOf(iArr, iArr.length);
        Arrays.sort(this.zzaha);
        this.zzahb = 2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhf)) {
            return false;
        }
        zzhf zzhfVar = (zzhf) obj;
        return Arrays.equals(this.zzaha, zzhfVar.zzaha) && this.zzahb == zzhfVar.zzahb;
    }

    public final int hashCode() {
        return this.zzahb + (Arrays.hashCode(this.zzaha) * 31);
    }

    public final String toString() {
        int i2 = this.zzahb;
        String string = Arrays.toString(this.zzaha);
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i2);
        sb.append(", supportedEncodings=");
        sb.append(string);
        sb.append("]");
        return sb.toString();
    }

    public final boolean zzp(int i2) {
        return Arrays.binarySearch(this.zzaha, i2) >= 0;
    }
}
