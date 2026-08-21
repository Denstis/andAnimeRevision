package com.google.android.exoplayer2.text.webvtt;

import android.text.SpannableStringBuilder;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class WebvttSubtitle implements Subtitle {
    private final long[] cueTimesUs;
    private final List<WebvttCue> cues;
    private final int numCues;
    private final long[] sortedCueTimesUs;

    public WebvttSubtitle(List<WebvttCue> list) {
        this.cues = list;
        this.numCues = list.size();
        this.cueTimesUs = new long[this.numCues * 2];
        for (int i2 = 0; i2 < this.numCues; i2++) {
            WebvttCue webvttCue = list.get(i2);
            int i3 = i2 * 2;
            long[] jArr = this.cueTimesUs;
            jArr[i3] = webvttCue.startTime;
            jArr[i3 + 1] = webvttCue.endTime;
        }
        long[] jArr2 = this.cueTimesUs;
        this.sortedCueTimesUs = Arrays.copyOf(jArr2, jArr2.length);
        Arrays.sort(this.sortedCueTimesUs);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j2) {
        SpannableStringBuilder spannableStringBuilderAppend;
        SpannableStringBuilder spannableStringBuilder = null;
        WebvttCue webvttCue = null;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < this.numCues; i2++) {
            long[] jArr = this.cueTimesUs;
            int i3 = i2 * 2;
            if (jArr[i3] <= j2 && j2 < jArr[i3 + 1]) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                WebvttCue webvttCue2 = this.cues.get(i2);
                if (!webvttCue2.isNormalCue()) {
                    arrayList.add(webvttCue2);
                } else if (webvttCue == null) {
                    webvttCue = webvttCue2;
                } else {
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        spannableStringBuilderAppend = spannableStringBuilder.append(webvttCue.text).append((CharSequence) "\n");
                    } else {
                        spannableStringBuilderAppend = spannableStringBuilder.append((CharSequence) "\n");
                    }
                    spannableStringBuilderAppend.append(webvttCue2.text);
                }
            }
        }
        if (spannableStringBuilder != null) {
            arrayList.add(new WebvttCue(spannableStringBuilder));
        } else if (webvttCue != null) {
            arrayList.add(webvttCue);
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i2) {
        Assertions.checkArgument(i2 >= 0);
        Assertions.checkArgument(i2 < this.sortedCueTimesUs.length);
        return this.sortedCueTimesUs[i2];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.sortedCueTimesUs.length;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j2) {
        int iBinarySearchCeil = Util.binarySearchCeil(this.sortedCueTimesUs, j2, false, false);
        if (iBinarySearchCeil < this.sortedCueTimesUs.length) {
            return iBinarySearchCeil;
        }
        return -1;
    }
}
