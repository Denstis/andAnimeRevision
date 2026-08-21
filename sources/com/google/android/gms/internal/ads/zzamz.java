package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzamz extends zzanj {
    private static final Set<String> zzdfp = CollectionUtils.setOf("top-left", "top-right", "top-center", TtmlNode.CENTER, "bottom-left", "bottom-right", "bottom-center");
    private int height;
    private final Object lock;
    private int width;
    private zzani zzcxz;
    private final zzbbw zzczi;
    private final Activity zzdff;
    private String zzdfq;
    private boolean zzdfr;
    private int zzdfs;
    private int zzdft;
    private int zzdfu;
    private int zzdfv;
    private zzbdj zzdfw;
    private ImageView zzdfx;
    private LinearLayout zzdfy;
    private PopupWindow zzdfz;
    private RelativeLayout zzdga;
    private ViewGroup zzdgb;

    public zzamz(zzbbw zzbbwVar, zzani zzaniVar) {
        super(zzbbwVar, "resize");
        this.zzdfq = "top-right";
        this.zzdfr = true;
        this.zzdfs = 0;
        this.zzdft = 0;
        this.height = -1;
        this.zzdfu = 0;
        this.zzdfv = 0;
        this.width = -1;
        this.lock = new Object();
        this.zzczi = zzbbwVar;
        this.zzdff = zzbbwVar.zzxn();
        this.zzcxz = zzaniVar;
    }

    public final void zza(int i2, int i3, boolean z) {
        synchronized (this.lock) {
            this.zzdfs = i2;
            this.zzdft = i3;
            PopupWindow popupWindow = this.zzdfz;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:127:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x022f A[Catch: all -> 0x04aa, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:22:0x0041, B:24:0x0043, B:26:0x0051, B:27:0x0062, B:29:0x0070, B:30:0x0081, B:32:0x008f, B:33:0x00a0, B:35:0x00ae, B:36:0x00bf, B:38:0x00cd, B:39:0x00db, B:41:0x00e9, B:42:0x00eb, B:44:0x00f1, B:49:0x00fa, B:50:0x00ff, B:52:0x0101, B:54:0x0109, B:57:0x0111, B:59:0x0134, B:62:0x013a, B:64:0x013e, B:67:0x0144, B:69:0x0148, B:124:0x0227, B:146:0x028f, B:147:0x0294, B:149:0x0296, B:151:0x02b8, B:153:0x02bc, B:155:0x02cc, B:157:0x0300, B:161:0x0336, B:162:0x036a, B:192:0x03c0, B:193:0x03c3, B:201:0x03e4, B:202:0x03fc, B:203:0x041b, B:205:0x0423, B:206:0x042c, B:207:0x0452, B:210:0x0455, B:212:0x0465, B:214:0x046f, B:216:0x0481, B:217:0x049a, B:213:0x046a, B:194:0x03c7, B:195:0x03cb, B:196:0x03ce, B:197:0x03d2, B:198:0x03d6, B:199:0x03dc, B:200:0x03e0, B:164:0x036e, B:167:0x0378, B:170:0x0382, B:173:0x038c, B:176:0x0396, B:179:0x03a0, B:156:0x02fb, B:219:0x049c, B:220:0x04a1, B:128:0x022f, B:130:0x0233, B:131:0x0244, B:138:0x0272, B:140:0x0276, B:144:0x0286, B:141:0x0279, B:143:0x0280, B:134:0x0268, B:136:0x026d, B:72:0x0150, B:74:0x0154, B:75:0x015a, B:102:0x01a7, B:110:0x0205, B:112:0x0210, B:114:0x0213, B:116:0x0216, B:118:0x021a, B:103:0x01b3, B:105:0x01d0, B:107:0x01de, B:104:0x01c1, B:106:0x01d4, B:108:0x01e1, B:109:0x01f8, B:111:0x0208, B:77:0x015e, B:80:0x0168, B:83:0x0172, B:86:0x017c, B:89:0x0186, B:92:0x0190, B:222:0x04a3, B:223:0x04a8), top: B:232:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x028f A[Catch: all -> 0x04aa, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:22:0x0041, B:24:0x0043, B:26:0x0051, B:27:0x0062, B:29:0x0070, B:30:0x0081, B:32:0x008f, B:33:0x00a0, B:35:0x00ae, B:36:0x00bf, B:38:0x00cd, B:39:0x00db, B:41:0x00e9, B:42:0x00eb, B:44:0x00f1, B:49:0x00fa, B:50:0x00ff, B:52:0x0101, B:54:0x0109, B:57:0x0111, B:59:0x0134, B:62:0x013a, B:64:0x013e, B:67:0x0144, B:69:0x0148, B:124:0x0227, B:146:0x028f, B:147:0x0294, B:149:0x0296, B:151:0x02b8, B:153:0x02bc, B:155:0x02cc, B:157:0x0300, B:161:0x0336, B:162:0x036a, B:192:0x03c0, B:193:0x03c3, B:201:0x03e4, B:202:0x03fc, B:203:0x041b, B:205:0x0423, B:206:0x042c, B:207:0x0452, B:210:0x0455, B:212:0x0465, B:214:0x046f, B:216:0x0481, B:217:0x049a, B:213:0x046a, B:194:0x03c7, B:195:0x03cb, B:196:0x03ce, B:197:0x03d2, B:198:0x03d6, B:199:0x03dc, B:200:0x03e0, B:164:0x036e, B:167:0x0378, B:170:0x0382, B:173:0x038c, B:176:0x0396, B:179:0x03a0, B:156:0x02fb, B:219:0x049c, B:220:0x04a1, B:128:0x022f, B:130:0x0233, B:131:0x0244, B:138:0x0272, B:140:0x0276, B:144:0x0286, B:141:0x0279, B:143:0x0280, B:134:0x0268, B:136:0x026d, B:72:0x0150, B:74:0x0154, B:75:0x015a, B:102:0x01a7, B:110:0x0205, B:112:0x0210, B:114:0x0213, B:116:0x0216, B:118:0x021a, B:103:0x01b3, B:105:0x01d0, B:107:0x01de, B:104:0x01c1, B:106:0x01d4, B:108:0x01e1, B:109:0x01f8, B:111:0x0208, B:77:0x015e, B:80:0x0168, B:83:0x0172, B:86:0x017c, B:89:0x0186, B:92:0x0190, B:222:0x04a3, B:223:0x04a8), top: B:232:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0296 A[Catch: all -> 0x04aa, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:22:0x0041, B:24:0x0043, B:26:0x0051, B:27:0x0062, B:29:0x0070, B:30:0x0081, B:32:0x008f, B:33:0x00a0, B:35:0x00ae, B:36:0x00bf, B:38:0x00cd, B:39:0x00db, B:41:0x00e9, B:42:0x00eb, B:44:0x00f1, B:49:0x00fa, B:50:0x00ff, B:52:0x0101, B:54:0x0109, B:57:0x0111, B:59:0x0134, B:62:0x013a, B:64:0x013e, B:67:0x0144, B:69:0x0148, B:124:0x0227, B:146:0x028f, B:147:0x0294, B:149:0x0296, B:151:0x02b8, B:153:0x02bc, B:155:0x02cc, B:157:0x0300, B:161:0x0336, B:162:0x036a, B:192:0x03c0, B:193:0x03c3, B:201:0x03e4, B:202:0x03fc, B:203:0x041b, B:205:0x0423, B:206:0x042c, B:207:0x0452, B:210:0x0455, B:212:0x0465, B:214:0x046f, B:216:0x0481, B:217:0x049a, B:213:0x046a, B:194:0x03c7, B:195:0x03cb, B:196:0x03ce, B:197:0x03d2, B:198:0x03d6, B:199:0x03dc, B:200:0x03e0, B:164:0x036e, B:167:0x0378, B:170:0x0382, B:173:0x038c, B:176:0x0396, B:179:0x03a0, B:156:0x02fb, B:219:0x049c, B:220:0x04a1, B:128:0x022f, B:130:0x0233, B:131:0x0244, B:138:0x0272, B:140:0x0276, B:144:0x0286, B:141:0x0279, B:143:0x0280, B:134:0x0268, B:136:0x026d, B:72:0x0150, B:74:0x0154, B:75:0x015a, B:102:0x01a7, B:110:0x0205, B:112:0x0210, B:114:0x0213, B:116:0x0216, B:118:0x021a, B:103:0x01b3, B:105:0x01d0, B:107:0x01de, B:104:0x01c1, B:106:0x01d4, B:108:0x01e1, B:109:0x01f8, B:111:0x0208, B:77:0x015e, B:80:0x0168, B:83:0x0172, B:86:0x017c, B:89:0x0186, B:92:0x0190, B:222:0x04a3, B:223:0x04a8), top: B:232:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0423 A[Catch: all -> 0x04aa, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:22:0x0041, B:24:0x0043, B:26:0x0051, B:27:0x0062, B:29:0x0070, B:30:0x0081, B:32:0x008f, B:33:0x00a0, B:35:0x00ae, B:36:0x00bf, B:38:0x00cd, B:39:0x00db, B:41:0x00e9, B:42:0x00eb, B:44:0x00f1, B:49:0x00fa, B:50:0x00ff, B:52:0x0101, B:54:0x0109, B:57:0x0111, B:59:0x0134, B:62:0x013a, B:64:0x013e, B:67:0x0144, B:69:0x0148, B:124:0x0227, B:146:0x028f, B:147:0x0294, B:149:0x0296, B:151:0x02b8, B:153:0x02bc, B:155:0x02cc, B:157:0x0300, B:161:0x0336, B:162:0x036a, B:192:0x03c0, B:193:0x03c3, B:201:0x03e4, B:202:0x03fc, B:203:0x041b, B:205:0x0423, B:206:0x042c, B:207:0x0452, B:210:0x0455, B:212:0x0465, B:214:0x046f, B:216:0x0481, B:217:0x049a, B:213:0x046a, B:194:0x03c7, B:195:0x03cb, B:196:0x03ce, B:197:0x03d2, B:198:0x03d6, B:199:0x03dc, B:200:0x03e0, B:164:0x036e, B:167:0x0378, B:170:0x0382, B:173:0x038c, B:176:0x0396, B:179:0x03a0, B:156:0x02fb, B:219:0x049c, B:220:0x04a1, B:128:0x022f, B:130:0x0233, B:131:0x0244, B:138:0x0272, B:140:0x0276, B:144:0x0286, B:141:0x0279, B:143:0x0280, B:134:0x0268, B:136:0x026d, B:72:0x0150, B:74:0x0154, B:75:0x015a, B:102:0x01a7, B:110:0x0205, B:112:0x0210, B:114:0x0213, B:116:0x0216, B:118:0x021a, B:103:0x01b3, B:105:0x01d0, B:107:0x01de, B:104:0x01c1, B:106:0x01d4, B:108:0x01e1, B:109:0x01f8, B:111:0x0208, B:77:0x015e, B:80:0x0168, B:83:0x0172, B:86:0x017c, B:89:0x0186, B:92:0x0190, B:222:0x04a3, B:223:0x04a8), top: B:232:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzg(java.util.Map<java.lang.String, java.lang.String> r17) {
        /*
            Method dump skipped, instruction units count: 1252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamz.zzg(java.util.Map):void");
    }

    public final void zzh(int i2, int i3) {
        this.zzdfs = i2;
        this.zzdft = i3;
    }

    public final boolean zzsk() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzdfz != null;
        }
        return z;
    }

    public final void zzv(boolean z) {
        synchronized (this.lock) {
            if (this.zzdfz != null) {
                this.zzdfz.dismiss();
                this.zzdga.removeView(this.zzczi.getView());
                if (this.zzdgb != null) {
                    this.zzdgb.removeView(this.zzdfx);
                    this.zzdgb.addView(this.zzczi.getView());
                    this.zzczi.zza(this.zzdfw);
                }
                if (z) {
                    zzdp("default");
                    if (this.zzcxz != null) {
                        this.zzcxz.zzsl();
                    }
                }
                this.zzdfz = null;
                this.zzdga = null;
                this.zzdgb = null;
                this.zzdfy = null;
            }
        }
    }
}
