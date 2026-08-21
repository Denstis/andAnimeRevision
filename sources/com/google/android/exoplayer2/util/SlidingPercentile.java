package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.util.SlidingPercentile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class SlidingPercentile {
    private static final int MAX_RECYCLED_SAMPLES = 5;
    private static final int SORT_ORDER_BY_INDEX = 1;
    private static final int SORT_ORDER_BY_VALUE = 0;
    private static final int SORT_ORDER_NONE = -1;
    private final int maxWeight;
    private int nextSampleIndex;
    private int recycledSampleCount;
    private int totalWeight;
    private static final Comparator<Sample> INDEX_COMPARATOR = new Comparator() { // from class: com.google.android.exoplayer2.util.b
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return SlidingPercentile.a((SlidingPercentile.Sample) obj, (SlidingPercentile.Sample) obj2);
        }
    };
    private static final Comparator<Sample> VALUE_COMPARATOR = new Comparator() { // from class: com.google.android.exoplayer2.util.c
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return Float.compare(((SlidingPercentile.Sample) obj).value, ((SlidingPercentile.Sample) obj2).value);
        }
    };
    private final Sample[] recycledSamples = new Sample[5];
    private final ArrayList<Sample> samples = new ArrayList<>();
    private int currentSortOrder = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static class Sample {
        public int index;
        public float value;
        public int weight;

        private Sample() {
        }
    }

    public SlidingPercentile(int i2) {
        this.maxWeight = i2;
    }

    static /* synthetic */ int a(Sample sample, Sample sample2) {
        return sample.index - sample2.index;
    }

    private void ensureSortedByIndex() {
        if (this.currentSortOrder != 1) {
            Collections.sort(this.samples, INDEX_COMPARATOR);
            this.currentSortOrder = 1;
        }
    }

    private void ensureSortedByValue() {
        if (this.currentSortOrder != 0) {
            Collections.sort(this.samples, VALUE_COMPARATOR);
            this.currentSortOrder = 0;
        }
    }

    public void addSample(int i2, float f2) {
        Sample sample;
        int i3;
        Sample sample2;
        int i4;
        ensureSortedByIndex();
        int i5 = this.recycledSampleCount;
        if (i5 > 0) {
            Sample[] sampleArr = this.recycledSamples;
            int i6 = i5 - 1;
            this.recycledSampleCount = i6;
            sample = sampleArr[i6];
        } else {
            sample = new Sample();
        }
        int i7 = this.nextSampleIndex;
        this.nextSampleIndex = i7 + 1;
        sample.index = i7;
        sample.weight = i2;
        sample.value = f2;
        this.samples.add(sample);
        int i8 = this.totalWeight + i2;
        while (true) {
            this.totalWeight = i8;
            while (true) {
                int i9 = this.totalWeight;
                int i10 = this.maxWeight;
                if (i9 <= i10) {
                    return;
                }
                i3 = i9 - i10;
                sample2 = this.samples.get(0);
                i4 = sample2.weight;
                if (i4 <= i3) {
                    this.totalWeight -= i4;
                    this.samples.remove(0);
                    int i11 = this.recycledSampleCount;
                    if (i11 < 5) {
                        Sample[] sampleArr2 = this.recycledSamples;
                        this.recycledSampleCount = i11 + 1;
                        sampleArr2[i11] = sample2;
                    }
                }
            }
            sample2.weight = i4 - i3;
            i8 = this.totalWeight - i3;
        }
    }

    public float getPercentile(float f2) {
        ensureSortedByValue();
        float f3 = f2 * this.totalWeight;
        int i2 = 0;
        for (int i3 = 0; i3 < this.samples.size(); i3++) {
            Sample sample = this.samples.get(i3);
            i2 += sample.weight;
            if (i2 >= f3) {
                return sample.value;
            }
        }
        if (this.samples.isEmpty()) {
            return Float.NaN;
        }
        return this.samples.get(r5.size() - 1).value;
    }
}
