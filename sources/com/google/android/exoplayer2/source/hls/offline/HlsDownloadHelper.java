package com.google.android.exoplayer2.source.hls.offline;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.offline.DownloadAction;
import com.google.android.exoplayer2.offline.DownloadHelper;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.offline.TrackKey;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HlsDownloadHelper extends DownloadHelper {
    private final DataSource.Factory manifestDataSourceFactory;
    private HlsPlaylist playlist;
    private int[] renditionGroups;
    private final Uri uri;

    public HlsDownloadHelper(Uri uri, DataSource.Factory factory) {
        this.uri = uri;
        this.manifestDataSourceFactory = factory;
    }

    private static Format[] toFormats(List<HlsMasterPlaylist.HlsUrl> list) {
        Format[] formatArr = new Format[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            formatArr[i2] = list.get(i2).format;
        }
        return formatArr;
    }

    private static List<StreamKey> toStreamKeys(List<TrackKey> list, int[] iArr) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            TrackKey trackKey = list.get(i2);
            arrayList.add(new StreamKey(iArr[trackKey.groupIndex], trackKey.trackIndex));
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.offline.DownloadHelper
    public /* bridge */ /* synthetic */ DownloadAction getDownloadAction(byte[] bArr, List list) {
        return getDownloadAction(bArr, (List<TrackKey>) list);
    }

    @Override // com.google.android.exoplayer2.offline.DownloadHelper
    public HlsDownloadAction getDownloadAction(byte[] bArr, List<TrackKey> list) {
        Assertions.checkNotNull(this.renditionGroups);
        return HlsDownloadAction.createDownloadAction(this.uri, bArr, toStreamKeys(list, this.renditionGroups));
    }

    @Override // com.google.android.exoplayer2.offline.DownloadHelper
    public int getPeriodCount() {
        Assertions.checkNotNull(this.playlist);
        return 1;
    }

    public HlsPlaylist getPlaylist() {
        Assertions.checkNotNull(this.playlist);
        return this.playlist;
    }

    @Override // com.google.android.exoplayer2.offline.DownloadHelper
    public HlsDownloadAction getRemoveAction(byte[] bArr) {
        return HlsDownloadAction.createRemoveAction(this.uri, bArr);
    }

    @Override // com.google.android.exoplayer2.offline.DownloadHelper
    public TrackGroupArray getTrackGroups(int i2) {
        int i3;
        Assertions.checkNotNull(this.playlist);
        HlsPlaylist hlsPlaylist = this.playlist;
        int i4 = 0;
        if (hlsPlaylist instanceof HlsMediaPlaylist) {
            this.renditionGroups = new int[0];
            return TrackGroupArray.EMPTY;
        }
        HlsMasterPlaylist hlsMasterPlaylist = (HlsMasterPlaylist) hlsPlaylist;
        TrackGroup[] trackGroupArr = new TrackGroup[3];
        this.renditionGroups = new int[3];
        if (!hlsMasterPlaylist.variants.isEmpty()) {
            this.renditionGroups[0] = 0;
            trackGroupArr[0] = new TrackGroup(toFormats(hlsMasterPlaylist.variants));
            i4 = 1;
        }
        if (hlsMasterPlaylist.audios.isEmpty()) {
            i3 = i4;
        } else {
            this.renditionGroups[i4] = 1;
            i3 = i4 + 1;
            trackGroupArr[i4] = new TrackGroup(toFormats(hlsMasterPlaylist.audios));
        }
        if (!hlsMasterPlaylist.subtitles.isEmpty()) {
            this.renditionGroups[i3] = 2;
            trackGroupArr[i3] = new TrackGroup(toFormats(hlsMasterPlaylist.subtitles));
            i3++;
        }
        return new TrackGroupArray((TrackGroup[]) Arrays.copyOf(trackGroupArr, i3));
    }

    @Override // com.google.android.exoplayer2.offline.DownloadHelper
    protected void prepareInternal() {
        this.playlist = (HlsPlaylist) ParsingLoadable.load(this.manifestDataSourceFactory.createDataSource(), new HlsPlaylistParser(), this.uri, 4);
    }
}
