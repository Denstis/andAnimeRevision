package com.google.android.exoplayer2.offline;

/* JADX INFO: loaded from: classes.dex */
public final class StreamKey implements Comparable<StreamKey> {
    public final int groupIndex;
    public final int periodIndex;
    public final int trackIndex;

    public StreamKey(int i2, int i3) {
        this(0, i2, i3);
    }

    public StreamKey(int i2, int i3, int i4) {
        this.periodIndex = i2;
        this.groupIndex = i3;
        this.trackIndex = i4;
    }

    @Override // java.lang.Comparable
    public int compareTo(StreamKey streamKey) {
        int i2 = this.periodIndex - streamKey.periodIndex;
        if (i2 != 0) {
            return i2;
        }
        int i3 = this.groupIndex - streamKey.groupIndex;
        return i3 == 0 ? this.trackIndex - streamKey.trackIndex : i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        return this.periodIndex == streamKey.periodIndex && this.groupIndex == streamKey.groupIndex && this.trackIndex == streamKey.trackIndex;
    }

    public int hashCode() {
        return (((this.periodIndex * 31) + this.groupIndex) * 31) + this.trackIndex;
    }

    public String toString() {
        return this.periodIndex + "." + this.groupIndex + "." + this.trackIndex;
    }
}
