package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.android.gms.ads.AdRequest;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"InlinedApi"})
@TargetApi(16)
public final class MediaCodecUtil {
    private static final SparseIntArray AVC_LEVEL_NUMBER_TO_CONST;
    private static final String CODEC_ID_AVC1 = "avc1";
    private static final String CODEC_ID_AVC2 = "avc2";
    private static final String CODEC_ID_HEV1 = "hev1";
    private static final String CODEC_ID_HVC1 = "hvc1";
    private static final String CODEC_ID_MP4A = "mp4a";
    private static final Map<String, Integer> HEVC_CODEC_STRING_TO_PROFILE_LEVEL;
    private static final SparseIntArray MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE;
    private static final String TAG = "MediaCodecUtil";
    private static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<CodecKey, List<MediaCodecInfo>> decoderInfosCache = new HashMap<>();
    private static int maxH264DecodableFrameSize = -1;
    private static final SparseIntArray AVC_PROFILE_NUMBER_TO_CONST = new SparseIntArray();

    private static final class CodecKey {
        public final String mimeType;
        public final boolean secure;

        public CodecKey(String str, boolean z) {
            this.mimeType = str;
            this.secure = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != CodecKey.class) {
                return false;
            }
            CodecKey codecKey = (CodecKey) obj;
            return TextUtils.equals(this.mimeType, codecKey.mimeType) && this.secure == codecKey.secure;
        }

