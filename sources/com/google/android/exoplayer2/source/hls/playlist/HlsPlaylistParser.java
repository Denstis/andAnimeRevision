package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private static final String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    private static final String BOOLEAN_FALSE = "NO";
    private static final String BOOLEAN_TRUE = "YES";
    private static final String KEYFORMAT_IDENTITY = "identity";
    private static final String KEYFORMAT_PLAYREADY = "com.microsoft.playready";
    private static final String KEYFORMAT_WIDEVINE_PSSH_BINARY = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    private static final String KEYFORMAT_WIDEVINE_PSSH_JSON = "com.widevine";
    private static final String METHOD_AES_128 = "AES-128";
    private static final String METHOD_NONE = "NONE";
    private static final String METHOD_SAMPLE_AES = "SAMPLE-AES";
    private static final String METHOD_SAMPLE_AES_CENC = "SAMPLE-AES-CENC";
    private static final String METHOD_SAMPLE_AES_CTR = "SAMPLE-AES-CTR";
    private static final String PLAYLIST_HEADER = "#EXTM3U";
    private static final String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    private static final String TAG_DEFINE = "#EXT-X-DEFINE";
    private static final String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    private static final String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String TAG_ENDLIST = "#EXT-X-ENDLIST";
    private static final String TAG_GAP = "#EXT-X-GAP";
    private static final String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    private static final String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    private static final String TAG_KEY = "#EXT-X-KEY";
    private static final String TAG_MEDIA = "#EXT-X-MEDIA";
    private static final String TAG_MEDIA_DURATION = "#EXTINF";
    private static final String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    private static final String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    private static final String TAG_PREFIX = "#EXT";
    private static final String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    private static final String TAG_START = "#EXT-X-START";
    private static final String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    private static final String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    private static final String TAG_VERSION = "#EXT-X-VERSION";
    private static final String TYPE_AUDIO = "AUDIO";
    private static final String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    private static final String TYPE_SUBTITLES = "SUBTITLES";
    private static final String TYPE_VIDEO = "VIDEO";
    private final HlsMasterPlaylist masterPlaylist;
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    private static class LineIterator {
        private final Queue<String> extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public boolean hasNext() throws IOException {
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = this.extraLines.poll();
                return true;
            }
            do {
                String line = this.reader.readLine();
                this.next = line;
                if (line == null) {
                    return false;
                }
                this.next = this.next.trim();
            } while (this.next.isEmpty());
            return true;
        }

        public String next() {
            if (!hasNext()) {
                return null;
            }
            String str = this.next;
            this.next = null;
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(HlsMasterPlaylist.EMPTY);
    }

    public HlsPlaylistParser(HlsMasterPlaylist hlsMasterPlaylist) {
        this.masterPlaylist = hlsMasterPlaylist;
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int i2 = bufferedReader.read();
        if (i2 == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i2 = bufferedReader.read();
        }
        int iSkipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, i2);
        for (int i3 = 0; i3 < 7; i3++) {
            if (iSkipIgnorableWhitespace != PLAYLIST_HEADER.charAt(i3)) {
                return false;
            }
            iSkipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, iSkipIgnorableWhitespace));
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        return Pattern.compile(str + "=(" + BOOLEAN_FALSE + "|" + BOOLEAN_TRUE + ")");
    }

    private static boolean isMediaTagMuxed(List<HlsMasterPlaylist.HlsUrl> list, String str) {
        if (str == null) {
            return true;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (str.equals(list.get(i2).url)) {
                return true;
            }
        }
        return false;
    }

    private static int parseChannelsAttribute(String str, Map<String, String> map) {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_CHANNELS, map);
        if (optionalStringAttr != null) {
            return Integer.parseInt(Util.splitAtFirst(optionalStringAttr, "/")[0]);
        }
        return -1;
    }

    private static double parseDoubleAttr(String str, Pattern pattern) {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static int parseIntAttr(String str, Pattern pattern) {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static long parseLongAttr(String str, Pattern pattern) {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x019b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist parseMasterPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.LineIterator r32, java.lang.String r33) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instruction units count: 611
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.parseMasterPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser$LineIterator, java.lang.String):com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist");
    }

    private static HlsMediaPlaylist parseMediaPlaylist(HlsMasterPlaylist hlsMasterPlaylist, LineIterator lineIterator, String str) throws ParserException {
        String stringAttr;
        TreeMap treeMap;
        DrmInitData drmInitData;
        HlsMasterPlaylist hlsMasterPlaylist2 = hlsMasterPlaylist;
        boolean z = hlsMasterPlaylist2.hasIndependentSegments;
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TreeMap treeMap2 = new TreeMap();
        int i2 = 0;
        int i3 = 1;
        boolean z2 = z;
        long doubleAttr = -9223372036854775807L;
        long intAttr = -9223372036854775807L;
        String optionalStringAttr = "";
        boolean z3 = false;
        int i4 = 0;
        String str2 = null;
        long jMsToUs = 0;
        int i5 = 0;
        long j2 = 0;
        int intAttr2 = 1;
        boolean z4 = false;
        DrmInitData drmInitData2 = null;
        long j3 = 0;
        long longAttr = 0;
        DrmInitData drmInitData3 = null;
        boolean z5 = false;
        long j4 = -1;
        int i6 = 0;
        long j5 = 0;
        String stringAttr2 = null;
        String str3 = null;
        HlsMediaPlaylist.Segment segment = null;
        long j6 = 0;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith(TAG_PREFIX)) {
                arrayList2.add(next);
            }
            if (next.startsWith(TAG_PLAYLIST_TYPE)) {
                String stringAttr3 = parseStringAttr(next, REGEX_PLAYLIST_TYPE, map);
                if ("VOD".equals(stringAttr3)) {
                    i4 = 1;
                } else if ("EVENT".equals(stringAttr3)) {
                    i4 = 2;
                }
            } else if (next.startsWith(TAG_START)) {
                doubleAttr = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
            } else if (next.startsWith(TAG_INIT_SEGMENT)) {
                String stringAttr4 = parseStringAttr(next, REGEX_URI, map);
                String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map);
                if (optionalStringAttr2 != null) {
                    String[] strArrSplit = optionalStringAttr2.split("@");
                    j4 = Long.parseLong(strArrSplit[i2]);
                    if (strArrSplit.length > i3) {
                        j3 = Long.parseLong(strArrSplit[i3]);
                    }
                }
                segment = new HlsMediaPlaylist.Segment(stringAttr4, j3, j4);
                j3 = 0;
                j4 = -1;
            } else if (next.startsWith(TAG_TARGET_DURATION)) {
                intAttr = 1000000 * ((long) parseIntAttr(next, REGEX_TARGET_DURATION));
            } else if (next.startsWith(TAG_MEDIA_SEQUENCE)) {
                longAttr = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                j2 = longAttr;
            } else if (next.startsWith(TAG_VERSION)) {
                intAttr2 = parseIntAttr(next, REGEX_VERSION);
            } else {
                if (next.startsWith(TAG_DEFINE)) {
                    String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_IMPORT, map);
                    if (optionalStringAttr3 != null) {
                        stringAttr = hlsMasterPlaylist2.variableDefinitions.get(optionalStringAttr3);
                        if (stringAttr != null) {
                        }
                    } else {
                        optionalStringAttr3 = parseStringAttr(next, REGEX_NAME, map);
                        stringAttr = parseStringAttr(next, REGEX_VALUE, map);
                    }
                    map.put(optionalStringAttr3, stringAttr);
                } else if (next.startsWith(TAG_MEDIA_DURATION)) {
                    long doubleAttr2 = (long) (parseDoubleAttr(next, REGEX_MEDIA_DURATION) * 1000000.0d);
                    optionalStringAttr = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, "", map);
                    j6 = doubleAttr2;
                } else if (next.startsWith(TAG_KEY)) {
                    String stringAttr5 = parseStringAttr(next, REGEX_METHOD, map);
                    String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, map);
                    if (METHOD_NONE.equals(stringAttr5)) {
                        treeMap2.clear();
                        drmInitData3 = null;
                        stringAttr2 = null;
                        str3 = null;
                    } else {
                        String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_IV, map);
                        if (!KEYFORMAT_IDENTITY.equals(optionalStringAttr4)) {
                            if (str2 == null) {
                                str2 = (METHOD_SAMPLE_AES_CENC.equals(stringAttr5) || METHOD_SAMPLE_AES_CTR.equals(stringAttr5)) ? C.CENC_TYPE_cenc : C.CENC_TYPE_cbcs;
                            }
                            DrmInitData.SchemeData playReadySchemeData = KEYFORMAT_PLAYREADY.equals(optionalStringAttr4) ? parsePlayReadySchemeData(next, map) : parseWidevineSchemeData(next, optionalStringAttr4, map);
                            if (playReadySchemeData != null) {
                                treeMap2.put(optionalStringAttr4, playReadySchemeData);
                                str3 = optionalStringAttr5;
                                drmInitData3 = null;
                            }
                            stringAttr2 = null;
                        } else if (METHOD_AES_128.equals(stringAttr5)) {
                            stringAttr2 = parseStringAttr(next, REGEX_URI, map);
                            str3 = optionalStringAttr5;
                        }
                        str3 = optionalStringAttr5;
                        stringAttr2 = null;
                    }
                } else if (next.startsWith(TAG_BYTERANGE)) {
                    String[] strArrSplit2 = parseStringAttr(next, REGEX_BYTERANGE, map).split("@");
                    j4 = Long.parseLong(strArrSplit2[i2]);
                    if (strArrSplit2.length > i3) {
                        j3 = Long.parseLong(strArrSplit2[i3]);
                    }
                } else if (next.startsWith(TAG_DISCONTINUITY_SEQUENCE)) {
                    i5 = Integer.parseInt(next.substring(next.indexOf(58) + i3));
                    z3 = true;
                } else if (next.equals(TAG_DISCONTINUITY)) {
                    i6++;
                } else if (next.startsWith(TAG_PROGRAM_DATE_TIME)) {
                    if (jMsToUs == 0) {
                        jMsToUs = C.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + i3))) - j5;
                    }
                } else if (next.equals(TAG_GAP)) {
                    z5 = true;
                } else if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                    z2 = true;
                } else if (next.equals(TAG_ENDLIST)) {
                    z4 = true;
                } else if (!next.startsWith("#")) {
                    String hexString = stringAttr2 == null ? null : str3 != null ? str3 : Long.toHexString(longAttr);
                    long j7 = longAttr + 1;
                    if (j4 == -1) {
                        j3 = 0;
                    }
                    if (drmInitData3 != null || treeMap2.isEmpty()) {
                        treeMap = treeMap2;
                        drmInitData = drmInitData3;
                    } else {
                        DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap2.values().toArray(new DrmInitData.SchemeData[i2]);
                        drmInitData = new DrmInitData(str2, schemeDataArr);
                        if (drmInitData2 == null) {
                            DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
                            int i7 = 0;
                            while (i7 < schemeDataArr.length) {
                                schemeDataArr2[i7] = schemeDataArr[i7].copyWithData(null);
                                i7++;
                                treeMap2 = treeMap2;
                            }
                            treeMap = treeMap2;
                            drmInitData2 = new DrmInitData(str2, schemeDataArr2);
                        } else {
                            treeMap = treeMap2;
                        }
                    }
                    arrayList.add(new HlsMediaPlaylist.Segment(replaceVariableReferences(next, map), segment, optionalStringAttr, j6, i6, j5, drmInitData, stringAttr2, hexString, j3, j4, z5));
                    j5 += j6;
                    if (j4 != -1) {
                        j3 += j4;
                    }
                    i3 = 1;
                    z5 = false;
                    j6 = 0;
                    hlsMasterPlaylist2 = hlsMasterPlaylist;
                    optionalStringAttr = "";
                    longAttr = j7;
                    drmInitData3 = drmInitData;
                    j4 = -1;
                    treeMap2 = treeMap;
                    i2 = 0;
                }
                i2 = 0;
                i3 = 1;
                hlsMasterPlaylist2 = hlsMasterPlaylist;
                treeMap2 = treeMap2;
            }
        }
        return new HlsMediaPlaylist(i4, str, arrayList2, doubleAttr, jMsToUs, z3, i5, j2, intAttr2, intAttr, z2, z4, jMsToUs != 0, drmInitData2, arrayList);
    }

    private static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals(BOOLEAN_TRUE) : z;
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, Map<String, String> map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    private static DrmInitData.SchemeData parsePlayReadySchemeData(String str, Map<String, String> map) throws ParserException {
        if (!"1".equals(parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map))) {
            return null;
        }
        String stringAttr = parseStringAttr(str, REGEX_URI, map);
        return new DrmInitData.SchemeData(C.PLAYREADY_UUID, MimeTypes.VIDEO_MP4, PsshAtomUtil.buildPsshAtom(C.PLAYREADY_UUID, Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0)));
    }

    private static int parseSelectionFlags(String str) {
        int i2 = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false) ? 1 : 0;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            i2 |= 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false) ? i2 | 4 : i2;
    }

    private static String parseStringAttr(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (optionalStringAttr != null) {
            return optionalStringAttr;
        }
        throw new ParserException("Couldn't match " + pattern.pattern() + " in " + str);
    }

    private static DrmInitData.SchemeData parseWidevineSchemeData(String str, String str2, Map<String, String> map) throws ParserException {
        if (KEYFORMAT_WIDEVINE_PSSH_BINARY.equals(str2)) {
            String stringAttr = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, MimeTypes.VIDEO_MP4, Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0));
        }
        if (!KEYFORMAT_WIDEVINE_PSSH_JSON.equals(str2)) {
            return null;
        }
        try {
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "hls", str.getBytes(C.UTF8_NAME));
        } catch (UnsupportedEncodingException e2) {
            throw new ParserException(e2);
        }
    }

    private static String replaceVariableReferences(String str, Map<String, String> map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i2) throws IOException {
        while (i2 != -1 && Character.isWhitespace(i2) && (z || !Util.isLinebreak(i2))) {
            i2 = bufferedReader.read();
        }
        return i2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws ParserException {
        String strTrim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!checkPlaylistHeader(bufferedReader)) {
                throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    Util.closeQuietly(bufferedReader);
                    throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                }
                strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (!strTrim.startsWith(TAG_STREAM_INF)) {
                        if (strTrim.startsWith(TAG_TARGET_DURATION) || strTrim.startsWith(TAG_MEDIA_SEQUENCE) || strTrim.startsWith(TAG_MEDIA_DURATION) || strTrim.startsWith(TAG_KEY) || strTrim.startsWith(TAG_BYTERANGE) || strTrim.equals(TAG_DISCONTINUITY) || strTrim.equals(TAG_DISCONTINUITY_SEQUENCE) || strTrim.equals(TAG_ENDLIST)) {
                            break;
                        }
                        arrayDeque.add(strTrim);
                    } else {
                        arrayDeque.add(strTrim);
                        return parseMasterPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                    }
                }
            }
            arrayDeque.add(strTrim);
            return parseMediaPlaylist(this.masterPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
        } finally {
            Util.closeQuietly(bufferedReader);
        }
    }
}
