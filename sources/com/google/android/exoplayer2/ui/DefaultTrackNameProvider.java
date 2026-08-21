package com.google.android.exoplayer2.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DefaultTrackNameProvider implements TrackNameProvider {
    private final Resources resources;

    public DefaultTrackNameProvider(Resources resources) {
        this.resources = (Resources) Assertions.checkNotNull(resources);
    }

    private String buildAudioChannelString(Format format) {
        Resources resources;
        int i2;
        int i3 = format.channelCount;
        if (i3 == -1 || i3 < 1) {
            return "";
        }
        if (i3 == 1) {
            resources = this.resources;
            i2 = R.string.exo_track_mono;
        } else if (i3 == 2) {
            resources = this.resources;
            i2 = R.string.exo_track_stereo;
        } else if (i3 == 6 || i3 == 7) {
            resources = this.resources;
            i2 = R.string.exo_track_surround_5_point_1;
        } else if (i3 != 8) {
            resources = this.resources;
            i2 = R.string.exo_track_surround;
        } else {
            resources = this.resources;
            i2 = R.string.exo_track_surround_7_point_1;
        }
        return resources.getString(i2);
    }

    private String buildBitrateString(Format format) {
        int i2 = format.bitrate;
        return i2 == -1 ? "" : this.resources.getString(R.string.exo_track_bitrate, Float.valueOf(i2 / 1000000.0f));
    }

    private String buildLabelString(Format format) {
        if (!TextUtils.isEmpty(format.label)) {
            return format.label;
        }
        String str = format.language;
        return (TextUtils.isEmpty(str) || C.LANGUAGE_UNDETERMINED.equals(str)) ? "" : buildLanguageString(str);
    }

    private String buildLanguageString(String str) {
        return (Util.SDK_INT >= 21 ? Locale.forLanguageTag(str) : new Locale(str)).getDisplayLanguage();
    }

    private String buildResolutionString(Format format) {
        int i2 = format.width;
        int i3 = format.height;
        return (i2 == -1 || i3 == -1) ? "" : this.resources.getString(R.string.exo_track_resolution, Integer.valueOf(i2), Integer.valueOf(i3));
    }

    private static int inferPrimaryTrackType(Format format) {
        int trackType = MimeTypes.getTrackType(format.sampleMimeType);
        if (trackType != -1) {
            return trackType;
        }
        if (MimeTypes.getVideoMediaMimeType(format.codecs) != null) {
            return 2;
        }
        if (MimeTypes.getAudioMediaMimeType(format.codecs) != null) {
            return 1;
        }
        if (format.width == -1 && format.height == -1) {
            return (format.channelCount == -1 && format.sampleRate == -1) ? -1 : 1;
        }
        return 2;
    }

    private String joinWithSeparator(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (str.length() > 0) {
                string = TextUtils.isEmpty(string) ? str : this.resources.getString(R.string.exo_item_list, string, str);
            }
        }
        return string;
    }

    @Override // com.google.android.exoplayer2.ui.TrackNameProvider
    public String getTrackName(Format format) {
        int iInferPrimaryTrackType = inferPrimaryTrackType(format);
        String strJoinWithSeparator = iInferPrimaryTrackType == 2 ? joinWithSeparator(buildResolutionString(format), buildBitrateString(format)) : iInferPrimaryTrackType == 1 ? joinWithSeparator(buildLabelString(format), buildAudioChannelString(format), buildBitrateString(format)) : buildLabelString(format);
        return strJoinWithSeparator.length() == 0 ? this.resources.getString(R.string.exo_track_unknown) : strJoinWithSeparator;
    }
}
