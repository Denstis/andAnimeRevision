package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class zzdf {
    private static final String[] zzwy = {"/aclk", "/pcs/click", "/dbm/clk"};
    private String zzwu = "googleads.g.doubleclick.nes";
    private String zzwv = "/pagead/ads";
    private String zzww = "ad.doubleclick.nes";
    private String[] zzwx = {".doubleclick.nes", ".googleadservices.col", ".googlesyndication.col"};
    private zzdc zzwz;

    public zzdf(zzdc zzdcVar) {
        this.zzwz = zzdcVar;
    }

    private final Uri zza(Uri uri, String str) throws zzdi {
        try {
            boolean zZzb = zzb(uri);
            if (zZzb) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzdi("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzdi("Query parameter already exists: ms");
            }
            if (!zZzb) {
                String string = uri.toString();
                int iIndexOf = string.indexOf("&adurl");
                if (iIndexOf == -1) {
                    iIndexOf = string.indexOf("?adurl");
                }
                if (iIndexOf == -1) {
                    return uri.buildUpon().appendQueryParameter("ms", str).build();
                }
                int i2 = iIndexOf + 1;
                return Uri.parse(string.substring(0, i2) + "ms=" + str + "&" + string.substring(i2));
            }
            String string2 = uri.toString();
            int iIndexOf2 = string2.indexOf(";adurl");
            if (iIndexOf2 != -1) {
                int i3 = iIndexOf2 + 1;
                return Uri.parse(string2.substring(0, i3) + "dc_ms=" + str + ";" + string2.substring(i3));
            }
            String encodedPath = uri.getEncodedPath();
            int iIndexOf3 = string2.indexOf(encodedPath);
            return Uri.parse(string2.substring(0, encodedPath.length() + iIndexOf3) + ";dc_ms=" + str + ";" + string2.substring(iIndexOf3 + encodedPath.length()));
        } catch (UnsupportedOperationException unused) {
            throw new zzdi("Provided Uri is not in a valid state");
        }
    }

    private final boolean zzb(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.zzww);
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final Uri zza(Uri uri, Context context) {
        return zza(uri, this.zzwz.zza(context));
    }

    public final Uri zza(Uri uri, Context context, View view, Activity activity) throws zzdi {
        try {
            return zza(uri, this.zzwz.zza(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new zzdi("Provided Uri is not in a valid state");
        }
    }

    public final boolean zza(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            if (uri.getHost().equals(this.zzwu)) {
                if (uri.getPath().equals(this.zzwv)) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final void zzap(String str) {
        this.zzwx = str.split(",");
    }

    @Deprecated
    public final Uri zzb(Uri uri, Context context) {
        return zza(uri, context, null, null);
    }

    public final void zzb(MotionEvent motionEvent) {
        this.zzwz.zzb(motionEvent);
    }

    public final void zzb(String str, String str2) {
        this.zzwu = str;
        this.zzwv = str2;
    }

    public final boolean zzc(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String str : this.zzwx) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final zzdc zzcd() {
        return this.zzwz;
    }

    public final boolean zzd(Uri uri) {
        if (zzc(uri)) {
            for (String str : zzwy) {
                if (uri.getPath().endsWith(str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
