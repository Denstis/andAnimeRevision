package com.google.android.exoplayer2.text.webvtt;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.webvtt.WebvttCue;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class WebvttCueParser {
    private static final char CHAR_AMPERSAND = '&';
    private static final char CHAR_GREATER_THAN = '>';
    private static final char CHAR_LESS_THAN = '<';
    private static final char CHAR_SEMI_COLON = ';';
    private static final char CHAR_SLASH = '/';
    private static final char CHAR_SPACE = ' ';
    public static final Pattern CUE_HEADER_PATTERN = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern CUE_SETTING_PATTERN = Pattern.compile("(\\S+?):(\\S+)");
    private static final String ENTITY_AMPERSAND = "amp";
    private static final String ENTITY_GREATER_THAN = "gt";
    private static final String ENTITY_LESS_THAN = "lt";
    private static final String ENTITY_NON_BREAK_SPACE = "nbsp";
    private static final int STYLE_BOLD = 1;
    private static final int STYLE_ITALIC = 2;
    private static final String TAG = "WebvttCueParser";
    private static final String TAG_BOLD = "b";
    private static final String TAG_CLASS = "c";
    private static final String TAG_ITALIC = "i";
    private static final String TAG_LANG = "lang";
    private static final String TAG_UNDERLINE = "u";
    private static final String TAG_VOICE = "v";
    private final StringBuilder textBuilder = new StringBuilder();

    private static final class StartTag {
        private static final String[] NO_CLASSES = new String[0];
        public final String[] classes;
        public final String name;
        public final int position;
        public final String voice;

        private StartTag(String str, int i2, String str2, String[] strArr) {
            this.position = i2;
            this.name = str;
            this.voice = str2;
            this.classes = strArr;
        }

        public static StartTag buildStartTag(String str, int i2) {
            String str2;
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return null;
            }
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrSplit = Util.split(strTrim, "\\.");
            return new StartTag(strArrSplit[0], i2, str2, strArrSplit.length > 1 ? (String[]) Arrays.copyOfRange(strArrSplit, 1, strArrSplit.length) : NO_CLASSES);
        }

        public static StartTag buildWholeCueVirtualTag() {
            return new StartTag("", 0, "", new String[0]);
        }
    }

    private static final class StyleMatch implements Comparable<StyleMatch> {
        public final int score;
        public final WebvttCssStyle style;

        public StyleMatch(int i2, WebvttCssStyle webvttCssStyle) {
            this.score = i2;
            this.style = webvttCssStyle;
        }

        @Override // java.lang.Comparable
        public int compareTo(StyleMatch styleMatch) {
            return this.score - styleMatch.score;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void applyEntity(java.lang.String r5, android.text.SpannableStringBuilder r6) {
        /*
            int r0 = r5.hashCode()
            r1 = 3309(0xced, float:4.637E-42)
            r2 = 3
            r3 = 2
            r4 = 1
            if (r0 == r1) goto L38
            r1 = 3464(0xd88, float:4.854E-42)
            if (r0 == r1) goto L2e
            r1 = 96708(0x179c4, float:1.35517E-40)
            if (r0 == r1) goto L24
            r1 = 3374865(0x337f11, float:4.729193E-39)
            if (r0 == r1) goto L1a
            goto L42
        L1a:
            java.lang.String r0 = "nbsp"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L42
            r0 = 2
            goto L43
        L24:
            java.lang.String r0 = "amp"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L42
            r0 = 3
            goto L43
        L2e:
            java.lang.String r0 = "lt"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L42
            r0 = 0
            goto L43
        L38:
            java.lang.String r0 = "gt"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L42
            r0 = 1
            goto L43
        L42:
            r0 = -1
        L43:
            if (r0 == 0) goto L70
            if (r0 == r4) goto L6d
            if (r0 == r3) goto L6a
            if (r0 == r2) goto L67
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "ignoring unsupported entity: '&"
            r6.append(r0)
            r6.append(r5)
            java.lang.String r5 = ";'"
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            java.lang.String r6 = "WebvttCueParser"
            com.google.android.exoplayer2.util.Log.w(r6, r5)
            goto L75
        L67:
            r5 = 38
            goto L72
        L6a:
            r5 = 32
            goto L72
        L6d:
            r5 = 62
            goto L72
        L70:
            r5 = 60
        L72:
            r6.append(r5)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.applyEntity(java.lang.String, android.text.SpannableStringBuilder):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0098 A[LOOP:0: B:47:0x0096->B:48:0x0098, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void applySpansForTag(java.lang.String r8, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag r9, android.text.SpannableStringBuilder r10, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> r11, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch> r12) {
        /*
            int r0 = r9.position
            int r1 = r10.length()
            java.lang.String r2 = r9.name
            int r3 = r2.hashCode()
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L67
            r7 = 105(0x69, float:1.47E-43)
            if (r3 == r7) goto L5d
            r7 = 3314158(0x3291ee, float:4.644125E-39)
            if (r3 == r7) goto L53
            r7 = 98
            if (r3 == r7) goto L49
            r7 = 99
            if (r3 == r7) goto L3f
            r7 = 117(0x75, float:1.64E-43)
            if (r3 == r7) goto L35
            r7 = 118(0x76, float:1.65E-43)
            if (r3 == r7) goto L2b
            goto L71
        L2b:
            java.lang.String r3 = "v"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L71
            r2 = 5
            goto L72
        L35:
            java.lang.String r3 = "u"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L71
            r2 = 2
            goto L72
        L3f:
            java.lang.String r3 = "c"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L71
            r2 = 3
            goto L72
        L49:
            java.lang.String r3 = "b"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L71
            r2 = 0
            goto L72
        L53:
            java.lang.String r3 = "lang"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L71
            r2 = 4
            goto L72
        L5d:
            java.lang.String r3 = "i"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L71
            r2 = 1
            goto L72
        L67:
            java.lang.String r3 = ""
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L71
            r2 = 6
            goto L72
        L71:
            r2 = -1
        L72:
            r3 = 33
            switch(r2) {
                case 0: goto L84;
                case 1: goto L7e;
                case 2: goto L78;
                case 3: goto L8c;
                case 4: goto L8c;
                case 5: goto L8c;
                case 6: goto L8c;
                default: goto L77;
            }
        L77:
            return
        L78:
            android.text.style.UnderlineSpan r2 = new android.text.style.UnderlineSpan
            r2.<init>()
            goto L89
        L7e:
            android.text.style.StyleSpan r2 = new android.text.style.StyleSpan
            r2.<init>(r5)
            goto L89
        L84:
            android.text.style.StyleSpan r2 = new android.text.style.StyleSpan
            r2.<init>(r6)
        L89:
            r10.setSpan(r2, r0, r1, r3)
        L8c:
            r12.clear()
            getApplicableStyles(r11, r8, r9, r12)
            int r8 = r12.size()
        L96:
            if (r4 >= r8) goto La6
            java.lang.Object r9 = r12.get(r4)
            com.google.android.exoplayer2.text.webvtt.WebvttCueParser$StyleMatch r9 = (com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch) r9
            com.google.android.exoplayer2.text.webvtt.WebvttCssStyle r9 = r9.style
            applyStyleToText(r10, r9, r0, r1)
            int r4 = r4 + 1
            goto L96
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.applySpansForTag(java.lang.String, com.google.android.exoplayer2.text.webvtt.WebvttCueParser$StartTag, android.text.SpannableStringBuilder, java.util.List, java.util.List):void");
    }

    private static void applyStyleToText(SpannableStringBuilder spannableStringBuilder, WebvttCssStyle webvttCssStyle, int i2, int i3) {
        Object absoluteSizeSpan;
        if (webvttCssStyle == null) {
            return;
        }
        if (webvttCssStyle.getStyle() != -1) {
            spannableStringBuilder.setSpan(new StyleSpan(webvttCssStyle.getStyle()), i2, i3, 33);
        }
        if (webvttCssStyle.isLinethrough()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i2, i3, 33);
        }
        if (webvttCssStyle.isUnderline()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i2, i3, 33);
        }
        if (webvttCssStyle.hasFontColor()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(webvttCssStyle.getFontColor()), i2, i3, 33);
        }
        if (webvttCssStyle.hasBackgroundColor()) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(webvttCssStyle.getBackgroundColor()), i2, i3, 33);
        }
        if (webvttCssStyle.getFontFamily() != null) {
            spannableStringBuilder.setSpan(new TypefaceSpan(webvttCssStyle.getFontFamily()), i2, i3, 33);
        }
        if (webvttCssStyle.getTextAlign() != null) {
            spannableStringBuilder.setSpan(new AlignmentSpan.Standard(webvttCssStyle.getTextAlign()), i2, i3, 33);
        }
        int fontSizeUnit = webvttCssStyle.getFontSizeUnit();
        if (fontSizeUnit == 1) {
            absoluteSizeSpan = new AbsoluteSizeSpan((int) webvttCssStyle.getFontSize(), true);
        } else if (fontSizeUnit == 2) {
            absoluteSizeSpan = new RelativeSizeSpan(webvttCssStyle.getFontSize());
        } else if (fontSizeUnit != 3) {
            return;
        } else {
            absoluteSizeSpan = new RelativeSizeSpan(webvttCssStyle.getFontSize() / 100.0f);
        }
        spannableStringBuilder.setSpan(absoluteSizeSpan, i2, i3, 33);
    }

    private static int findEndOfTag(String str, int i2) {
        int iIndexOf = str.indexOf(62, i2);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    private static void getApplicableStyles(List<WebvttCssStyle> list, String str, StartTag startTag, List<StyleMatch> list2) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            WebvttCssStyle webvttCssStyle = list.get(i2);
            int specificityScore = webvttCssStyle.getSpecificityScore(str, startTag.name, startTag.classes, startTag.voice);
            if (specificityScore > 0) {
                list2.add(new StyleMatch(specificityScore, webvttCssStyle));
            }
        }
        Collections.sort(list2);
    }

    private static String getTagName(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return null;
        }
        return Util.splitAtFirst(strTrim, "[ \\.]")[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean isSupportedTag(java.lang.String r8) {
        /*
            int r0 = r8.hashCode()
            r1 = 98
            r2 = 0
            r3 = 5
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r0 == r1) goto L56
            r1 = 99
            if (r0 == r1) goto L4c
            r1 = 105(0x69, float:1.47E-43)
            if (r0 == r1) goto L42
            r1 = 3314158(0x3291ee, float:4.644125E-39)
            if (r0 == r1) goto L38
            r1 = 117(0x75, float:1.64E-43)
            if (r0 == r1) goto L2e
            r1 = 118(0x76, float:1.65E-43)
            if (r0 == r1) goto L24
            goto L60
        L24:
            java.lang.String r0 = "v"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L60
            r8 = 5
            goto L61
        L2e:
            java.lang.String r0 = "u"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L60
            r8 = 4
            goto L61
        L38:
            java.lang.String r0 = "lang"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L60
            r8 = 3
            goto L61
        L42:
            java.lang.String r0 = "i"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L60
            r8 = 2
            goto L61
        L4c:
            java.lang.String r0 = "c"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L60
            r8 = 1
            goto L61
        L56:
            java.lang.String r0 = "b"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L60
            r8 = 0
            goto L61
        L60:
            r8 = -1
        L61:
            if (r8 == 0) goto L6e
            if (r8 == r7) goto L6e
            if (r8 == r6) goto L6e
            if (r8 == r5) goto L6e
            if (r8 == r4) goto L6e
            if (r8 == r3) goto L6e
            return r2
        L6e:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.isSupportedTag(java.lang.String):boolean");
    }

    private static boolean parseCue(String str, Matcher matcher, ParsableByteArray parsableByteArray, WebvttCue.Builder builder, StringBuilder sb, List<WebvttCssStyle> list) {
        try {
            builder.setStartTime(WebvttParserUtil.parseTimestampUs(matcher.group(1))).setEndTime(WebvttParserUtil.parseTimestampUs(matcher.group(2)));
            parseCueSettingsList(matcher.group(3), builder);
            sb.setLength(0);
            while (true) {
                String line = parsableByteArray.readLine();
                if (TextUtils.isEmpty(line)) {
                    parseCueText(str, sb.toString(), builder, list);
                    return true;
                }
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(line.trim());
            }
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Skipping cue with bad header: " + matcher.group());
            return false;
        }
    }

    static void parseCueSettingsList(String str, WebvttCue.Builder builder) {
        Matcher matcher = CUE_SETTING_PATTERN.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            try {
                if ("line".equals(strGroup)) {
                    parseLineAttribute(strGroup2, builder);
                } else if ("align".equals(strGroup)) {
                    builder.setTextAlignment(parseTextAlignment(strGroup2));
                } else if ("position".equals(strGroup)) {
                    parsePositionAttribute(strGroup2, builder);
                } else if ("size".equals(strGroup)) {
                    builder.setWidth(WebvttParserUtil.parsePercentage(strGroup2));
                } else {
                    Log.w(TAG, "Unknown cue setting " + strGroup + ":" + strGroup2);
                }
            } catch (NumberFormatException unused) {
                Log.w(TAG, "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    static void parseCueText(String str, String str2, WebvttCue.Builder builder, List<WebvttCssStyle> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < str2.length()) {
            char cCharAt = str2.charAt(i2);
            if (cCharAt == '&') {
                i2++;
                int iIndexOf = str2.indexOf(59, i2);
                int iIndexOf2 = str2.indexOf(32, i2);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    applyEntity(str2.substring(i2, iIndexOf), spannableStringBuilder);
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append(" ");
                    }
                    i2 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i2++;
            } else {
                int iFindEndOfTag = i2 + 1;
                if (iFindEndOfTag < str2.length()) {
                    boolean z = str2.charAt(iFindEndOfTag) == '/';
                    iFindEndOfTag = findEndOfTag(str2, iFindEndOfTag);
                    int i3 = iFindEndOfTag - 2;
                    boolean z2 = str2.charAt(i3) == '/';
                    int i4 = i2 + (z ? 2 : 1);
                    if (!z2) {
                        i3 = iFindEndOfTag - 1;
                    }
                    String strSubstring = str2.substring(i4, i3);
                    String tagName = getTagName(strSubstring);
                    if (tagName != null && isSupportedTag(tagName)) {
                        if (z) {
                            while (!arrayDeque.isEmpty()) {
                                StartTag startTag = (StartTag) arrayDeque.pop();
                                applySpansForTag(str, startTag, spannableStringBuilder, list, arrayList);
                                if (startTag.name.equals(tagName)) {
                                    break;
                                }
                            }
                        } else if (!z2) {
                            arrayDeque.push(StartTag.buildStartTag(strSubstring, spannableStringBuilder.length()));
                        }
                    }
                }
                i2 = iFindEndOfTag;
            }
        }
        while (!arrayDeque.isEmpty()) {
            applySpansForTag(str, (StartTag) arrayDeque.pop(), spannableStringBuilder, list, arrayList);
        }
        applySpansForTag(str, StartTag.buildWholeCueVirtualTag(), spannableStringBuilder, list, arrayList);
        builder.setText(spannableStringBuilder);
    }

    private static void parseLineAttribute(String str, WebvttCue.Builder builder) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            builder.setLineAnchor(parsePositionAnchor(str.substring(iIndexOf + 1)));
            str = str.substring(0, iIndexOf);
        } else {
            builder.setLineAnchor(Integer.MIN_VALUE);
        }
        if (str.endsWith("%")) {
            builder.setLine(WebvttParserUtil.parsePercentage(str)).setLineType(0);
            return;
        }
        int i2 = Integer.parseInt(str);
        if (i2 < 0) {
            i2--;
        }
        builder.setLine(i2).setLineType(1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int parsePositionAnchor(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r1 = 0
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1364013995: goto L2a;
                case -1074341483: goto L20;
                case 100571: goto L16;
                case 109757538: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L34
        Lc:
            java.lang.String r0 = "start"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 0
            goto L35
        L16:
            java.lang.String r0 = "end"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 3
            goto L35
        L20:
            java.lang.String r0 = "middle"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 2
            goto L35
        L2a:
            java.lang.String r0 = "center"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 1
            goto L35
        L34:
            r0 = -1
        L35:
            if (r0 == 0) goto L58
            if (r0 == r4) goto L57
            if (r0 == r3) goto L57
            if (r0 == r2) goto L56
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Invalid anchor value: "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r0 = "WebvttCueParser"
            com.google.android.exoplayer2.util.Log.w(r0, r5)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            return r5
        L56:
            return r3
        L57:
            return r4
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parsePositionAnchor(java.lang.String):int");
    }

    private static void parsePositionAttribute(String str, WebvttCue.Builder builder) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            builder.setPositionAnchor(parsePositionAnchor(str.substring(iIndexOf + 1)));
            str = str.substring(0, iIndexOf);
        } else {
            builder.setPositionAnchor(Integer.MIN_VALUE);
        }
        builder.setPosition(WebvttParserUtil.parsePercentage(str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.text.Layout.Alignment parseTextAlignment(java.lang.String r6) {
        /*
            int r0 = r6.hashCode()
            r1 = 5
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            switch(r0) {
                case -1364013995: goto L3f;
                case -1074341483: goto L35;
                case 100571: goto L2b;
                case 3317767: goto L21;
                case 108511772: goto L17;
                case 109757538: goto Ld;
                default: goto Lc;
            }
        Lc:
            goto L49
        Ld:
            java.lang.String r0 = "start"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 0
            goto L4a
        L17:
            java.lang.String r0 = "right"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 5
            goto L4a
        L21:
            java.lang.String r0 = "left"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 1
            goto L4a
        L2b:
            java.lang.String r0 = "end"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 4
            goto L4a
        L35:
            java.lang.String r0 = "middle"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 3
            goto L4a
        L3f:
            java.lang.String r0 = "center"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 2
            goto L4a
        L49:
            r0 = -1
        L4a:
            if (r0 == 0) goto L74
            if (r0 == r5) goto L74
            if (r0 == r4) goto L71
            if (r0 == r3) goto L71
            if (r0 == r2) goto L6e
            if (r0 == r1) goto L6e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Invalid alignment value: "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r0 = "WebvttCueParser"
            com.google.android.exoplayer2.util.Log.w(r0, r6)
            r6 = 0
            return r6
        L6e:
            android.text.Layout$Alignment r6 = android.text.Layout.Alignment.ALIGN_OPPOSITE
            return r6
        L71:
            android.text.Layout$Alignment r6 = android.text.Layout.Alignment.ALIGN_CENTER
            return r6
        L74:
            android.text.Layout$Alignment r6 = android.text.Layout.Alignment.ALIGN_NORMAL
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parseTextAlignment(java.lang.String):android.text.Layout$Alignment");
    }

    public boolean parseCue(ParsableByteArray parsableByteArray, WebvttCue.Builder builder, List<WebvttCssStyle> list) {
        String line = parsableByteArray.readLine();
        if (line == null) {
            return false;
        }
        Matcher matcher = CUE_HEADER_PATTERN.matcher(line);
        if (matcher.matches()) {
            return parseCue(null, matcher, parsableByteArray, builder, this.textBuilder, list);
        }
        String line2 = parsableByteArray.readLine();
        if (line2 == null) {
            return false;
        }
        Matcher matcher2 = CUE_HEADER_PATTERN.matcher(line2);
        if (matcher2.matches()) {
            return parseCue(line.trim(), matcher2, parsableByteArray, builder, this.textBuilder, list);
        }
        return false;
    }
}
