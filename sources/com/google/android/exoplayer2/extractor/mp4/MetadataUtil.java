package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class MetadataUtil {
    private static final String LANGUAGE_UNDEFINED = "und";
    private static final String MDTA_KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    private static final int MDTA_TYPE_INDICATOR_FLOAT = 23;
    private static final int PICTURE_TYPE_FRONT_COVER = 3;
    private static final String TAG = "MetadataUtil";
    private static final int TYPE_TOP_BYTE_COPYRIGHT = 169;
    private static final int TYPE_TOP_BYTE_REPLACEMENT = 253;
    private static final int SHORT_TYPE_NAME_1 = Util.getIntegerCodeForString("nam");
    private static final int SHORT_TYPE_NAME_2 = Util.getIntegerCodeForString("trk");
    private static final int SHORT_TYPE_COMMENT = Util.getIntegerCodeForString("cmt");
    private static final int SHORT_TYPE_YEAR = Util.getIntegerCodeForString("day");
    private static final int SHORT_TYPE_ARTIST = Util.getIntegerCodeForString("ART");
    private static final int SHORT_TYPE_ENCODER = Util.getIntegerCodeForString("too");
    private static final int SHORT_TYPE_ALBUM = Util.getIntegerCodeForString("alb");
    private static final int SHORT_TYPE_COMPOSER_1 = Util.getIntegerCodeForString("com");
    private static final int SHORT_TYPE_COMPOSER_2 = Util.getIntegerCodeForString("wrt");
    private static final int SHORT_TYPE_LYRICS = Util.getIntegerCodeForString("lyr");
    private static final int SHORT_TYPE_GENRE = Util.getIntegerCodeForString("gen");
    private static final int TYPE_COVER_ART = Util.getIntegerCodeForString("covr");
    private static final int TYPE_GENRE = Util.getIntegerCodeForString("gnre");
    private static final int TYPE_GROUPING = Util.getIntegerCodeForString("grp");
    private static final int TYPE_DISK_NUMBER = Util.getIntegerCodeForString("disk");
    private static final int TYPE_TRACK_NUMBER = Util.getIntegerCodeForString("trkn");
    private static final int TYPE_TEMPO = Util.getIntegerCodeForString("tmpo");
    private static final int TYPE_COMPILATION = Util.getIntegerCodeForString("cpil");
    private static final int TYPE_ALBUM_ARTIST = Util.getIntegerCodeForString("aART");
    private static final int TYPE_SORT_TRACK_NAME = Util.getIntegerCodeForString("sonm");
    private static final int TYPE_SORT_ALBUM = Util.getIntegerCodeForString("soal");
    private static final int TYPE_SORT_ARTIST = Util.getIntegerCodeForString("soar");
    private static final int TYPE_SORT_ALBUM_ARTIST = Util.getIntegerCodeForString("soaa");
    private static final int TYPE_SORT_COMPOSER = Util.getIntegerCodeForString("soco");
    private static final int TYPE_RATING = Util.getIntegerCodeForString("rtng");
    private static final int TYPE_GAPLESS_ALBUM = Util.getIntegerCodeForString("pgap");
    private static final int TYPE_TV_SORT_SHOW = Util.getIntegerCodeForString("sosn");
    private static final int TYPE_TV_SHOW = Util.getIntegerCodeForString("tvsh");
    private static final int TYPE_INTERNAL = Util.getIntegerCodeForString(InternalFrame.ID);
    private static final String[] STANDARD_GENRES = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    private MetadataUtil() {
    }

    public static Format getFormatWithMetadata(int i2, Format format, Metadata metadata, Metadata metadata2, GaplessInfoHolder gaplessInfoHolder) {
        if (i2 == 1) {
            if (gaplessInfoHolder.hasGaplessInfo()) {
                format = format.copyWithGaplessInfo(gaplessInfoHolder.encoderDelay, gaplessInfoHolder.encoderPadding);
            }
            return metadata != null ? format.copyWithMetadata(metadata) : format;
        }
        if (i2 != 2 || metadata2 == null) {
            return format;
        }
        Format formatCopyWithMetadata = format;
        for (int i3 = 0; i3 < metadata2.length(); i3++) {
            Metadata.Entry entry = metadata2.get(i3);
            if (entry instanceof MdtaMetadataEntry) {
                MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                if (MDTA_KEY_ANDROID_CAPTURE_FPS.equals(mdtaMetadataEntry.key) && mdtaMetadataEntry.typeIndicator == 23) {
                    try {
                        formatCopyWithMetadata = formatCopyWithMetadata.copyWithFrameRate(ByteBuffer.wrap(mdtaMetadataEntry.value).asFloatBuffer().get()).copyWithMetadata(new Metadata(mdtaMetadataEntry));
                    } catch (NumberFormatException unused) {
                        Log.w(TAG, "Ignoring invalid framerate");
                    }
                }
            }
        }
        return formatCopyWithMetadata;
    }

    private static CommentFrame parseCommentAttribute(int i2, ParsableByteArray parsableByteArray) {
        int i3 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == Atom.TYPE_data) {
            parsableByteArray.skipBytes(8);
            String nullTerminatedString = parsableByteArray.readNullTerminatedString(i3 - 16);
            return new CommentFrame("und", nullTerminatedString, nullTerminatedString);
        }
        Log.w(TAG, "Failed to parse comment attribute: " + Atom.getAtomTypeString(i2));
        return null;
    }

    private static ApicFrame parseCoverArt(ParsableByteArray parsableByteArray) {
        String str;
        int i2 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == Atom.TYPE_data) {
            int fullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
            String str2 = fullAtomFlags == 13 ? "image/jpeg" : fullAtomFlags == 14 ? "image/png" : null;
            if (str2 != null) {
                parsableByteArray.skipBytes(4);
                byte[] bArr = new byte[i2 - 16];
                parsableByteArray.readBytes(bArr, 0, bArr.length);
                return new ApicFrame(str2, null, 3, bArr);
            }
            str = "Unrecognized cover art flags: " + fullAtomFlags;
        } else {
            str = "Failed to parse cover art attribute";
        }
        Log.w(TAG, str);
        return null;
    }

    public static Metadata.Entry parseIlstElement(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition() + parsableByteArray.readInt();
        int i2 = parsableByteArray.readInt();
        int i3 = (i2 >> 24) & 255;
        try {
            if (i3 == TYPE_TOP_BYTE_COPYRIGHT || i3 == TYPE_TOP_BYTE_REPLACEMENT) {
                int i4 = 16777215 & i2;
                if (i4 == SHORT_TYPE_COMMENT) {
                    return parseCommentAttribute(i2, parsableByteArray);
                }
                if (i4 != SHORT_TYPE_NAME_1 && i4 != SHORT_TYPE_NAME_2) {
                    if (i4 != SHORT_TYPE_COMPOSER_1 && i4 != SHORT_TYPE_COMPOSER_2) {
                        if (i4 == SHORT_TYPE_YEAR) {
                            return parseTextAttribute(i2, "TDRC", parsableByteArray);
                        }
                        if (i4 == SHORT_TYPE_ARTIST) {
                            return parseTextAttribute(i2, "TPE1", parsableByteArray);
                        }
                        if (i4 == SHORT_TYPE_ENCODER) {
                            return parseTextAttribute(i2, "TSSE", parsableByteArray);
                        }
                        if (i4 == SHORT_TYPE_ALBUM) {
                            return parseTextAttribute(i2, "TALB", parsableByteArray);
                        }
                        if (i4 == SHORT_TYPE_LYRICS) {
                            return parseTextAttribute(i2, "USLT", parsableByteArray);
                        }
                        if (i4 == SHORT_TYPE_GENRE) {
                            return parseTextAttribute(i2, "TCON", parsableByteArray);
                        }
                        if (i4 == TYPE_GROUPING) {
                            return parseTextAttribute(i2, "TIT1", parsableByteArray);
                        }
                    }
                    return parseTextAttribute(i2, "TCOM", parsableByteArray);
                }
                return parseTextAttribute(i2, "TIT2", parsableByteArray);
            }
            if (i2 == TYPE_GENRE) {
                return parseStandardGenreAttribute(parsableByteArray);
            }
            if (i2 == TYPE_DISK_NUMBER) {
                return parseIndexAndCountAttribute(i2, "TPOS", parsableByteArray);
            }
            if (i2 == TYPE_TRACK_NUMBER) {
                return parseIndexAndCountAttribute(i2, "TRCK", parsableByteArray);
            }
            if (i2 == TYPE_TEMPO) {
                return parseUint8Attribute(i2, "TBPM", parsableByteArray, true, false);
            }
            if (i2 == TYPE_COMPILATION) {
                return parseUint8Attribute(i2, "TCMP", parsableByteArray, true, true);
            }
            if (i2 == TYPE_COVER_ART) {
                return parseCoverArt(parsableByteArray);
            }
            if (i2 == TYPE_ALBUM_ARTIST) {
                return parseTextAttribute(i2, "TPE2", parsableByteArray);
            }
            if (i2 == TYPE_SORT_TRACK_NAME) {
                return parseTextAttribute(i2, "TSOT", parsableByteArray);
            }
            if (i2 == TYPE_SORT_ALBUM) {
                return parseTextAttribute(i2, "TSO2", parsableByteArray);
            }
            if (i2 == TYPE_SORT_ARTIST) {
                return parseTextAttribute(i2, "TSOA", parsableByteArray);
            }
            if (i2 == TYPE_SORT_ALBUM_ARTIST) {
                return parseTextAttribute(i2, "TSOP", parsableByteArray);
            }
            if (i2 == TYPE_SORT_COMPOSER) {
                return parseTextAttribute(i2, "TSOC", parsableByteArray);
            }
            if (i2 == TYPE_RATING) {
                return parseUint8Attribute(i2, "ITUNESADVISORY", parsableByteArray, false, false);
            }
            if (i2 == TYPE_GAPLESS_ALBUM) {
                return parseUint8Attribute(i2, "ITUNESGAPLESS", parsableByteArray, false, true);
            }
            if (i2 == TYPE_TV_SORT_SHOW) {
                return parseTextAttribute(i2, "TVSHOWSORT", parsableByteArray);
            }
            if (i2 == TYPE_TV_SHOW) {
                return parseTextAttribute(i2, "TVSHOW", parsableByteArray);
            }
            if (i2 == TYPE_INTERNAL) {
                return parseInternalAttribute(parsableByteArray, position);
            }
            Log.d(TAG, "Skipped unknown metadata entry: " + Atom.getAtomTypeString(i2));
            return null;
        } finally {
            parsableByteArray.setPosition(position);
        }
    }

    private static TextInformationFrame parseIndexAndCountAttribute(int i2, String str, ParsableByteArray parsableByteArray) {
        int i3 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == Atom.TYPE_data && i3 >= 22) {
            parsableByteArray.skipBytes(10);
            int unsignedShort = parsableByteArray.readUnsignedShort();
            if (unsignedShort > 0) {
                String str2 = "" + unsignedShort;
                int unsignedShort2 = parsableByteArray.readUnsignedShort();
                if (unsignedShort2 > 0) {
                    str2 = str2 + "/" + unsignedShort2;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        Log.w(TAG, "Failed to parse index/count attribute: " + Atom.getAtomTypeString(i2));
        return null;
    }

    private static Id3Frame parseInternalAttribute(ParsableByteArray parsableByteArray, int i2) {
        String nullTerminatedString = null;
        String nullTerminatedString2 = null;
        int i3 = -1;
        int i4 = -1;
        while (parsableByteArray.getPosition() < i2) {
            int position = parsableByteArray.getPosition();
            int i5 = parsableByteArray.readInt();
            int i6 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            if (i6 == Atom.TYPE_mean) {
                nullTerminatedString = parsableByteArray.readNullTerminatedString(i5 - 12);
            } else if (i6 == Atom.TYPE_name) {
                nullTerminatedString2 = parsableByteArray.readNullTerminatedString(i5 - 12);
            } else {
                if (i6 == Atom.TYPE_data) {
                    i3 = position;
                    i4 = i5;
                }
                parsableByteArray.skipBytes(i5 - 12);
            }
        }
        if (nullTerminatedString == null || nullTerminatedString2 == null || i3 == -1) {
            return null;
        }
        parsableByteArray.setPosition(i3);
        parsableByteArray.skipBytes(16);
        return new InternalFrame(nullTerminatedString, nullTerminatedString2, parsableByteArray.readNullTerminatedString(i4 - 16));
    }

    public static MdtaMetadataEntry parseMdtaMetadataEntryFromIlst(ParsableByteArray parsableByteArray, int i2, String str) {
        while (true) {
            int position = parsableByteArray.getPosition();
            if (position >= i2) {
                return null;
            }
            int i3 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_data) {
                int i4 = parsableByteArray.readInt();
                int i5 = parsableByteArray.readInt();
                int i6 = i3 - 16;
                byte[] bArr = new byte[i6];
                parsableByteArray.readBytes(bArr, 0, i6);
                return new MdtaMetadataEntry(str, bArr, i5, i4);
            }
            parsableByteArray.setPosition(position + i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.metadata.id3.TextInformationFrame parseStandardGenreAttribute(com.google.android.exoplayer2.util.ParsableByteArray r3) {
        /*
            int r3 = parseUint8AttributeValue(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = com.google.android.exoplayer2.extractor.mp4.MetadataUtil.STANDARD_GENRES
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L1c
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L1c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            com.google.android.exoplayer2.util.Log.w(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.MetadataUtil.parseStandardGenreAttribute(com.google.android.exoplayer2.util.ParsableByteArray):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    private static TextInformationFrame parseTextAttribute(int i2, String str, ParsableByteArray parsableByteArray) {
        int i3 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == Atom.TYPE_data) {
            parsableByteArray.skipBytes(8);
            return new TextInformationFrame(str, null, parsableByteArray.readNullTerminatedString(i3 - 16));
        }
        Log.w(TAG, "Failed to parse text attribute: " + Atom.getAtomTypeString(i2));
        return null;
    }

    private static Id3Frame parseUint8Attribute(int i2, String str, ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        int uint8AttributeValue = parseUint8AttributeValue(parsableByteArray);
        if (z2) {
            uint8AttributeValue = Math.min(1, uint8AttributeValue);
        }
        if (uint8AttributeValue >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(uint8AttributeValue)) : new CommentFrame("und", str, Integer.toString(uint8AttributeValue));
        }
        Log.w(TAG, "Failed to parse uint8 attribute: " + Atom.getAtomTypeString(i2));
        return null;
    }

    private static int parseUint8AttributeValue(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() == Atom.TYPE_data) {
            parsableByteArray.skipBytes(8);
            return parsableByteArray.readUnsignedByte();
        }
        Log.w(TAG, "Failed to parse uint8 attribute value");
        return -1;
    }
}
