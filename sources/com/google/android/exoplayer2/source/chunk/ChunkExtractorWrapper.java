package com.google.android.exoplayer2.source.chunk;

import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* JADX INFO: loaded from: classes.dex */
public final class ChunkExtractorWrapper implements ExtractorOutput {
    private final SparseArray<BindingTrackOutput> bindingTrackOutputs = new SparseArray<>();
    private long endTimeUs;
    public final Extractor extractor;
    private boolean extractorInitialized;
    private final Format primaryTrackManifestFormat;
    private final int primaryTrackType;
    private Format[] sampleFormats;
    private SeekMap seekMap;
    private TrackOutputProvider trackOutputProvider;

    private static final class BindingTrackOutput implements TrackOutput {
        private final DummyTrackOutput dummyTrackOutput = new DummyTrackOutput();
        private long endTimeUs;
        private final int id;
        private final Format manifestFormat;
        public Format sampleFormat;
        private TrackOutput trackOutput;
        private final int type;

        public BindingTrackOutput(int i2, int i3, Format format) {
            this.id = i2;
            this.type = i3;
            this.manifestFormat = format;
        }

        public void bind(TrackOutputProvider trackOutputProvider, long j2) {
            if (trackOutputProvider == null) {
                this.trackOutput = this.dummyTrackOutput;
                return;
            }
            this.endTimeUs = j2;
            this.trackOutput = trackOutputProvider.track(this.id, this.type);
            Format format = this.sampleFormat;
            if (format != null) {
                this.trackOutput.format(format);
            }
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void format(Format format) {
            Format format2 = this.manifestFormat;
            if (format2 != null) {
                format = format.copyWithManifestFormatInfo(format2);
            }
            this.sampleFormat = format;
            this.trackOutput.format(this.sampleFormat);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public int sampleData(ExtractorInput extractorInput, int i2, boolean z) {
            return this.trackOutput.sampleData(extractorInput, i2, z);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleData(ParsableByteArray parsableByteArray, int i2) {
            this.trackOutput.sampleData(parsableByteArray, i2);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j2, int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
            long j3 = this.endTimeUs;
            if (j3 != C.TIME_UNSET && j2 >= j3) {
                this.trackOutput = this.dummyTrackOutput;
            }
            this.trackOutput.sampleMetadata(j2, i2, i3, i4, cryptoData);
        }
    }

    public interface TrackOutputProvider {
        TrackOutput track(int i2, int i3);
    }

    public ChunkExtractorWrapper(Extractor extractor, int i2, Format format) {
        this.extractor = extractor;
        this.primaryTrackType = i2;
        this.primaryTrackManifestFormat = format;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        Format[] formatArr = new Format[this.bindingTrackOutputs.size()];
        for (int i2 = 0; i2 < this.bindingTrackOutputs.size(); i2++) {
            formatArr[i2] = this.bindingTrackOutputs.valueAt(i2).sampleFormat;
        }
        this.sampleFormats = formatArr;
    }

    public Format[] getSampleFormats() {
        return this.sampleFormats;
    }

    public SeekMap getSeekMap() {
        return this.seekMap;
    }

    public void init(TrackOutputProvider trackOutputProvider, long j2, long j3) {
        this.trackOutputProvider = trackOutputProvider;
        this.endTimeUs = j3;
        if (!this.extractorInitialized) {
            this.extractor.init(this);
            if (j2 != C.TIME_UNSET) {
                this.extractor.seek(0L, j2);
            }
            this.extractorInitialized = true;
            return;
        }
        Extractor extractor = this.extractor;
        if (j2 == C.TIME_UNSET) {
            j2 = 0;
        }
        extractor.seek(0L, j2);
        for (int i2 = 0; i2 < this.bindingTrackOutputs.size(); i2++) {
            this.bindingTrackOutputs.valueAt(i2).bind(trackOutputProvider, j3);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i2, int i3) {
        BindingTrackOutput bindingTrackOutput = this.bindingTrackOutputs.get(i2);
        if (bindingTrackOutput == null) {
            Assertions.checkState(this.sampleFormats == null);
            bindingTrackOutput = new BindingTrackOutput(i2, i3, i3 == this.primaryTrackType ? this.primaryTrackManifestFormat : null);
            bindingTrackOutput.bind(this.trackOutputProvider, this.endTimeUs);
            this.bindingTrackOutputs.put(i2, bindingTrackOutput);
        }
        return bindingTrackOutput;
    }
}
