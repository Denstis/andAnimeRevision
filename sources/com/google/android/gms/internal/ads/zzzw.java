package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
final class zzzw extends zzzv {
    zzzw() {
    }

    private static String zzcn(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i2 = 0;
        int length = str.length();
        while (i2 < str.length() && str.charAt(i2) == ',') {
            i2++;
        }
        while (length > 0 && str.charAt(length - 1) == ',') {
            length--;
        }
        if (length < i2) {
            return null;
        }
        return (i2 == 0 && length == str.length()) ? str : str.substring(i2, length);
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final String zzi(String str, String str2) {
        String strZzcn = zzcn(str);
        String strZzcn2 = zzcn(str2);
        if (TextUtils.isEmpty(strZzcn)) {
            return strZzcn2;
        }
        if (TextUtils.isEmpty(strZzcn2)) {
            return strZzcn;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(strZzcn).length() + 1 + String.valueOf(strZzcn2).length());
        sb.append(strZzcn);
        sb.append(",");
        sb.append(strZzcn2);
        return sb.toString();
    }
}
