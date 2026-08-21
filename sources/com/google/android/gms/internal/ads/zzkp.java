package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.ads.AdRequest;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"InlinedApi"})
@TargetApi(16)
public final class zzkp {
    private static final SparseIntArray zzazh;
    private static final SparseIntArray zzazi;
    private static final Map<String, Integer> zzazj;
    private static final zzkm zzaze = zzkm.zzay("OMX.google.raw.decoder");
    private static final Pattern zzazf = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<zza, List<zzkm>> zzazg = new HashMap<>();
    private static int zzazk = -1;

    static final class zza {
        public final String mimeType;
        public final boolean zzayy;

        public zza(String str, boolean z) {
            this.mimeType = str;
            this.zzayy = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == zza.class) {
                zza zzaVar = (zza) obj;
                if (TextUtils.equals(this.mimeType, zzaVar.mimeType) && this.zzayy == zzaVar.zzayy) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            String str = this.mimeType;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.zzayy ? 1231 : 1237);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        zzazh = sparseIntArray;
        sparseIntArray.put(66, 1);
        zzazh.put(77, 2);
        zzazh.put(88, 4);
        zzazh.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        zzazi = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        zzazi.put(11, 4);
        zzazi.put(12, 8);
        zzazi.put(13, 16);
        zzazi.put(20, 32);
        zzazi.put(21, 64);
        zzazi.put(22, 128);
        zzazi.put(30, 256);
        zzazi.put(31, AdRequest.MAX_CONTENT_URL_LENGTH);
        zzazi.put(32, 1024);
        zzazi.put(40, 2048);
        zzazi.put(41, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
        zzazi.put(42, 8192);
        zzazi.put(50, 16384);
        zzazi.put(51, 32768);
        zzazi.put(52, C.DEFAULT_BUFFER_SEGMENT_SIZE);
        HashMap map = new HashMap();
        zzazj = map;
        map.put("L30", 1);
        zzazj.put("L60", 4);
        zzazj.put("L63", 16);
        zzazj.put("L90", 64);
        zzazj.put("L93", 256);
        zzazj.put("L120", 1024);
        zzazj.put("L123", Integer.valueOf(MpegAudioHeader.MAX_FRAME_SIZE_BYTES));
        zzazj.put("L150", 16384);
        zzazj.put("L153", Integer.valueOf(C.DEFAULT_BUFFER_SEGMENT_SIZE));
        zzazj.put("L156", 262144);
        zzazj.put("L180", Integer.valueOf(ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES));
        zzazj.put("L183", 4194304);
        zzazj.put("L186", Integer.valueOf(C.DEFAULT_MUXED_BUFFER_SIZE));
        zzazj.put("H30", 2);
        zzazj.put("H60", 8);
        zzazj.put("H63", 32);
        zzazj.put("H90", 128);
        zzazj.put("H93", Integer.valueOf(AdRequest.MAX_CONTENT_URL_LENGTH));
        zzazj.put("H120", 2048);
        zzazj.put("H123", 8192);
        zzazj.put("H150", 32768);
        zzazj.put("H153", 131072);
        zzazj.put("H156", 524288);
        zzazj.put("H180", 2097152);
        zzazj.put("H183", 8388608);
        zzazj.put("H186", 33554432);
    }

