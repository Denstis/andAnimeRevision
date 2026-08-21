package com.google.android.exoplayer2.text.subrip;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class SubripDecoder extends SimpleSubtitleDecoder {
    private static final String ALIGN_BOTTOM_LEFT = "{\\an1}";
    private static final String ALIGN_BOTTOM_MID = "{\\an2}";
    private static final String ALIGN_BOTTOM_RIGHT = "{\\an3}";
    private static final String ALIGN_MID_LEFT = "{\\an4}";
    private static final String ALIGN_MID_MID = "{\\an5}";
    private static final String ALIGN_MID_RIGHT = "{\\an6}";
    private static final String ALIGN_TOP_LEFT = "{\\an7}";
    private static final String ALIGN_TOP_MID = "{\\an8}";
    private static final String ALIGN_TOP_RIGHT = "{\\an9}";
    static final float END_FRACTION = 0.92f;
    static final float MID_FRACTION = 0.5f;
    static final float START_FRACTION = 0.08f;
    private static final String SUBRIP_ALIGNMENT_TAG = "\\{\\\\an[1-9]\\}";
    private static final String SUBRIP_TIMECODE = "(?:(\\d+):)?(\\d+):(\\d+),(\\d+)";
    private static final String TAG = "SubripDecoder";
    private final ArrayList<String> tags;
    private final StringBuilder textBuilder;
    private static final Pattern SUBRIP_TIMING_LINE = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*");
    private static final Pattern SUBRIP_TAG_PATTERN = Pattern.compile("\\{\\\\.*?\\}");

    public SubripDecoder() {
        super(TAG);
        this.textBuilder = new StringBuilder();
        this.tags = new ArrayList<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.android.exoplayer2.text.Cue buildCue(android.text.Spanned r18, java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 338
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.subrip.SubripDecoder.buildCue(android.text.Spanned, java.lang.String):com.google.android.exoplayer2.text.Cue");
    }

    static float getFractionalPositionForAnchorType(int i2) {
        if (i2 != 0) {
            return i2 != 1 ? END_FRACTION : MID_FRACTION;
        }
        return 0.08f;
    }

    private static long parseTimecode(Matcher matcher, int i2) {
        return ((Long.parseLong(matcher.group(i2 + 1)) * 60 * 60 * 1000) + (Long.parseLong(matcher.group(i2 + 2)) * 60 * 1000) + (Long.parseLong(matcher.group(i2 + 3)) * 1000) + Long.parseLong(matcher.group(i2 + 4))) * 1000;
    }

    private String processLine(String str, ArrayList<String> arrayList) {
        String strTrim = str.trim();
        StringBuilder sb = new StringBuilder(strTrim);
        Matcher matcher = SUBRIP_TAG_PATTERN.matcher(strTrim);
        int i2 = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i2;
            int length = strGroup.length();
            sb.replace(iStart, iStart + length, "");
            i2 += length;
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public SubripSubtitle decode(byte[] bArr, int i2, boolean z) {
        StringBuilder sb;
        String str;
        String str2;
        ArrayList arrayList = new ArrayList();
        LongArray longArray = new LongArray();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i2);
        while (true) {
            String line = parsableByteArray.readLine();
            if (line == null) {
                break;
            }
            if (line.length() != 0) {
                try {
                    Integer.parseInt(line);
                    line = parsableByteArray.readLine();
                } catch (NumberFormatException unused) {
                    sb = new StringBuilder();
                    str = "Skipping invalid index: ";
                }
                if (line == null) {
                    Log.w(TAG, "Unexpected end");
                    break;
                }
                Matcher matcher = SUBRIP_TIMING_LINE.matcher(line);
                if (matcher.matches()) {
                    boolean z2 = true;
                    longArray.add(parseTimecode(matcher, 1));
                    int i3 = 0;
                    if (TextUtils.isEmpty(matcher.group(6))) {
                        z2 = false;
                    } else {
                        longArray.add(parseTimecode(matcher, 6));
                    }
                    this.textBuilder.setLength(0);
                    this.tags.clear();
                    while (true) {
                        String line2 = parsableByteArray.readLine();
                        if (TextUtils.isEmpty(line2)) {
                            break;
                        }
                        if (this.textBuilder.length() > 0) {
                            this.textBuilder.append("<br>");
                        }
                        this.textBuilder.append(processLine(line2, this.tags));
                    }
                    Spanned spannedFromHtml = Html.fromHtml(this.textBuilder.toString());
                    while (true) {
                        if (i3 >= this.tags.size()) {
                            str2 = null;
                            break;
                        }
                        str2 = this.tags.get(i3);
                        if (str2.matches(SUBRIP_ALIGNMENT_TAG)) {
                            break;
                        }
                        i3++;
                    }
                    arrayList.add(buildCue(spannedFromHtml, str2));
                    if (z2) {
                        arrayList.add(null);
                    }
                } else {
                    sb = new StringBuilder();
                    str = "Skipping invalid timing: ";
                    sb.append(str);
                    sb.append(line);
                    Log.w(TAG, sb.toString());
                }
            }
        }
        Cue[] cueArr = new Cue[arrayList.size()];
        arrayList.toArray(cueArr);
        return new SubripSubtitle(cueArr, longArray.toArray());
    }
}
