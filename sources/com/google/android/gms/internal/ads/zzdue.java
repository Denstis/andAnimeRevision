package com.google.android.gms.internal.ads;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzhpz' uses external variables
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
public class zzdue {
    public static final zzdue zzhpr = new zzdue("DOUBLE", 0, zzduh.DOUBLE, 1);
    public static final zzdue zzhps = new zzdue("FLOAT", 1, zzduh.FLOAT, 5);
    public static final zzdue zzhpt = new zzdue("INT64", 2, zzduh.LONG, 0);
    public static final zzdue zzhpu = new zzdue("UINT64", 3, zzduh.LONG, 0);
    public static final zzdue zzhpv = new zzdue("INT32", 4, zzduh.INT, 0);
    public static final zzdue zzhpw = new zzdue("FIXED64", 5, zzduh.LONG, 1);
    public static final zzdue zzhpx = new zzdue("FIXED32", 6, zzduh.INT, 5);
    public static final zzdue zzhpy = new zzdue("BOOL", 7, zzduh.BOOLEAN, 0);
    public static final zzdue zzhpz;
    public static final zzdue zzhqa;
    public static final zzdue zzhqb;
    public static final zzdue zzhqc;
    public static final zzdue zzhqd;
    public static final zzdue zzhqe;
    public static final zzdue zzhqf;
    public static final zzdue zzhqg;
    public static final zzdue zzhqh;
    public static final zzdue zzhqi;
    private static final /* synthetic */ zzdue[] zzhql;
    private final zzduh zzhqj;
    private final int zzhqk;

    static {
        final int i2 = 2;
        final int i3 = 3;
        final zzduh zzduhVar = zzduh.STRING;
        final int i4 = 8;
        final String str = "STRING";
        zzhpz = new zzdue(str, i4, zzduhVar, i2) { // from class: com.google.android.gms.internal.ads.zzdud
            {
                int i5 = 8;
                int i6 = 2;
                zzdub zzdubVar = null;
            }
        };
        final zzduh zzduhVar2 = zzduh.MESSAGE;
        final int i5 = 9;
        final String str2 = "GROUP";
        zzhqa = new zzdue(str2, i5, zzduhVar2, i3) { // from class: com.google.android.gms.internal.ads.zzdug
            {
                int i6 = 9;
                int i7 = 3;
                zzdub zzdubVar = null;
            }
        };
        final zzduh zzduhVar3 = zzduh.MESSAGE;
        final int i6 = 10;
        final String str3 = "MESSAGE";
        zzhqb = new zzdue(str3, i6, zzduhVar3, i2) { // from class: com.google.android.gms.internal.ads.zzduf
            {
                int i7 = 10;
                int i8 = 2;
                zzdub zzdubVar = null;
            }
        };
        final zzduh zzduhVar4 = zzduh.BYTE_STRING;
        final int i7 = 11;
        final String str4 = "BYTES";
        zzhqc = new zzdue(str4, i7, zzduhVar4, i2) { // from class: com.google.android.gms.internal.ads.zzdui
            {
                int i8 = 11;
                int i9 = 2;
                zzdub zzdubVar = null;
            }
        };
        zzhqd = new zzdue("UINT32", 12, zzduh.INT, 0);
        zzhqe = new zzdue("ENUM", 13, zzduh.ENUM, 0);
        zzhqf = new zzdue("SFIXED32", 14, zzduh.INT, 5);
        zzhqg = new zzdue("SFIXED64", 15, zzduh.LONG, 1);
        zzhqh = new zzdue("SINT32", 16, zzduh.INT, 0);
        zzhqi = new zzdue("SINT64", 17, zzduh.LONG, 0);
        zzhql = new zzdue[]{zzhpr, zzhps, zzhpt, zzhpu, zzhpv, zzhpw, zzhpx, zzhpy, zzhpz, zzhqa, zzhqb, zzhqc, zzhqd, zzhqe, zzhqf, zzhqg, zzhqh, zzhqi};
    }

    private zzdue(String str, int i2, zzduh zzduhVar, int i3) {
        this.zzhqj = zzduhVar;
        this.zzhqk = i3;
    }

    /* synthetic */ zzdue(String str, int i2, zzduh zzduhVar, int i3, zzdub zzdubVar) {
        this(str, i2, zzduhVar, i3);
    }

    public static zzdue[] values() {
        return (zzdue[]) zzhql.clone();
    }

    public final zzduh zzbcg() {
        return this.zzhqj;
    }

    public final int zzbch() {
        return this.zzhqk;
    }
}
