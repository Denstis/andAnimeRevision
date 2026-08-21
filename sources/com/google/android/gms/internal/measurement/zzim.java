package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzi' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public class zzim {
    public static final zzim zza = new zzim("DOUBLE", 0, zzip.DOUBLE, 1);
    public static final zzim zzb = new zzim("FLOAT", 1, zzip.FLOAT, 5);
    public static final zzim zzc = new zzim("INT64", 2, zzip.LONG, 0);
    public static final zzim zzd = new zzim("UINT64", 3, zzip.LONG, 0);
    public static final zzim zze = new zzim("INT32", 4, zzip.INT, 0);
    public static final zzim zzf = new zzim("FIXED64", 5, zzip.LONG, 1);
    public static final zzim zzg = new zzim("FIXED32", 6, zzip.INT, 5);
    public static final zzim zzh = new zzim("BOOL", 7, zzip.BOOLEAN, 0);
    public static final zzim zzi;
    public static final zzim zzj;
    public static final zzim zzk;
    public static final zzim zzl;
    public static final zzim zzm;
    public static final zzim zzn;
    public static final zzim zzo;
    public static final zzim zzp;
    public static final zzim zzq;
    public static final zzim zzr;
    private static final /* synthetic */ zzim[] zzu;
    private final zzip zzs;
    private final int zzt;

    static {
        final int i2 = 2;
        final int i3 = 3;
        final zzip zzipVar = zzip.STRING;
        final int i4 = 8;
        final String str = "STRING";
        zzi = new zzim(str, i4, zzipVar, i2) { // from class: com.google.android.gms.internal.measurement.zzil
            {
                int i5 = 8;
                int i6 = 2;
                zzij zzijVar = null;
            }
        };
        final zzip zzipVar2 = zzip.MESSAGE;
        final int i5 = 9;
        final String str2 = "GROUP";
        zzj = new zzim(str2, i5, zzipVar2, i3) { // from class: com.google.android.gms.internal.measurement.zzio
            {
                int i6 = 9;
                int i7 = 3;
                zzij zzijVar = null;
            }
        };
        final zzip zzipVar3 = zzip.MESSAGE;
        final int i6 = 10;
        final String str3 = "MESSAGE";
        zzk = new zzim(str3, i6, zzipVar3, i2) { // from class: com.google.android.gms.internal.measurement.zzin
            {
                int i7 = 10;
                int i8 = 2;
                zzij zzijVar = null;
            }
        };
        final zzip zzipVar4 = zzip.BYTE_STRING;
        final int i7 = 11;
        final String str4 = "BYTES";
        zzl = new zzim(str4, i7, zzipVar4, i2) { // from class: com.google.android.gms.internal.measurement.zziq
            {
                int i8 = 11;
                int i9 = 2;
                zzij zzijVar = null;
            }
        };
        zzm = new zzim("UINT32", 12, zzip.INT, 0);
        zzn = new zzim("ENUM", 13, zzip.ENUM, 0);
        zzo = new zzim("SFIXED32", 14, zzip.INT, 5);
        zzp = new zzim("SFIXED64", 15, zzip.LONG, 1);
        zzq = new zzim("SINT32", 16, zzip.INT, 0);
        zzr = new zzim("SINT64", 17, zzip.LONG, 0);
        zzu = new zzim[]{zza, zzb, zzc, zzd, zze, zzf, zzg, zzh, zzi, zzj, zzk, zzl, zzm, zzn, zzo, zzp, zzq, zzr};
    }

    private zzim(String str, int i2, zzip zzipVar, int i3) {
        this.zzs = zzipVar;
        this.zzt = i3;
    }

    /* synthetic */ zzim(String str, int i2, zzip zzipVar, int i3, zzij zzijVar) {
        this(str, i2, zzipVar, i3);
    }

    public static zzim[] values() {
        return (zzim[]) zzu.clone();
    }

    public final zzip zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
