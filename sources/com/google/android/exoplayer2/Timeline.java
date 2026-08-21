package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes.dex */
public abstract class Timeline {
    public static final Timeline EMPTY = new Timeline() { // from class: com.google.android.exoplayer2.Timeline.1
        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Period getPeriod(int i2, Period period, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i2) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Window getWindow(int i2, Window window, boolean z, long j2) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 0;
        }
    };

    public static final class Period {
        private AdPlaybackState adPlaybackState;
        public long durationUs;
        public Object id;
        private long positionInWindowUs;
        public Object uid;
        public int windowIndex;

        public int getAdCountInAdGroup(int i2) {
            return this.adPlaybackState.adGroups[i2].count;
        }

        public long getAdDurationUs(int i2, int i3) {
            AdPlaybackState.AdGroup adGroup = this.adPlaybackState.adGroups[i2];
            return adGroup.count != -1 ? adGroup.durationsUs[i3] : C.TIME_UNSET;
        }

        public int getAdGroupCount() {
            return this.adPlaybackState.adGroupCount;
        }

        public int getAdGroupIndexAfterPositionUs(long j2) {
            return this.adPlaybackState.getAdGroupIndexAfterPositionUs(j2);
        }

        public int getAdGroupIndexForPositionUs(long j2) {
            return this.adPlaybackState.getAdGroupIndexForPositionUs(j2);
        }

        public long getAdGroupTimeUs(int i2) {
            return this.adPlaybackState.adGroupTimesUs[i2];
        }

        public long getAdResumePositionUs() {
            return this.adPlaybackState.adResumePositionUs;
        }

        public long getDurationMs() {
            return C.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public int getFirstAdIndexToPlay(int i2) {
            return this.adPlaybackState.adGroups[i2].getFirstAdIndexToPlay();
        }

        public int getNextAdIndexToPlay(int i2, int i3) {
            return this.adPlaybackState.adGroups[i2].getNextAdIndexToPlay(i3);
        }

        public long getPositionInWindowMs() {
            return C.usToMs(this.positionInWindowUs);
        }

        public long getPositionInWindowUs() {
            return this.positionInWindowUs;
        }

        public boolean hasPlayedAdGroup(int i2) {
            return !this.adPlaybackState.adGroups[i2].hasUnplayedAds();
        }

        public boolean isAdAvailable(int i2, int i3) {
            AdPlaybackState.AdGroup adGroup = this.adPlaybackState.adGroups[i2];
            return (adGroup.count == -1 || adGroup.states[i3] == 0) ? false : true;
        }

        public Period set(Object obj, Object obj2, int i2, long j2, long j3) {
            return set(obj, obj2, i2, j2, j3, AdPlaybackState.NONE);
        }

        public Period set(Object obj, Object obj2, int i2, long j2, long j3, AdPlaybackState adPlaybackState) {
            this.id = obj;
            this.uid = obj2;
            this.windowIndex = i2;
            this.durationUs = j2;
            this.positionInWindowUs = j3;
            this.adPlaybackState = adPlaybackState;
            return this;
        }
    }

    public static final class Window {
        public long defaultPositionUs;
        public long durationUs;
        public int firstPeriodIndex;
        public boolean isDynamic;
        public boolean isSeekable;
        public int lastPeriodIndex;
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;
        public Object tag;
        public long windowStartTimeMs;

        public long getDefaultPositionMs() {
            return C.usToMs(this.defaultPositionUs);
        }

        public long getDefaultPositionUs() {
            return this.defaultPositionUs;
        }

        public long getDurationMs() {
            return C.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public long getPositionInFirstPeriodMs() {
            return C.usToMs(this.positionInFirstPeriodUs);
        }

        public long getPositionInFirstPeriodUs() {
            return this.positionInFirstPeriodUs;
        }

        public Window set(Object obj, long j2, long j3, boolean z, boolean z2, long j4, long j5, int i2, int i3, long j6) {
            this.tag = obj;
            this.presentationStartTimeMs = j2;
            this.windowStartTimeMs = j3;
            this.isSeekable = z;
            this.isDynamic = z2;
            this.defaultPositionUs = j4;
            this.durationUs = j5;
            this.firstPeriodIndex = i2;
            this.lastPeriodIndex = i3;
            this.positionInFirstPeriodUs = j6;
            return this;
        }
    }

    public int getFirstWindowIndex(boolean z) {
        return isEmpty() ? -1 : 0;
    }

    public abstract int getIndexOfPeriod(Object obj);

    public int getLastWindowIndex(boolean z) {
        if (isEmpty()) {
            return -1;
        }
        return getWindowCount() - 1;
    }

    public final int getNextPeriodIndex(int i2, Period period, Window window, int i3, boolean z) {
        int i4 = getPeriod(i2, period).windowIndex;
        if (getWindow(i4, window).lastPeriodIndex != i2) {
            return i2 + 1;
        }
        int nextWindowIndex = getNextWindowIndex(i4, i3, z);
        if (nextWindowIndex == -1) {
            return -1;
        }
        return getWindow(nextWindowIndex, window).firstPeriodIndex;
    }

    public int getNextWindowIndex(int i2, int i3, boolean z) {
        if (i3 == 0) {
            if (i2 == getLastWindowIndex(z)) {
                return -1;
            }
            return i2 + 1;
        }
        if (i3 == 1) {
            return i2;
        }
        if (i3 == 2) {
            return i2 == getLastWindowIndex(z) ? getFirstWindowIndex(z) : i2 + 1;
        }
        throw new IllegalStateException();
    }

    public final Period getPeriod(int i2, Period period) {
        return getPeriod(i2, period, false);
    }

    public abstract Period getPeriod(int i2, Period period, boolean z);

    public Period getPeriodByUid(Object obj, Period period) {
        return getPeriod(getIndexOfPeriod(obj), period, true);
    }

    public abstract int getPeriodCount();

    public final Pair<Object, Long> getPeriodPosition(Window window, Period period, int i2, long j2) {
        return getPeriodPosition(window, period, i2, j2, 0L);
    }

    public final Pair<Object, Long> getPeriodPosition(Window window, Period period, int i2, long j2, long j3) {
        Assertions.checkIndex(i2, 0, getWindowCount());
        getWindow(i2, window, false, j3);
        if (j2 == C.TIME_UNSET) {
            j2 = window.getDefaultPositionUs();
            if (j2 == C.TIME_UNSET) {
                return null;
            }
        }
        int i3 = window.firstPeriodIndex;
        long positionInFirstPeriodUs = window.getPositionInFirstPeriodUs() + j2;
        while (true) {
            long durationUs = getPeriod(i3, period, true).getDurationUs();
            if (durationUs == C.TIME_UNSET || positionInFirstPeriodUs < durationUs || i3 >= window.lastPeriodIndex) {
                break;
            }
            positionInFirstPeriodUs -= durationUs;
            i3++;
        }
        return Pair.create(period.uid, Long.valueOf(positionInFirstPeriodUs));
    }

    public int getPreviousWindowIndex(int i2, int i3, boolean z) {
        if (i3 == 0) {
            if (i2 == getFirstWindowIndex(z)) {
                return -1;
            }
            return i2 - 1;
        }
        if (i3 == 1) {
            return i2;
        }
        if (i3 == 2) {
            return i2 == getFirstWindowIndex(z) ? getLastWindowIndex(z) : i2 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object getUidOfPeriod(int i2);

    public final Window getWindow(int i2, Window window) {
        return getWindow(i2, window, false);
    }

    public final Window getWindow(int i2, Window window, boolean z) {
        return getWindow(i2, window, z, 0L);
    }

    public abstract Window getWindow(int i2, Window window, boolean z, long j2);

    public abstract int getWindowCount();

    public final boolean isEmpty() {
        return getWindowCount() == 0;
    }

    public final boolean isLastPeriod(int i2, Period period, Window window, int i3, boolean z) {
        return getNextPeriodIndex(i2, period, window, i3, z) == -1;
    }
}
