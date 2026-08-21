package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Mp4Extractor implements Extractor, SeekMap {
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    private static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private long[][] accumulatedSampleSizes;
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private final ArrayDeque<Atom.ContainerAtom> containerAtoms;
    private long durationUs;
    private ExtractorOutput extractorOutput;
    private int firstVideoTrackIndex;
    private final int flags;
    private boolean isQuickTime;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleTrackIndex;
    private Mp4Track[] tracks;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.mp4.b
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Mp4Extractor.a();
        }
    };
    private static final int BRAND_QUICKTIME = Util.getIntegerCodeForString("qt  ");

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    private static final class Mp4Track {
        public int sampleIndex;
        public final TrackSampleTable sampleTable;
        public final Track track;
        public final TrackOutput trackOutput;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            this.track = track;
            this.sampleTable = trackSampleTable;
            this.trackOutput = trackOutput;
        }
    }

    public Mp4Extractor() {
        this(0);
    }

    public Mp4Extractor(int i2) {
        this.flags = i2;
        this.atomHeader = new ParsableByteArray(16);
        this.containerAtoms = new ArrayDeque<>();
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleTrackIndex = -1;
    }

    static /* synthetic */ Extractor[] a() {
        return new Extractor[]{new Mp4Extractor()};
    }

    private static long[][] calculateAccumulatedSampleSizes(Mp4Track[] mp4TrackArr) {
        long[][] jArr = new long[mp4TrackArr.length][];
        int[] iArr = new int[mp4TrackArr.length];
        long[] jArr2 = new long[mp4TrackArr.length];
        boolean[] zArr = new boolean[mp4TrackArr.length];
        for (int i2 = 0; i2 < mp4TrackArr.length; i2++) {
            jArr[i2] = new long[mp4TrackArr[i2].sampleTable.sampleCount];
            jArr2[i2] = mp4TrackArr[i2].sampleTable.timestampsUs[0];
        }
        long j2 = 0;
        int i3 = 0;
        while (i3 < mp4TrackArr.length) {
            int i4 = -1;
            long j3 = Long.MAX_VALUE;
            for (int i5 = 0; i5 < mp4TrackArr.length; i5++) {
                if (!zArr[i5] && jArr2[i5] <= j3) {
                    j3 = jArr2[i5];
                    i4 = i5;
                }
            }
            int i6 = iArr[i4];
            jArr[i4][i6] = j2;
            j2 += (long) mp4TrackArr[i4].sampleTable.sizes[i6];
            int i7 = i6 + 1;
            iArr[i4] = i7;
            if (i7 < jArr[i4].length) {
                jArr2[i4] = mp4TrackArr[i4].sampleTable.timestampsUs[i7];
            } else {
                zArr[i4] = true;
                i3++;
            }
        }
        return jArr;
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private static int getSynchronizationSampleIndex(TrackSampleTable trackSampleTable, long j2) {
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j2);
        return indexOfEarlierOrEqualSynchronizationSample == -1 ? trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j2) : indexOfEarlierOrEqualSynchronizationSample;
    }

    private int getTrackIndexOfNextReadSample(long j2) {
        int i2 = 0;
        long j3 = Long.MAX_VALUE;
        boolean z = true;
        long j4 = Long.MAX_VALUE;
        int i3 = -1;
        int i4 = -1;
        boolean z2 = true;
        long j5 = Long.MAX_VALUE;
        while (true) {
            Mp4Track[] mp4TrackArr = this.tracks;
            if (i2 >= mp4TrackArr.length) {
                break;
            }
            Mp4Track mp4Track = mp4TrackArr[i2];
            int i5 = mp4Track.sampleIndex;
            TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            if (i5 != trackSampleTable.sampleCount) {
                long j6 = trackSampleTable.offsets[i5];
                long j7 = this.accumulatedSampleSizes[i2][i5];
                long j8 = j6 - j2;
                boolean z3 = j8 < 0 || j8 >= RELOAD_MINIMUM_SEEK_DISTANCE;
                if ((!z3 && z2) || (z3 == z2 && j8 < j5)) {
                    z2 = z3;
                    i4 = i2;
                    j5 = j8;
                    j4 = j7;
                }
                if (j7 < j3) {
                    z = z3;
                    i3 = i2;
                    j3 = j7;
                }
            }
            i2++;
        }
        return (j3 == Long.MAX_VALUE || !z || j4 < j3 + MAXIMUM_READ_AHEAD_BYTES_STREAM) ? i4 : i3;
    }

    private ArrayList<TrackSampleTable> getTrackSampleTables(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, boolean z) throws ParserException {
        Track trak;
        ArrayList<TrackSampleTable> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < containerAtom.containerChildren.size(); i2++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i2);
            if (containerAtom2.type == Atom.TYPE_trak && (trak = AtomParsers.parseTrak(containerAtom2, containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd), C.TIME_UNSET, null, z, this.isQuickTime)) != null) {
                TrackSampleTable stbl = AtomParsers.parseStbl(trak, containerAtom2.getContainerAtomOfType(Atom.TYPE_mdia).getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl), gaplessInfoHolder);
                if (stbl.sampleCount != 0) {
                    arrayList.add(stbl);
                }
            }
        }
        return arrayList;
    }

    private static long maybeAdjustSeekOffset(TrackSampleTable trackSampleTable, long j2, long j3) {
        int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j2);
        return synchronizationSampleIndex == -1 ? j3 : Math.min(trackSampleTable.offsets[synchronizationSampleIndex], j3);
    }

    private void processAtomEnded(long j2) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j2) {
            Atom.ContainerAtom containerAtomPop = this.containerAtoms.pop();
            if (containerAtomPop.type == Atom.TYPE_moov) {
                processMoovAtom(containerAtomPop);
                this.containerAtoms.clear();
                this.parserState = 2;
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(containerAtomPop);
            }
        }
        if (this.parserState != 2) {
            enterReadingAtomHeaderState();
        }
    }

    private static boolean processFtypAtom(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        if (parsableByteArray.readInt() == BRAND_QUICKTIME) {
            return true;
        }
        parsableByteArray.skipBytes(4);
        while (parsableByteArray.bytesLeft() > 0) {
            if (parsableByteArray.readInt() == BRAND_QUICKTIME) {
                return true;
            }
        }
        return false;
    }

    private void processMoovAtom(Atom.ContainerAtom containerAtom) throws ParserException {
        Metadata udta;
        ArrayList arrayList = new ArrayList();
        GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_udta);
        if (leafAtomOfType != null) {
            udta = AtomParsers.parseUdta(leafAtomOfType, this.isQuickTime);
            if (udta != null) {
                gaplessInfoHolder.setFromMetadata(udta);
            }
        } else {
            udta = null;
        }
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_meta);
        Metadata mdtaFromMeta = containerAtomOfType != null ? AtomParsers.parseMdtaFromMeta(containerAtomOfType) : null;
        ArrayList<TrackSampleTable> trackSampleTables = getTrackSampleTables(containerAtom, gaplessInfoHolder, (this.flags & 1) != 0);
        int size = trackSampleTables.size();
        int size2 = -1;
        long jMax = C.TIME_UNSET;
        for (int i2 = 0; i2 < size; i2++) {
            TrackSampleTable trackSampleTable = trackSampleTables.get(i2);
            Track track = trackSampleTable.track;
            Mp4Track mp4Track = new Mp4Track(track, trackSampleTable, this.extractorOutput.track(i2, track.type));
            mp4Track.trackOutput.format(MetadataUtil.getFormatWithMetadata(track.type, track.format.copyWithMaxInputSize(trackSampleTable.maximumSize + 30), udta, mdtaFromMeta, gaplessInfoHolder));
            long j2 = track.durationUs;
            if (j2 == C.TIME_UNSET) {
                j2 = trackSampleTable.durationUs;
            }
            jMax = Math.max(jMax, j2);
            if (track.type == 2 && size2 == -1) {
                size2 = arrayList.size();
            }
            arrayList.add(mp4Track);
        }
        this.firstVideoTrackIndex = size2;
        this.durationUs = jMax;
        this.tracks = (Mp4Track[]) arrayList.toArray(new Mp4Track[arrayList.size()]);
        this.accumulatedSampleSizes = calculateAccumulatedSampleSizes(this.tracks);
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean readAtomHeader(com.google.android.exoplayer2.extractor.ExtractorInput r9) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instruction units count: 247
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.readAtomHeader(com.google.android.exoplayer2.extractor.ExtractorInput):boolean");
    }

    private boolean readAtomPayload(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        boolean z;
        long j2 = this.atomSize - ((long) this.atomHeaderBytesRead);
        long position = extractorInput.getPosition() + j2;
        ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.data, this.atomHeaderBytesRead, (int) j2);
            if (this.atomType == Atom.TYPE_ftyp) {
                this.isQuickTime = processFtypAtom(this.atomData);
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(new Atom.LeafAtom(this.atomType, this.atomData));
            }
        } else {
            if (j2 >= RELOAD_MINIMUM_SEEK_DISTANCE) {
                positionHolder.position = extractorInput.getPosition() + j2;
                z = true;
                processAtomEnded(position);
                return (z || this.parserState == 2) ? false : true;
            }
            extractorInput.skipFully((int) j2);
        }
        z = false;
        processAtomEnded(position);
        if (z) {
        }
    }

    private int readSample(ExtractorInput extractorInput, PositionHolder positionHolder) {
        long position = extractorInput.getPosition();
        if (this.sampleTrackIndex == -1) {
            this.sampleTrackIndex = getTrackIndexOfNextReadSample(position);
            if (this.sampleTrackIndex == -1) {
                return -1;
            }
        }
        Mp4Track mp4Track = this.tracks[this.sampleTrackIndex];
        TrackOutput trackOutput = mp4Track.trackOutput;
        int i2 = mp4Track.sampleIndex;
        TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        long j2 = trackSampleTable.offsets[i2];
        int i3 = trackSampleTable.sizes[i2];
        long j3 = (j2 - position) + ((long) this.sampleBytesWritten);
        if (j3 < 0 || j3 >= RELOAD_MINIMUM_SEEK_DISTANCE) {
            positionHolder.position = j2;
            return 1;
        }
        if (mp4Track.track.sampleTransformation == 1) {
            j3 += 8;
            i3 -= 8;
        }
        extractorInput.skipFully((int) j3);
        int i4 = mp4Track.track.nalUnitLengthFieldLength;
        if (i4 == 0) {
            while (true) {
                int i5 = this.sampleBytesWritten;
                if (i5 >= i3) {
                    break;
                }
                int iSampleData = trackOutput.sampleData(extractorInput, i3 - i5, false);
                this.sampleBytesWritten += iSampleData;
                this.sampleCurrentNalBytesRemaining -= iSampleData;
            }
        } else {
            byte[] bArr = this.nalLength.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i6 = 4 - i4;
            while (this.sampleBytesWritten < i3) {
                int i7 = this.sampleCurrentNalBytesRemaining;
                if (i7 == 0) {
                    extractorInput.readFully(this.nalLength.data, i6, i4);
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    i3 += i6;
                } else {
                    int iSampleData2 = trackOutput.sampleData(extractorInput, i7, false);
                    this.sampleBytesWritten += iSampleData2;
                    this.sampleCurrentNalBytesRemaining -= iSampleData2;
                }
            }
        }
        TrackSampleTable trackSampleTable2 = mp4Track.sampleTable;
        trackOutput.sampleMetadata(trackSampleTable2.timestampsUs[i2], trackSampleTable2.flags[i2], i3, 0, null);
        mp4Track.sampleIndex++;
        this.sampleTrackIndex = -1;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        return 0;
    }

    private static boolean shouldParseContainerAtom(int i2) {
        return i2 == Atom.TYPE_moov || i2 == Atom.TYPE_trak || i2 == Atom.TYPE_mdia || i2 == Atom.TYPE_minf || i2 == Atom.TYPE_stbl || i2 == Atom.TYPE_edts || i2 == Atom.TYPE_meta;
    }

    private static boolean shouldParseLeafAtom(int i2) {
        return i2 == Atom.TYPE_mdhd || i2 == Atom.TYPE_mvhd || i2 == Atom.TYPE_hdlr || i2 == Atom.TYPE_stsd || i2 == Atom.TYPE_stts || i2 == Atom.TYPE_stss || i2 == Atom.TYPE_ctts || i2 == Atom.TYPE_elst || i2 == Atom.TYPE_stsc || i2 == Atom.TYPE_stsz || i2 == Atom.TYPE_stz2 || i2 == Atom.TYPE_stco || i2 == Atom.TYPE_co64 || i2 == Atom.TYPE_tkhd || i2 == Atom.TYPE_ftyp || i2 == Atom.TYPE_udta || i2 == Atom.TYPE_keys || i2 == Atom.TYPE_ilst;
    }

    private void updateSampleIndices(long j2) {
        for (Mp4Track mp4Track : this.tracks) {
            TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j2);
            if (indexOfEarlierOrEqualSynchronizationSample == -1) {
                indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j2);
            }
            mp4Track.sampleIndex = indexOfEarlierOrEqualSynchronizationSample;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j2) {
        long j3;
        long jMaybeAdjustSeekOffset;
        long j4;
        long j5;
        int indexOfLaterOrEqualSynchronizationSample;
        Mp4Track[] mp4TrackArr = this.tracks;
        if (mp4TrackArr.length == 0) {
            return new SeekMap.SeekPoints(SeekPoint.START);
        }
        int i2 = this.firstVideoTrackIndex;
        if (i2 != -1) {
            TrackSampleTable trackSampleTable = mp4TrackArr[i2].sampleTable;
            int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j2);
            if (synchronizationSampleIndex == -1) {
                return new SeekMap.SeekPoints(SeekPoint.START);
            }
            long j6 = trackSampleTable.timestampsUs[synchronizationSampleIndex];
            j3 = trackSampleTable.offsets[synchronizationSampleIndex];
            if (j6 >= j2 || synchronizationSampleIndex >= trackSampleTable.sampleCount - 1 || (indexOfLaterOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j2)) == -1 || indexOfLaterOrEqualSynchronizationSample == synchronizationSampleIndex) {
                j5 = -1;
                j4 = -9223372036854775807L;
            } else {
                j4 = trackSampleTable.timestampsUs[indexOfLaterOrEqualSynchronizationSample];
                j5 = trackSampleTable.offsets[indexOfLaterOrEqualSynchronizationSample];
            }
            jMaybeAdjustSeekOffset = j5;
            j2 = j6;
        } else {
            j3 = Long.MAX_VALUE;
            jMaybeAdjustSeekOffset = -1;
            j4 = -9223372036854775807L;
        }
        int i3 = 0;
        while (true) {
            Mp4Track[] mp4TrackArr2 = this.tracks;
            if (i3 >= mp4TrackArr2.length) {
                break;
            }
            if (i3 != this.firstVideoTrackIndex) {
                TrackSampleTable trackSampleTable2 = mp4TrackArr2[i3].sampleTable;
                long jMaybeAdjustSeekOffset2 = maybeAdjustSeekOffset(trackSampleTable2, j2, j3);
                if (j4 != C.TIME_UNSET) {
                    jMaybeAdjustSeekOffset = maybeAdjustSeekOffset(trackSampleTable2, j4, jMaybeAdjustSeekOffset);
                }
                j3 = jMaybeAdjustSeekOffset2;
            }
            i3++;
        }
        SeekPoint seekPoint = new SeekPoint(j2, j3);
        return j4 == C.TIME_UNSET ? new SeekMap.SeekPoints(seekPoint) : new SeekMap.SeekPoints(seekPoint, new SeekPoint(j4, jMaybeAdjustSeekOffset));
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        while (true) {
            int i2 = this.parserState;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        return readSample(extractorInput, positionHolder);
                    }
                    throw new IllegalStateException();
                }
                if (readAtomPayload(extractorInput, positionHolder)) {
                    return 1;
                }
            } else if (!readAtomHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j2, long j3) {
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        if (j2 == 0) {
            enterReadingAtomHeaderState();
        } else if (this.tracks != null) {
            updateSampleIndices(j3);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return Sniffer.sniffUnfragmented(extractorInput);
    }
}
