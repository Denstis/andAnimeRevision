package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class HlsMasterPlaylist extends HlsPlaylist {
    public static final HlsMasterPlaylist EMPTY = new HlsMasterPlaylist("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap());
    public static final int GROUP_INDEX_AUDIO = 1;
    public static final int GROUP_INDEX_SUBTITLE = 2;
    public static final int GROUP_INDEX_VARIANT = 0;
    public final List<HlsUrl> audios;
    public final Format muxedAudioFormat;
    public final List<Format> muxedCaptionFormats;
    public final List<HlsUrl> subtitles;
    public final Map<String, String> variableDefinitions;
    public final List<HlsUrl> variants;

    public static final class HlsUrl {
        public final Format format;
        public final String url;

        public HlsUrl(String str, Format format) {
            this.url = str;
            this.format = format;
        }

        public static HlsUrl createMediaPlaylistHlsUrl(String str) {
            return new HlsUrl(str, Format.createContainerFormat("0", null, MimeTypes.APPLICATION_M3U8, null, null, -1, 0, null));
        }
    }

    public HlsMasterPlaylist(String str, List<String> list, List<HlsUrl> list2, List<HlsUrl> list3, List<HlsUrl> list4, Format format, List<Format> list5, boolean z, Map<String, String> map) {
        super(str, list, z);
        this.variants = Collections.unmodifiableList(list2);
        this.audios = Collections.unmodifiableList(list3);
        this.subtitles = Collections.unmodifiableList(list4);
        this.muxedAudioFormat = format;
        this.muxedCaptionFormats = list5 != null ? Collections.unmodifiableList(list5) : null;
        this.variableDefinitions = Collections.unmodifiableMap(map);
    }

    private static List<HlsUrl> copyRenditionsList(List<HlsUrl> list, int i2, List<StreamKey> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i3 = 0; i3 < list.size(); i3++) {
            HlsUrl hlsUrl = list.get(i3);
            int i4 = 0;
            while (true) {
                if (i4 < list2.size()) {
                    StreamKey streamKey = list2.get(i4);
                    if (streamKey.groupIndex == i2 && streamKey.trackIndex == i3) {
                        arrayList.add(hlsUrl);
                        break;
                    }
                    i4++;
                }
            }
        }
        return arrayList;
    }

    public static HlsMasterPlaylist createSingleVariantMasterPlaylist(String str) {
        List listSingletonList = Collections.singletonList(HlsUrl.createMediaPlaylistHlsUrl(str));
        List listEmptyList = Collections.emptyList();
        return new HlsMasterPlaylist(null, Collections.emptyList(), listSingletonList, listEmptyList, listEmptyList, null, null, false, Collections.emptyMap());
    }

    @Override // com.google.android.exoplayer2.offline.FilterableManifest
    public HlsPlaylist copy(List<StreamKey> list) {
        return new HlsMasterPlaylist(this.baseUri, this.tags, copyRenditionsList(this.variants, 0, list), copyRenditionsList(this.audios, 1, list), copyRenditionsList(this.subtitles, 2, list), this.muxedAudioFormat, this.muxedCaptionFormats, this.hasIndependentSegments, this.variableDefinitions);
    }

    @Override // com.google.android.exoplayer2.offline.FilterableManifest
    /* JADX INFO: renamed from: copy, reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ HlsPlaylist copy2(List list) {
        return copy((List<StreamKey>) list);
    }
}
