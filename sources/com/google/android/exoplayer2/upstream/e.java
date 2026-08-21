package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e {
    public static /* synthetic */ boolean a(String str) {
        String lowerInvariant = Util.toLowerInvariant(str);
        return (TextUtils.isEmpty(lowerInvariant) || (lowerInvariant.contains(MimeTypes.BASE_TYPE_TEXT) && !lowerInvariant.contains(MimeTypes.TEXT_VTT)) || lowerInvariant.contains("html") || lowerInvariant.contains("xml")) ? false : true;
    }
}
