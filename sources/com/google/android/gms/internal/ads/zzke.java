package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.gms.internal.ads.zzkx;

/* JADX INFO: loaded from: classes.dex */
final class zzke {
    private static final int zzavv = zzof.zzbi("nam");
    private static final int zzavw = zzof.zzbi("trk");
    private static final int zzavx = zzof.zzbi("cmt");
    private static final int zzavy = zzof.zzbi("day");
    private static final int zzavz = zzof.zzbi("ART");
    private static final int zzawa = zzof.zzbi("too");
    private static final int zzawb = zzof.zzbi("alb");
    private static final int zzawc = zzof.zzbi("com");
    private static final int zzawd = zzof.zzbi("wrt");
    private static final int zzawe = zzof.zzbi("lyr");
    private static final int zzawf = zzof.zzbi("gen");
    private static final int zzawg = zzof.zzbi("covr");
    private static final int zzawh = zzof.zzbi("gnre");
    private static final int zzawi = zzof.zzbi("grp");
    private static final int zzawj = zzof.zzbi("disk");
    private static final int zzawk = zzof.zzbi("trkn");
    private static final int zzawl = zzof.zzbi("tmpo");
    private static final int zzawm = zzof.zzbi("cpil");
    private static final int zzawn = zzof.zzbi("aART");
    private static final int zzawo = zzof.zzbi("sonm");
    private static final int zzawp = zzof.zzbi("soal");
    private static final int zzawq = zzof.zzbi("soar");
    private static final int zzawr = zzof.zzbi("soaa");
    private static final int zzaws = zzof.zzbi("soco");
    private static final int zzawt = zzof.zzbi("rtng");
    private static final int zzawu = zzof.zzbi("pgap");
    private static final int zzawv = zzof.zzbi("sosn");
    private static final int zzaww = zzof.zzbi("tvsh");
    private static final int zzawx = zzof.zzbi(InternalFrame.ID);
    private static final String[] zzawy = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    private static zzld zza(int i2, String str, zzoc zzocVar) {
        int i3 = zzocVar.readInt();
        if (zzocVar.readInt() == zzjs.zzauc) {
            zzocVar.zzbh(8);
            return new zzld(str, null, zzocVar.zzbi(i3 - 16));
        }
        String strValueOf = String.valueOf(zzjs.zzao(i2));
        Log.w("MetadataUtil", strValueOf.length() != 0 ? "Failed to parse text attribute: ".concat(strValueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    private static zzle zza(int i2, String str, zzoc zzocVar, boolean z, boolean z2) {
        int iZze = zze(zzocVar);
        if (z2) {
            iZze = Math.min(1, iZze);
        }
        if (iZze >= 0) {
            return z ? new zzld(str, null, Integer.toString(iZze)) : new zzkz(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iZze));
        }
        String strValueOf = String.valueOf(zzjs.zzao(i2));
        Log.w("MetadataUtil", strValueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(strValueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    private static zzld zzb(int i2, String str, zzoc zzocVar) {
        int i3 = zzocVar.readInt();
        if (zzocVar.readInt() == zzjs.zzauc && i3 >= 22) {
            zzocVar.zzbh(10);
            int unsignedShort = zzocVar.readUnsignedShort();
            if (unsignedShort > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(unsignedShort);
                String string = sb.toString();
                int unsignedShort2 = zzocVar.readUnsignedShort();
                if (unsignedShort2 > 0) {
                    String strValueOf = String.valueOf(string);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 12);
                    sb2.append(strValueOf);
                    sb2.append("/");
                    sb2.append(unsignedShort2);
                    string = sb2.toString();
                }
                return new zzld(str, null, string);
            }
        }
        String strValueOf2 = String.valueOf(zzjs.zzao(i2));
        Log.w("MetadataUtil", strValueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(strValueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    public static zzkx.zza zzd(zzoc zzocVar) {
        String string;
        zzld zzldVar;
        int position = zzocVar.getPosition() + zzocVar.readInt();
        int i2 = zzocVar.readInt();
        int i3 = i2 >>> 24;
        zzkx.zza zzkzVar = null;
        try {
            if (i3 == 169 || i3 == 65533) {
                int i4 = 16777215 & i2;
                if (i4 == zzavx) {
                    int i5 = zzocVar.readInt();
                    if (zzocVar.readInt() == zzjs.zzauc) {
                        zzocVar.zzbh(8);
                        String strZzbi = zzocVar.zzbi(i5 - 16);
                        zzkzVar = new zzkz(C.LANGUAGE_UNDETERMINED, strZzbi, strZzbi);
                    } else {
                        String strValueOf = String.valueOf(zzjs.zzao(i2));
                        Log.w("MetadataUtil", strValueOf.length() != 0 ? "Failed to parse comment attribute: ".concat(strValueOf) : new String("Failed to parse comment attribute: "));
                    }
                    return zzkzVar;
                }
                if (i4 != zzavv && i4 != zzavw) {
                    if (i4 != zzawc && i4 != zzawd) {
                        if (i4 == zzavy) {
                            return zza(i2, "TDRC", zzocVar);
                        }
                        if (i4 == zzavz) {
                            return zza(i2, "TPE1", zzocVar);
                        }
                        if (i4 == zzawa) {
                            return zza(i2, "TSSE", zzocVar);
                        }
                        if (i4 == zzawb) {
                            return zza(i2, "TALB", zzocVar);
                        }
                        if (i4 == zzawe) {
                            return zza(i2, "USLT", zzocVar);
                        }
                        if (i4 == zzawf) {
                            return zza(i2, "TCON", zzocVar);
                        }
                        if (i4 == zzawi) {
                            return zza(i2, "TIT1", zzocVar);
                        }
                    }
                    return zza(i2, "TCOM", zzocVar);
                }
                return zza(i2, "TIT2", zzocVar);
            }
            if (i2 == zzawh) {
                int iZze = zze(zzocVar);
                String str = (iZze <= 0 || iZze > zzawy.length) ? null : zzawy[iZze - 1];
                if (str != null) {
                    zzldVar = new zzld("TCON", null, str);
                } else {
                    Log.w("MetadataUtil", "Failed to parse standard genre code");
                    zzldVar = null;
                }
                return zzldVar;
            }
            if (i2 == zzawj) {
                return zzb(i2, "TPOS", zzocVar);
            }
            if (i2 == zzawk) {
                return zzb(i2, "TRCK", zzocVar);
            }
            if (i2 == zzawl) {
                return zza(i2, "TBPM", zzocVar, true, false);
            }
            if (i2 == zzawm) {
                return zza(i2, "TCMP", zzocVar, true, true);
            }
            if (i2 == zzawg) {
                int i6 = zzocVar.readInt();
                if (zzocVar.readInt() == zzjs.zzauc) {
                    int iZzan = zzjs.zzan(zzocVar.readInt());
                    String str2 = iZzan == 13 ? "image/jpeg" : iZzan == 14 ? "image/png" : null;
                    if (str2 != null) {
                        zzocVar.zzbh(4);
                        byte[] bArr = new byte[i6 - 16];
                        zzocVar.zze(bArr, 0, bArr.length);
                        zzkzVar = new zzky(str2, null, 3, bArr);
                        return zzkzVar;
                    }
                    StringBuilder sb = new StringBuilder(41);
                    sb.append("Unrecognized cover art flags: ");
                    sb.append(iZzan);
                    string = sb.toString();
                } else {
                    string = "Failed to parse cover art attribute";
                }
                Log.w("MetadataUtil", string);
                return zzkzVar;
            }
            if (i2 == zzawn) {
                return zza(i2, "TPE2", zzocVar);
            }
            if (i2 == zzawo) {
                return zza(i2, "TSOT", zzocVar);
            }
            if (i2 == zzawp) {
                return zza(i2, "TSO2", zzocVar);
            }
            if (i2 == zzawq) {
                return zza(i2, "TSOA", zzocVar);
            }
            if (i2 == zzawr) {
                return zza(i2, "TSOP", zzocVar);
            }
            if (i2 == zzaws) {
                return zza(i2, "TSOC", zzocVar);
            }
            if (i2 == zzawt) {
                return zza(i2, "ITUNESADVISORY", zzocVar, false, false);
            }
            if (i2 == zzawu) {
                return zza(i2, "ITUNESGAPLESS", zzocVar, false, true);
            }
            if (i2 == zzawv) {
                return zza(i2, "TVSHOWSORT", zzocVar);
            }
            if (i2 == zzaww) {
                return zza(i2, "TVSHOW", zzocVar);
            }
            if (i2 == zzawx) {
                String strZzbi2 = null;
                String strZzbi3 = null;
                int i7 = -1;
                int i8 = -1;
                while (zzocVar.getPosition() < position) {
                    int position2 = zzocVar.getPosition();
                    int i9 = zzocVar.readInt();
                    int i10 = zzocVar.readInt();
                    zzocVar.zzbh(4);
                    if (i10 == zzjs.zzaua) {
                        strZzbi2 = zzocVar.zzbi(i9 - 12);
                    } else if (i10 == zzjs.zzaub) {
                        strZzbi3 = zzocVar.zzbi(i9 - 12);
                    } else {
                        if (i10 == zzjs.zzauc) {
                            i7 = position2;
                            i8 = i9;
                        }
                        zzocVar.zzbh(i9 - 12);
                    }
                }
                if ("com.apple.iTunes".equals(strZzbi2) && "iTunSMPB".equals(strZzbi3) && i7 != -1) {
                    zzocVar.zzbg(i7);
                    zzocVar.zzbh(16);
                    zzkzVar = new zzkz(C.LANGUAGE_UNDETERMINED, strZzbi3, zzocVar.zzbi(i8 - 16));
                }
                return zzkzVar;
            }
            String strValueOf2 = String.valueOf(zzjs.zzao(i2));
            Log.d("MetadataUtil", strValueOf2.length() != 0 ? "Skipped unknown metadata entry: ".concat(strValueOf2) : new String("Skipped unknown metadata entry: "));
            return null;
        } finally {
            zzocVar.zzbg(position);
        }
    }

    private static int zze(zzoc zzocVar) {
        zzocVar.zzbh(4);
        if (zzocVar.readInt() == zzjs.zzauc) {
            zzocVar.zzbh(8);
            return zzocVar.readUnsignedByte();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