        public int hashCode() {
            String str = this.mimeType;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.secure ? 1231 : 1237);
        }
    }

    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private interface MediaCodecListCompat {
        int getCodecCount();

        android.media.MediaCodecInfo getCodecInfoAt(int i2);

        boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    private static final class MediaCodecListCompatV16 implements MediaCodecListCompat {
        private MediaCodecListCompatV16() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public android.media.MediaCodecInfo getCodecInfoAt(int i2) {
            return MediaCodecList.getCodecInfoAt(i2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return MimeTypes.VIDEO_H264.equals(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    @TargetApi(21)
    private static final class MediaCodecListCompatV21 implements MediaCodecListCompat {
        private final int codecKind;
        private android.media.MediaCodecInfo[] mediaCodecInfos;

        public MediaCodecListCompatV21(boolean z) {
            this.codecKind = z ? 1 : 0;
        }

        private void ensureMediaCodecInfosInitialized() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public android.media.MediaCodecInfo getCodecInfoAt(int i2) {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos[i2];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported("secure-playback");
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    private static final class PreferOmxGoogleCodecComparator implements Comparator<MediaCodecInfo> {
        private PreferOmxGoogleCodecComparator() {
        }

        private static int scoreMediaCodecInfo(MediaCodecInfo mediaCodecInfo) {
            return mediaCodecInfo.name.startsWith("OMX.google") ? -1 : 0;
        }

        @Override // java.util.Comparator
        public int compare(MediaCodecInfo mediaCodecInfo, MediaCodecInfo mediaCodecInfo2) {
            return scoreMediaCodecInfo(mediaCodecInfo) - scoreMediaCodecInfo(mediaCodecInfo2);
        }
    }

    private static final class RawAudioCodecComparator implements Comparator<MediaCodecInfo> {
        private RawAudioCodecComparator() {
        }

        private static int scoreMediaCodecInfo(MediaCodecInfo mediaCodecInfo) {
            String str = mediaCodecInfo.name;
            if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
                return -1;
            }
            return (Util.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : 1;
        }

        @Override // java.util.Comparator
        public int compare(MediaCodecInfo mediaCodecInfo, MediaCodecInfo mediaCodecInfo2) {
            return scoreMediaCodecInfo(mediaCodecInfo) - scoreMediaCodecInfo(mediaCodecInfo2);
        }
    }

    static {
        AVC_PROFILE_NUMBER_TO_CONST.put(66, 1);
        AVC_PROFILE_NUMBER_TO_CONST.put(77, 2);
        AVC_PROFILE_NUMBER_TO_CONST.put(88, 4);
        AVC_PROFILE_NUMBER_TO_CONST.put(100, 8);
        AVC_PROFILE_NUMBER_TO_CONST.put(R.styleable.AppCompatTheme_viewInflaterClass, 16);
        AVC_PROFILE_NUMBER_TO_CONST.put(122, 32);
        AVC_PROFILE_NUMBER_TO_CONST.put(244, 64);
        AVC_LEVEL_NUMBER_TO_CONST = new SparseIntArray();
        AVC_LEVEL_NUMBER_TO_CONST.put(10, 1);
        AVC_LEVEL_NUMBER_TO_CONST.put(11, 4);
        AVC_LEVEL_NUMBER_TO_CONST.put(12, 8);
        AVC_LEVEL_NUMBER_TO_CONST.put(13, 16);
        AVC_LEVEL_NUMBER_TO_CONST.put(20, 32);
        AVC_LEVEL_NUMBER_TO_CONST.put(21, 64);
        AVC_LEVEL_NUMBER_TO_CONST.put(22, 128);
        AVC_LEVEL_NUMBER_TO_CONST.put(30, 256);
        AVC_LEVEL_NUMBER_TO_CONST.put(31, AdRequest.MAX_CONTENT_URL_LENGTH);
        AVC_LEVEL_NUMBER_TO_CONST.put(32, 1024);
        AVC_LEVEL_NUMBER_TO_CONST.put(40, 2048);
        AVC_LEVEL_NUMBER_TO_CONST.put(41, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
        AVC_LEVEL_NUMBER_TO_CONST.put(42, 8192);
        AVC_LEVEL_NUMBER_TO_CONST.put(50, 16384);
        AVC_LEVEL_NUMBER_TO_CONST.put(51, 32768);
        AVC_LEVEL_NUMBER_TO_CONST.put(52, C.DEFAULT_BUFFER_SEGMENT_SIZE);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL = new HashMap();
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L30", 1);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L60", 4);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L63", 16);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L90", 64);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L93", 256);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L120", 1024);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L123", Integer.valueOf(MpegAudioHeader.MAX_FRAME_SIZE_BYTES));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L150", 16384);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L153", Integer.valueOf(C.DEFAULT_BUFFER_SEGMENT_SIZE));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L156", 262144);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L180", Integer.valueOf(ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L183", 4194304);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L186", Integer.valueOf(C.DEFAULT_MUXED_BUFFER_SIZE));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H30", 2);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H60", 8);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H63", 32);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H90", 128);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H93", Integer.valueOf(AdRequest.MAX_CONTENT_URL_LENGTH));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H120", 2048);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H123", 8192);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H150", 32768);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H153", 131072);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H156", 524288);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H180", 2097152);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H183", 8388608);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H186", 33554432);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE = new SparseIntArray();
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(1, 1);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(2, 2);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(3, 3);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(4, 4);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(5, 5);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(6, 6);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(17, 17);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(20, 20);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(23, 23);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(29, 29);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(39, 39);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(42, 42);
    }

    private MediaCodecUtil() {
    }

    private static void applyWorkarounds(String str, List<MediaCodecInfo> list) {
        Comparator preferOmxGoogleCodecComparator;
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            preferOmxGoogleCodecComparator = new RawAudioCodecComparator();
        } else {
            if (Util.SDK_INT >= 21 || list.size() <= 1) {
                return;
            }
            String str2 = list.get(0).name;
            if (!"OMX.SEC.mp3.dec".equals(str2) && !"OMX.SEC.MP3.Decoder".equals(str2) && !"OMX.brcm.audio.mp3.decoder".equals(str2)) {
                return;
            } else {
                preferOmxGoogleCodecComparator = new PreferOmxGoogleCodecComparator();
            }
        }
        Collections.sort(list, preferOmxGoogleCodecComparator);
    }

    private static int avcLevelToMaxFrameSize(int i2) {
        if (i2 == 1 || i2 == 2) {
            return 25344;
        }
        switch (i2) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case MpegAudioHeader.MAX_FRAME_SIZE_BYTES /* 4096 */:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case C.DEFAULT_BUFFER_SEGMENT_SIZE /* 65536 */:
                return 9437184;
            default:
                return -1;
        }
    }

    private static boolean codecNeedsDisableAdaptationWorkaround(String str) {
        return Util.SDK_INT <= 22 && ("ODROID-XU3".equals(Util.MODEL) || "Nexus 10".equals(Util.MODEL)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str));
    }

    private static Pair<Integer, Integer> getAacCodecProfileAndLevel(String str, String[] strArr) {
        if (strArr.length != 3) {
            Log.w(TAG, "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(MimeTypes.getMimeTypeFromMp4ObjectType(Integer.parseInt(strArr[1], 16)))) {
                int i2 = MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.get(Integer.parseInt(strArr[2]), -1);
                if (i2 != -1) {
                    return new Pair<>(Integer.valueOf(i2), 0);
                }
            }
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    private static Pair<Integer, Integer> getAvcProfileAndLevel(String str, String[] strArr) {
        StringBuilder sb;
        Integer numValueOf;
        Integer numValueOf2;
        int i2;
        String string;
        if (strArr.length >= 2) {
            try {
                if (strArr[1].length() == 6) {
                    Integer numValueOf3 = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                    numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                    numValueOf = numValueOf3;
                } else {
                    if (strArr.length < 3) {
                        Log.w(TAG, "Ignoring malformed AVC codec string: " + str);
                        return null;
                    }
                    numValueOf = Integer.valueOf(Integer.parseInt(strArr[1]));
                    numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[2]));
                }
                i2 = AVC_PROFILE_NUMBER_TO_CONST.get(numValueOf.intValue(), -1);
            } catch (NumberFormatException unused) {
                sb = new StringBuilder();
                sb.append("Ignoring malformed AVC codec string: ");
                sb.append(str);
            }
            if (i2 == -1) {
                string = "Unknown AVC profile: " + numValueOf;
                Log.w(TAG, string);
                return null;
            }
            int i3 = AVC_LEVEL_NUMBER_TO_CONST.get(numValueOf2.intValue(), -1);
            if (i3 != -1) {
                return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
            }
            sb = new StringBuilder();
            sb.append("Unknown AVC level: ");
            sb.append(numValueOf2);
            string = sb.toString();
            Log.w(TAG, string);
            return null;
        }
        sb = new StringBuilder();
        sb.append("Ignoring malformed AVC codec string: ");
        sb.append(str);
        string = sb.toString();
        Log.w(TAG, string);
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getCodecProfileAndLevel(java.lang.String r10) {
        /*
            r0 = 0
            if (r10 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = "\\."
            java.lang.String[] r1 = r10.split(r1)
            r2 = 0
            r3 = r1[r2]
            r4 = -1
            int r5 = r3.hashCode()
            r6 = 4
            r7 = 3
            r8 = 2
            r9 = 1
            switch(r5) {
                case 3006243: goto L41;
                case 3006244: goto L37;
                case 3199032: goto L2e;
                case 3214780: goto L24;
                case 3356560: goto L1a;
                default: goto L19;
            }
        L19:
            goto L4b
        L1a:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L4b
            r2 = 4
            goto L4c
        L24:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L4b
            r2 = 1
            goto L4c
        L2e:
            java.lang.String r5 = "hev1"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L4b
            goto L4c
        L37:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L4b
            r2 = 3
            goto L4c
        L41:
            java.lang.String r2 = "avc1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L4b
            r2 = 2
            goto L4c
        L4b:
            r2 = -1
        L4c:
            if (r2 == 0) goto L61
            if (r2 == r9) goto L61
            if (r2 == r8) goto L5c
            if (r2 == r7) goto L5c
            if (r2 == r6) goto L57
            return r0
        L57:
            android.util.Pair r10 = getAacCodecProfileAndLevel(r10, r1)
            return r10
        L5c:
            android.util.Pair r10 = getAvcProfileAndLevel(r10, r1)
            return r10
        L61:
            android.util.Pair r10 = getHevcProfileAndLevel(r10, r1)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(java.lang.String):android.util.Pair");
    }

    public static MediaCodecInfo getDecoderInfo(String str, boolean z) {
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(str, z);
        if (decoderInfos.isEmpty()) {
            return null;
        }
        return decoderInfos.get(0);
    }

    public static synchronized List<MediaCodecInfo> getDecoderInfos(String str, boolean z) {
        CodecKey codecKey = new CodecKey(str, z);
        List<MediaCodecInfo> list = decoderInfosCache.get(codecKey);
        if (list != null) {
            return list;
        }
        MediaCodecListCompat mediaCodecListCompatV21 = Util.SDK_INT >= 21 ? new MediaCodecListCompatV21(z) : new MediaCodecListCompatV16();
        ArrayList<MediaCodecInfo> decoderInfosInternal = getDecoderInfosInternal(codecKey, mediaCodecListCompatV21, str);
        if (z && decoderInfosInternal.isEmpty() && 21 <= Util.SDK_INT && Util.SDK_INT <= 23) {
            mediaCodecListCompatV21 = new MediaCodecListCompatV16();
            decoderInfosInternal = getDecoderInfosInternal(codecKey, mediaCodecListCompatV21, str);
            if (!decoderInfosInternal.isEmpty()) {
                Log.w(TAG, "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + decoderInfosInternal.get(0).name);
            }
        }
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(str)) {
            decoderInfosInternal.addAll(getDecoderInfosInternal(new CodecKey(MimeTypes.AUDIO_E_AC3, codecKey.secure), mediaCodecListCompatV21, str));
        }
        applyWorkarounds(str, decoderInfosInternal);
        List<MediaCodecInfo> listUnmodifiableList = Collections.unmodifiableList(decoderInfosInternal);
        decoderInfosCache.put(codecKey, listUnmodifiableList);
        return listUnmodifiableList;
    }

    private static ArrayList<MediaCodecInfo> getDecoderInfosInternal(CodecKey codecKey, MediaCodecListCompat mediaCodecListCompat, String str) throws DecoderQueryException {
        int i2;
        MediaCodecListCompat mediaCodecListCompat2 = mediaCodecListCompat;
        try {
            ArrayList<MediaCodecInfo> arrayList = new ArrayList<>();
            String str2 = codecKey.mimeType;
            int codecCount = mediaCodecListCompat.getCodecCount();
            boolean zSecureDecodersExplicit = mediaCodecListCompat.secureDecodersExplicit();
            int i3 = 0;
            while (i3 < codecCount) {
                android.media.MediaCodecInfo codecInfoAt = mediaCodecListCompat2.getCodecInfoAt(i3);
                String name = codecInfoAt.getName();
                if (isCodecUsableDecoder(codecInfoAt, name, zSecureDecodersExplicit, str)) {
                    String[] supportedTypes = codecInfoAt.getSupportedTypes();
                    int length = supportedTypes.length;
                    int i4 = 0;
                    while (i4 < length) {
                        String str3 = supportedTypes[i4];
                        if (str3.equalsIgnoreCase(str2)) {
                            try {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str3);
                                boolean zIsSecurePlaybackSupported = mediaCodecListCompat2.isSecurePlaybackSupported(str2, capabilitiesForType);
                                boolean zCodecNeedsDisableAdaptationWorkaround = codecNeedsDisableAdaptationWorkaround(name);
                                if (zSecureDecodersExplicit) {
                                    i2 = codecCount;
                                    try {
                                        if (codecKey.secure != zIsSecurePlaybackSupported) {
                                        }
                                        arrayList.add(MediaCodecInfo.newInstance(name, str2, capabilitiesForType, zCodecNeedsDisableAdaptationWorkaround, false));
                                    } catch (Exception e2) {
                                        e = e2;
                                        if (Util.SDK_INT > 23 || arrayList.isEmpty()) {
                                            Log.e(TAG, "Failed to query codec " + name + " (" + str3 + ")");
                                            throw e;
                                        }
                                        Log.e(TAG, "Skipping codec " + name + " (failed to query capabilities)");
                                    }
                                } else {
                                    i2 = codecCount;
                                }
                                if (!zSecureDecodersExplicit && !codecKey.secure) {
                                    arrayList.add(MediaCodecInfo.newInstance(name, str2, capabilitiesForType, zCodecNeedsDisableAdaptationWorkaround, false));
                                } else if (!zSecureDecodersExplicit && zIsSecurePlaybackSupported) {
                                    arrayList.add(MediaCodecInfo.newInstance(name + ".secure", str2, capabilitiesForType, zCodecNeedsDisableAdaptationWorkaround, true));
                                    return arrayList;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                i2 = codecCount;
                            }
                        } else {
                            i2 = codecCount;
                        }
                        i4++;
                        mediaCodecListCompat2 = mediaCodecListCompat;
                        codecCount = i2;
                    }
                }
                i3++;
                mediaCodecListCompat2 = mediaCodecListCompat;
                codecCount = codecCount;
            }
            return arrayList;
        } catch (Exception e4) {
            throw new DecoderQueryException(e4);
        }
    }

    private static Pair<Integer, Integer> getHevcProfileAndLevel(String str, String[] strArr) {
        StringBuilder sb;
        int i2;
        String string;
        if (strArr.length < 4) {
            sb = new StringBuilder();
        } else {
            Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
            if (matcher.matches()) {
                str = matcher.group(1);
                if ("1".equals(str)) {
                    i2 = 1;
                } else {
                    if (!"2".equals(str)) {
                        sb = new StringBuilder();
                        sb.append("Unknown HEVC profile string: ");
                        sb.append(str);
                        string = sb.toString();
                        Log.w(TAG, string);
                        return null;
                    }
                    i2 = 2;
                }
                Integer num = HEVC_CODEC_STRING_TO_PROFILE_LEVEL.get(strArr[3]);
                if (num != null) {
                    return new Pair<>(Integer.valueOf(i2), num);
                }
                string = "Unknown HEVC level string: " + matcher.group(1);
                Log.w(TAG, string);
                return null;
            }
            sb = new StringBuilder();
        }
        sb.append("Ignoring malformed HEVC codec string: ");
        sb.append(str);
        string = sb.toString();
        Log.w(TAG, string);
        return null;
    }

    public static MediaCodecInfo getPassthroughDecoderInfo() {
        MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.AUDIO_RAW, false);
        if (decoderInfo == null) {
            return null;
        }
        return MediaCodecInfo.newPassthroughInstance(decoderInfo.name);
    }

    private static boolean isCodecUsableDecoder(android.media.MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        if (Util.SDK_INT < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (Util.SDK_INT < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str) && ("a70".equals(Util.DEVICE) || ("Xiaomi".equals(Util.MANUFACTURER) && Util.DEVICE.startsWith("HM")))) {
            return false;
        }
        if (Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(Util.DEVICE) || "protou".equals(Util.DEVICE) || "ville".equals(Util.DEVICE) || "villeplus".equals(Util.DEVICE) || "villec2".equals(Util.DEVICE) || Util.DEVICE.startsWith("gee") || "C6602".equals(Util.DEVICE) || "C6603".equals(Util.DEVICE) || "C6606".equals(Util.DEVICE) || "C6616".equals(Util.DEVICE) || "L36h".equals(Util.DEVICE) || "SO-02E".equals(Util.DEVICE))) {
            return false;
        }
        if (Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(Util.DEVICE) || "C1505".equals(Util.DEVICE) || "C1604".equals(Util.DEVICE) || "C1605".equals(Util.DEVICE))) {
            return false;
        }
        if (Util.SDK_INT < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(Util.MANUFACTURER) && (Util.DEVICE.startsWith("zeroflte") || Util.DEVICE.startsWith("zerolte") || Util.DEVICE.startsWith("zenlte") || "SC-05G".equals(Util.DEVICE) || "marinelteatt".equals(Util.DEVICE) || "404SC".equals(Util.DEVICE) || "SC-04G".equals(Util.DEVICE) || "SCV31".equals(Util.DEVICE)))) {
            return false;
        }
        if (Util.SDK_INT <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(Util.MANUFACTURER) && (Util.DEVICE.startsWith("d2") || Util.DEVICE.startsWith("serrano") || Util.DEVICE.startsWith("jflte") || Util.DEVICE.startsWith("santos") || Util.DEVICE.startsWith("t0"))) {
            return false;
        }
        if (Util.SDK_INT <= 19 && Util.DEVICE.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    public static int maxH264DecodableFrameSize() {
        if (maxH264DecodableFrameSize == -1) {
            int iMax = 0;
            MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.VIDEO_H264, false);
            if (decoderInfo != null) {
                MediaCodecInfo.CodecProfileLevel[] profileLevels = decoderInfo.getProfileLevels();
                int length = profileLevels.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = Math.max(avcLevelToMaxFrameSize(profileLevels[iMax].level), iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, Util.SDK_INT >= 21 ? 345600 : 172800);
            }
            maxH264DecodableFrameSize = iMax;
        }
        return maxH264DecodableFrameSize;
    }

    public static void warmDecoderInfoCache(String str, boolean z) {
        try {
            getDecoderInfos(str, z);
        } catch (DecoderQueryException e2) {
            Log.e(TAG, "Codec warming failed", e2);
        }
    }
}