    private static Pair<Integer, Integer> zza(String str, String[] strArr) {
        Integer numValueOf;
        Integer numValueOf2;
        String strValueOf;
        StringBuilder sb;
        String str2;
        if (strArr.length < 2) {
            String strValueOf2 = String.valueOf(str);
            Log.w("MediaCodecUtil", strValueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf2) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                Integer numValueOf3 = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                numValueOf = numValueOf3;
            } else {
                if (strArr.length < 3) {
                    String strValueOf3 = String.valueOf(str);
                    Log.w("MediaCodecUtil", strValueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf3) : new String("Ignoring malformed AVC codec string: "));
                    return null;
                }
                numValueOf = Integer.valueOf(Integer.parseInt(strArr[1]));
                numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[2]));
            }
            Integer numValueOf4 = Integer.valueOf(zzazh.get(numValueOf.intValue()));
            if (numValueOf4 == null) {
                strValueOf = String.valueOf(numValueOf);
                sb = new StringBuilder(String.valueOf(strValueOf).length() + 21);
                str2 = "Unknown AVC profile: ";
            } else {
                Integer numValueOf5 = Integer.valueOf(zzazi.get(numValueOf2.intValue()));
                if (numValueOf5 != null) {
                    return new Pair<>(numValueOf4, numValueOf5);
                }
                strValueOf = String.valueOf(numValueOf2);
                sb = new StringBuilder(String.valueOf(strValueOf).length() + 19);
                str2 = "Unknown AVC level: ";
            }
            sb.append(str2);
            sb.append(strValueOf);
            Log.w("MediaCodecUtil", sb.toString());
            return null;
        } catch (NumberFormatException unused) {
            String strValueOf4 = String.valueOf(str);
            Log.w("MediaCodecUtil", strValueOf4.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf4) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x01fa  */
    /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.google.android.gms.internal.ads.zzkt.<init>(java.lang.Throwable, com.google.android.gms.internal.ads.zzkr):void, class status: GENERATED_AND_UNLOADED
        	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:298)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isArgUnused(ProcessVariables.java:146)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.lambda$isVarUnused$0(ProcessVariables.java:131)
        	at jadx.core.utils.ListUtils.allMatch(ListUtils.java:197)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isVarUnused(ProcessVariables.java:131)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:82)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:64)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.List<com.google.android.gms.internal.ads.zzkm> zza(com.google.android.gms.internal.ads.zzkp.zza r17, com.google.android.gms.internal.ads.zzks r18) throws com.google.android.gms.internal.ads.zzkt {
        /*
            Method dump skipped, instruction units count: 696
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkp.zza(com.google.android.gms.internal.ads.zzkp$zza, com.google.android.gms.internal.ads.zzks):java.util.List");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zzbb(java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 268
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkp.zzbb(java.lang.String):android.util.Pair");
    }

    public static zzkm zzc(String str, boolean z) {
        List<zzkm> listZzd = zzd(str, z);
        if (listZzd.isEmpty()) {
            return null;
        }
        return listZzd.get(0);
    }

    private static synchronized List<zzkm> zzd(String str, boolean z) {
        zza zzaVar = new zza(str, z);
        List<zzkm> list = zzazg.get(zzaVar);
        if (list != null) {
            return list;
        }
        List<zzkm> listZza = zza(zzaVar, zzof.SDK_INT >= 21 ? new zzku(z) : new zzkv());
        if (z && listZza.isEmpty() && 21 <= zzof.SDK_INT && zzof.SDK_INT <= 23) {
            listZza = zza(zzaVar, new zzkv());
            if (!listZza.isEmpty()) {
                String str2 = listZza.get(0).name;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                sb.append("MediaCodecList API didn't list secure decoder for: ");
                sb.append(str);
                sb.append(". Assuming: ");
                sb.append(str2);
                Log.w("MediaCodecUtil", sb.toString());
            }
        }
        List<zzkm> listUnmodifiableList = Collections.unmodifiableList(listZza);
        zzazg.put(zzaVar, listUnmodifiableList);
        return listUnmodifiableList;
    }

    public static zzkm zzgv() {
        return zzaze;
    }

    public static int zzgw() {
        int i2;
        if (zzazk == -1) {
            int iMax = 0;
            zzkm zzkmVarZzc = zzc(MimeTypes.VIDEO_H264, false);
            if (zzkmVarZzc != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrZzgu = zzkmVarZzc.zzgu();
                int length = codecProfileLevelArrZzgu.length;
                int iMax2 = 0;
                while (iMax < length) {
                    int i3 = codecProfileLevelArrZzgu[iMax].level;
                    if (i3 != 1 && i3 != 2) {
                        switch (i3) {
                            case 8:
                            case 16:
                            case 32:
                                i2 = 101376;
                                break;
                            case 64:
                                i2 = 202752;
                                break;
                            case 128:
                            case 256:
                                i2 = 414720;
                                break;
                            case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
                                i2 = 921600;
                                break;
                            case 1024:
                                i2 = 1310720;
                                break;
                            case 2048:
                            case MpegAudioHeader.MAX_FRAME_SIZE_BYTES /* 4096 */:
                                i2 = 2097152;
                                break;
                            case 8192:
                                i2 = 2228224;
                                break;
                            case 16384:
                                i2 = 5652480;
                                break;
                            case 32768:
                            case C.DEFAULT_BUFFER_SEGMENT_SIZE /* 65536 */:
                                i2 = 9437184;
                                break;
                            default:
                                i2 = -1;
                                break;
                        }
                    } else {
                        i2 = 25344;
                    }
                    iMax2 = Math.max(i2, iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, zzof.SDK_INT >= 21 ? 345600 : 172800);
            }
            zzazk = iMax;
        }
        return zzazk;
    }
}
