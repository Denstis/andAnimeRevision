package com.google.android.exoplayer2.text.ttml;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
final class TtmlNode {
    public static final String ANONYMOUS_REGION_ID = "";
    public static final String ATTR_ID = "id";
    public static final String ATTR_TTS_BACKGROUND_COLOR = "backgroundColor";
    public static final String ATTR_TTS_COLOR = "color";
    public static final String ATTR_TTS_DISPLAY_ALIGN = "displayAlign";
    public static final String ATTR_TTS_EXTENT = "extent";
    public static final String ATTR_TTS_FONT_FAMILY = "fontFamily";
    public static final String ATTR_TTS_FONT_SIZE = "fontSize";
    public static final String ATTR_TTS_FONT_STYLE = "fontStyle";
    public static final String ATTR_TTS_FONT_WEIGHT = "fontWeight";
    public static final String ATTR_TTS_ORIGIN = "origin";
    public static final String ATTR_TTS_TEXT_ALIGN = "textAlign";
    public static final String ATTR_TTS_TEXT_DECORATION = "textDecoration";
    public static final String BOLD = "bold";
    public static final String CENTER = "center";
    public static final String END = "end";
    public static final String ITALIC = "italic";
    public static final String LEFT = "left";
    public static final String LINETHROUGH = "linethrough";
    public static final String NO_LINETHROUGH = "nolinethrough";
    public static final String NO_UNDERLINE = "nounderline";
    public static final String RIGHT = "right";
    public static final String START = "start";
    public static final String TAG_BODY = "body";
    public static final String TAG_BR = "br";
    public static final String TAG_DATA = "data";
    public static final String TAG_DIV = "div";
    public static final String TAG_HEAD = "head";
    public static final String TAG_IMAGE = "image";
    public static final String TAG_INFORMATION = "information";
    public static final String TAG_LAYOUT = "layout";
    public static final String TAG_METADATA = "metadata";
    public static final String TAG_P = "p";
    public static final String TAG_REGION = "region";
    public static final String TAG_SPAN = "span";
    public static final String TAG_STYLE = "style";
    public static final String TAG_STYLING = "styling";
    public static final String TAG_TT = "tt";
    public static final String UNDERLINE = "underline";
    private List<TtmlNode> children;
    public final long endTimeUs;
    public final String imageId;
    public final boolean isTextNode;
    private final HashMap<String, Integer> nodeEndsByRegion;
    private final HashMap<String, Integer> nodeStartsByRegion;
    public final String regionId;
    public final long startTimeUs;
    public final TtmlStyle style;
    private final String[] styleIds;
    public final String tag;
    public final String text;

    private TtmlNode(String str, String str2, long j2, long j3, TtmlStyle ttmlStyle, String[] strArr, String str3, String str4) {
        this.tag = str;
        this.text = str2;
        this.imageId = str4;
        this.style = ttmlStyle;
        this.styleIds = strArr;
        this.isTextNode = str2 != null;
        this.startTimeUs = j2;
        this.endTimeUs = j3;
        this.regionId = (String) Assertions.checkNotNull(str3);
        this.nodeStartsByRegion = new HashMap<>();
        this.nodeEndsByRegion = new HashMap<>();
    }

    private void applyStyleToOutput(Map<String, TtmlStyle> map, SpannableStringBuilder spannableStringBuilder, int i2, int i3) {
        TtmlStyle ttmlStyleResolveStyle = TtmlRenderUtil.resolveStyle(this.style, this.styleIds, map);
        if (ttmlStyleResolveStyle != null) {
            TtmlRenderUtil.applyStylesToSpan(spannableStringBuilder, i2, i3, ttmlStyleResolveStyle);
        }
    }

    public static TtmlNode buildNode(String str, long j2, long j3, TtmlStyle ttmlStyle, String[] strArr, String str2, String str3) {
        return new TtmlNode(str, null, j2, j3, ttmlStyle, strArr, str2, str3);
    }

    public static TtmlNode buildTextNode(String str) {
        return new TtmlNode(null, TtmlRenderUtil.applyTextElementSpacePolicy(str), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null);
    }

