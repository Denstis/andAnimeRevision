package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzaat extends zzabd {
    private static final int zzcvn = Color.rgb(12, 174, 206);
    private static final int zzcvo;
    private static final int zzcvp;
    private static final int zzcvq;
    private final int backgroundColor;
    private final int textColor;
    private final int textSize;
    private final String zzcvr;
    private final List<zzaau> zzcvs = new ArrayList();
    private final List<zzabi> zzcvt = new ArrayList();
    private final int zzcvu;
    private final int zzcvv;
    private final boolean zzcvw;

    static {
        int iRgb = Color.rgb(204, 204, 204);
        zzcvo = iRgb;
        zzcvp = iRgb;
        zzcvq = zzcvn;
    }

    public zzaat(String str, List<zzaau> list, Integer num, Integer num2, Integer num3, int i2, int i3, boolean z) {
        this.zzcvr = str;
        if (list != null) {
            for (int i4 = 0; i4 < list.size(); i4++) {
                zzaau zzaauVar = list.get(i4);
                this.zzcvs.add(zzaauVar);
                this.zzcvt.add(zzaauVar);
            }
        }
        this.backgroundColor = num != null ? num.intValue() : zzcvp;
        this.textColor = num2 != null ? num2.intValue() : zzcvq;
        this.textSize = num3 != null ? num3.intValue() : 12;
        this.zzcvu = i2;
        this.zzcvv = i3;
        this.zzcvw = z;
    }

    public final int getBackgroundColor() {
        return this.backgroundColor;
    }

    @Override // com.google.android.gms.internal.ads.zzaba
    public final String getText() {
        return this.zzcvr;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final int getTextSize() {
        return this.textSize;
    }

    @Override // com.google.android.gms.internal.ads.zzaba
    public final List<zzabi> zzqe() {
        return this.zzcvt;
    }

    public final List<zzaau> zzqf() {
        return this.zzcvs;
    }

    public final int zzqg() {
        return this.zzcvu;
    }

    public final int zzqh() {
        return this.zzcvv;
    }
}
