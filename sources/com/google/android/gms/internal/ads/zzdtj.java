package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdtj {
    static String zzdc(zzdpm zzdpmVar) {
        String str;
        zzdtm zzdtmVar = new zzdtm(zzdpmVar);
        StringBuilder sb = new StringBuilder(zzdtmVar.size());
        for (int i2 = 0; i2 < zzdtmVar.size(); i2++) {
            int iZzfm = zzdtmVar.zzfm(i2);
            if (iZzfm == 34) {
                str = "\\\"";
            } else if (iZzfm == 39) {
                str = "\\'";
            } else if (iZzfm != 92) {
                switch (iZzfm) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (iZzfm < 32 || iZzfm > 126) {
                            sb.append('\\');
                            sb.append((char) (((iZzfm >>> 6) & 3) + 48));
                            sb.append((char) (((iZzfm >>> 3) & 7) + 48));
                            iZzfm = (iZzfm & 7) + 48;
                        }
                        sb.append((char) iZzfm);
                        continue;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
