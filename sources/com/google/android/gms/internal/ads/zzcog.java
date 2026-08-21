package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public final class zzcog implements zzcrr<Bundle> {
    private final zzuf zzgej;

    public zzcog(zzuf zzufVar) {
        this.zzgej = zzufVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzuf zzufVar = this.zzgej;
        if (zzufVar != null) {
            int i2 = zzufVar.orientation;
            if (i2 == 1) {
                bundle2.putString("avo", TtmlNode.TAG_P);
            } else if (i2 == 2) {
                bundle2.putString("avo", "l");
            }
        }
    }
}