    private SpannableStringBuilder cleanUpText(SpannableStringBuilder spannableStringBuilder) {
        int i2;
        int i3;
        int i4 = 0;
        int length = spannableStringBuilder.length();
        for (int i5 = 0; i5 < length; i5++) {
            if (spannableStringBuilder.charAt(i5) == ' ') {
                int i6 = i5 + 1;
                int i7 = i6;
                while (i7 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i7) == ' ') {
                    i7++;
                }
                int i8 = i7 - i6;
                if (i8 > 0) {
                    spannableStringBuilder.delete(i5, i5 + i8);
                    length -= i8;
                }
            }
        }
        if (length > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
            length--;
        }
        int i9 = 0;
        while (true) {
            i2 = length - 1;
            if (i9 >= i2) {
                break;
            }
            if (spannableStringBuilder.charAt(i9) == '\n') {
                int i10 = i9 + 1;
                if (spannableStringBuilder.charAt(i10) == ' ') {
                    spannableStringBuilder.delete(i10, i9 + 2);
                    length--;
                }
            }
            i9++;
        }
        if (length > 0 && spannableStringBuilder.charAt(i2) == ' ') {
            spannableStringBuilder.delete(i2, length);
            length--;
        }
        while (true) {
            i3 = length - 1;
            if (i4 >= i3) {
                break;
            }
            if (spannableStringBuilder.charAt(i4) == ' ') {
                int i11 = i4 + 1;
                if (spannableStringBuilder.charAt(i11) == '\n') {
                    spannableStringBuilder.delete(i4, i11);
                    length--;
                }
            }
            i4++;
        }
        if (length > 0 && spannableStringBuilder.charAt(i3) == '\n') {
            spannableStringBuilder.delete(i3, length);
        }
        return spannableStringBuilder;
    }

    private void getEventTimes(TreeSet<Long> treeSet, boolean z) {
        boolean zEquals = TAG_P.equals(this.tag);
        boolean zEquals2 = TAG_DIV.equals(this.tag);
        if (z || zEquals || (zEquals2 && this.imageId != null)) {
            long j2 = this.startTimeUs;
            if (j2 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
            long j3 = this.endTimeUs;
            if (j3 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j3));
            }
        }
        if (this.children == null) {
            return;
        }
        for (int i2 = 0; i2 < this.children.size(); i2++) {
            this.children.get(i2).getEventTimes(treeSet, z || zEquals);
        }
    }

    private static SpannableStringBuilder getRegionOutput(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    private void traverseForImage(long j2, String str, List<Pair<String, String>> list) {
        String str2;
        if (!"".equals(this.regionId)) {
            str = this.regionId;
        }
        if (isActive(j2) && TAG_DIV.equals(this.tag) && (str2 = this.imageId) != null) {
            list.add(new Pair<>(str, str2));
            return;
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            getChild(i2).traverseForImage(j2, str, list);
        }
    }

    private void traverseForStyle(long j2, Map<String, TtmlStyle> map, Map<String, SpannableStringBuilder> map2) {
        int iIntValue;
        if (isActive(j2)) {
            Iterator<Map.Entry<String, Integer>> it = this.nodeEndsByRegion.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                iIntValue = this.nodeStartsByRegion.containsKey(key) ? this.nodeStartsByRegion.get(key).intValue() : 0;
                int iIntValue2 = next.getValue().intValue();
                if (iIntValue != iIntValue2) {
                    applyStyleToOutput(map, map2.get(key), iIntValue, iIntValue2);
                }
            }
            while (iIntValue < getChildCount()) {
                getChild(iIntValue).traverseForStyle(j2, map, map2);
                iIntValue++;
            }
        }
    }

    private void traverseForText(long j2, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.nodeStartsByRegion.clear();
        this.nodeEndsByRegion.clear();
        if (TAG_METADATA.equals(this.tag)) {
            return;
        }
        if (!"".equals(this.regionId)) {
            str = this.regionId;
        }
        if (this.isTextNode && z) {
            getRegionOutput(str, map).append((CharSequence) this.text);
            return;
        }
        if (TAG_BR.equals(this.tag) && z) {
            getRegionOutput(str, map).append('\n');
            return;
        }
        if (isActive(j2)) {
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.nodeStartsByRegion.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
            }
            boolean zEquals = TAG_P.equals(this.tag);
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                getChild(i2).traverseForText(j2, z || zEquals, str, map);
            }
            if (zEquals) {
                TtmlRenderUtil.endParagraph(getRegionOutput(str, map));
            }
            for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                this.nodeEndsByRegion.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }

    public void addChild(TtmlNode ttmlNode) {
        if (this.children == null) {
            this.children = new ArrayList();
        }
        this.children.add(ttmlNode);
    }

    public TtmlNode getChild(int i2) {
        List<TtmlNode> list = this.children;
        if (list != null) {
            return list.get(i2);
        }
        throw new IndexOutOfBoundsException();
    }

    public int getChildCount() {
        List<TtmlNode> list = this.children;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<Cue> getCues(long j2, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        traverseForImage(j2, this.regionId, arrayList);
        TreeMap treeMap = new TreeMap();
        traverseForText(j2, false, this.regionId, treeMap);
        traverseForStyle(j2, map, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                TtmlRegion ttmlRegion = map2.get(pair.first);
                arrayList2.add(new Cue(bitmapDecodeByteArray, ttmlRegion.position, 1, ttmlRegion.line, ttmlRegion.lineAnchor, ttmlRegion.width, Float.MIN_VALUE));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            TtmlRegion ttmlRegion2 = map2.get(entry.getKey());
            arrayList2.add(new Cue(cleanUpText((SpannableStringBuilder) entry.getValue()), (Layout.Alignment) null, ttmlRegion2.line, ttmlRegion2.lineType, ttmlRegion2.lineAnchor, ttmlRegion2.position, Integer.MIN_VALUE, ttmlRegion2.width, ttmlRegion2.textSizeType, ttmlRegion2.textSize));
        }
        return arrayList2;
    }

    public long[] getEventTimesUs() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i2 = 0;
        getEventTimes(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i2] = it.next().longValue();
            i2++;
        }
        return jArr;
    }

    public String[] getStyleIds() {
        return this.styleIds;
    }

    public boolean isActive(long j2) {
        return (this.startTimeUs == C.TIME_UNSET && this.endTimeUs == C.TIME_UNSET) || (this.startTimeUs <= j2 && this.endTimeUs == C.TIME_UNSET) || ((this.startTimeUs == C.TIME_UNSET && j2 < this.endTimeUs) || (this.startTimeUs <= j2 && j2 < this.endTimeUs));
    }
}
