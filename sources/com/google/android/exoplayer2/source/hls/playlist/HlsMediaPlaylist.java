package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.offline.StreamKey;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HlsMediaPlaylist extends HlsPlaylist {
    public static final int PLAYLIST_TYPE_EVENT = 2;
    public static final int PLAYLIST_TYPE_UNKNOWN = 0;
    public static final int PLAYLIST_TYPE_VOD = 1;
    public final int discontinuitySequence;
    public final long durationUs;
    public final boolean hasDiscontinuitySequence;
    public final boolean hasEndTag;
    public final boolean hasProgramDateTime;
    public final long mediaSequence;
    public final int playlistType;
    public final DrmInitData protectionSchemes;
    public final List<Segment> segments;
    public final long startOffsetUs;
    public final long startTimeUs;
    public final long targetDurationUs;
    public final int version;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaylistType {
    }

    public static final class Segment implements Comparable<Long> {
        public final long byterangeLength;
        public final long byterangeOffset;
        public final DrmInitData drmInitData;
        public final long durationUs;
        public final String encryptionIV;
        public final String fullSegmentEncryptionKeyUri;
        public final boolean hasGapTag;
        public final Segment initializationSegment;
        public final int relativeDiscontinuitySequence;
        public final long relativeStartTimeUs;
        public final String title;
        public final String url;

        public Segment(String str, long j2, long j3) {
            this(str, null, "", 0L, -1, C.TIME_UNSET, null, null, null, j2, j3, false);
        }

        public Segment(String str, Segment segment, String str2, long j2, int i2, long j3, DrmInitData drmInitData, String str3, String str4, long j4, long j5, boolean z) {
            this.url = str;
            this.initializationSegment = segment;
            this.title = str2;
            this.durationUs = j2;
            this.relativeDiscontinuitySequence = i2;
            this.relativeStartTimeUs = j3;
            this.drmInitData = drmInitData;
            this.fullSegmentEncryptionKeyUri = str3;
            this.encryptionIV = str4;
            this.byterangeOffset = j4;
            this.byterangeLength = j5;
            this.hasGapTag = z;
        }

        @Override // java.lang.Comparable
        public int compareTo(Long l) {
            if (this.relativeStartTimeUs > l.longValue()) {
                return 1;
            }
            return this.relativeStartTimeUs < l.longValue() ? -1 : 0;
        }
    }

    public HlsMediaPlaylist(int i2, String str, List<String> list, long j2, long j3, boolean z, int i3, long j4, int i4, long j5, boolean z2, boolean z3, boolean z4, DrmInitData drmInitData, List<Segment> list2) {
        super(str, list, z2);
        this.playlistType = i2;
        this.startTimeUs = j3;
        this.hasDiscontinuitySequence = z;
        this.discontinuitySequence = i3;
        this.mediaSequence = j4;
        this.version = i4;
        this.targetDurationUs = j5;
        this.hasEndTag = z3;
        this.hasProgramDateTime = z4;
        this.protectionSchemes = drmInitData;
        this.segments = Collections.unmodifiableList(list2);
        if (list2.isEmpty()) {
            this.durationUs = 0L;
        } else {
            Segment segment = list2.get(list2.size() - 1);
            this.durationUs = segment.relativeStartTimeUs + segment.durationUs;
        }
        this.startOffsetUs = j2 == C.TIME_UNSET ? -9223372036854775807L : j2 >= 0 ? j2 : this.durationUs + j2;
    }

    @Override // com.google.android.exoplayer2.offline.FilterableManifest
    public HlsPlaylist copy(List<StreamKey> list) {
        return this;
    }

    @Override // com.google.android.exoplayer2.offline.FilterableManifest
    /* JADX INFO: renamed from: copy, reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ HlsPlaylist copy2(List list) {
        return copy((List<StreamKey>) list);
    }

    public HlsMediaPlaylist copyWith(long j2, int i2) {
        return new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, j2, true, i2, this.mediaSequence, this.version, this.targetDurationUs, this.hasIndependentSegments, this.hasEndTag, this.hasProgramDateTime, this.protectionSchemes, this.segments);
    }

    public HlsMediaPlaylist copyWithEndTag() {
        return this.hasEndTag ? this : new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.startTimeUs, this.hasDiscontinuitySequence, this.discontinuitySequence, this.mediaSequence, this.version, this.targetDurationUs, this.hasIndependentSegments, true, this.hasProgramDateTime, this.protectionSchemes, this.segments);
    }

    public long getEndTimeUs() {
        return this.startTimeUs + this.durationUs;
    }

    public boolean isNewerThan(HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist == null) {
            return true;
        }
        long j2 = this.mediaSequence;
        long j3 = hlsMediaPlaylist.mediaSequence;
        if (j2 > j3) {
            return true;
        }
        if (j2 < j3) {
            return false;
        }
        int size = this.segments.size();
        int size2 = hlsMediaPlaylist.segments.size();
        if (size <= size2) {
            return size == size2 && this.hasEndTag && !hlsMediaPlaylist.hasEndTag;
        }
        return true;
    }
}
