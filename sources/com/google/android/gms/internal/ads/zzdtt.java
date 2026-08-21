package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzdtt {
    private static final boolean zzhgx;
    private static final zzd zzhow;
    private static final boolean zzhox;
    static final long zzhoy;
    private static final long zzhoz;
    private static final long zzhpa;
    private static final long zzhpb;
    private static final long zzhpc;
    private static final long zzhpd;
    private static final long zzhpe;
    private static final long zzhpf;
    private static final long zzhpg;
    private static final long zzhph;
    private static final long zzhpi;
    private static final long zzhpj;
    private static final long zzhpk;
    private static final long zzhpl;
    private static final int zzhpm;
    static final boolean zzhpn;
    private static final Logger logger = Logger.getLogger(zzdtt.class.getName());
    private static final Unsafe zzgqj = zzbcc();
    private static final Class<?> zzhft = zzdpj.zzaxm();
    private static final boolean zzhou = zzm(Long.TYPE);
    private static final boolean zzhov = zzm(Integer.TYPE);

    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(long j2, byte b2) {
            Memory.pokeByte((int) (j2 & (-1)), b2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, double d2) {
            zza(obj, j2, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, float f2) {
            zzb(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, boolean z) {
            if (zzdtt.zzhpn) {
                zzdtt.zzb(obj, j2, z);
            } else {
                zzdtt.zzc(obj, j2, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(byte[] bArr, long j2, long j3, long j4) {
            Memory.pokeByteArray((int) (j3 & (-1)), bArr, (int) j2, (int) j4);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zze(Object obj, long j2, byte b2) {
            if (zzdtt.zzhpn) {
                zzdtt.zza(obj, j2, b2);
            } else {
                zzdtt.zzb(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final boolean zzm(Object obj, long j2) {
            return zzdtt.zzhpn ? zzdtt.zzs(obj, j2) : zzdtt.zzt(obj, j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final float zzn(Object obj, long j2) {
            return Float.intBitsToFloat(zzk(obj, j2));
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final double zzo(Object obj, long j2) {
            return Double.longBitsToDouble(zzl(obj, j2));
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final byte zzy(Object obj, long j2) {
            return zzdtt.zzhpn ? zzdtt.zzq(obj, j2) : zzdtt.zzr(obj, j2);
        }
    }

    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(long j2, byte b2) {
            this.zzhpq.putByte(j2, b2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, double d2) {
            this.zzhpq.putDouble(obj, j2, d2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, float f2) {
            this.zzhpq.putFloat(obj, j2, f2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, boolean z) {
            this.zzhpq.putBoolean(obj, j2, z);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(byte[] bArr, long j2, long j3, long j4) {
            this.zzhpq.copyMemory(bArr, zzdtt.zzhoy + j2, (Object) null, j3, j4);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zze(Object obj, long j2, byte b2) {
            this.zzhpq.putByte(obj, j2, b2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final boolean zzm(Object obj, long j2) {
            return this.zzhpq.getBoolean(obj, j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final float zzn(Object obj, long j2) {
            return this.zzhpq.getFloat(obj, j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final double zzo(Object obj, long j2) {
            return this.zzhpq.getDouble(obj, j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final byte zzy(Object obj, long j2) {
            return this.zzhpq.getByte(obj, j2);
        }
    }

    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(long j2, byte b2) {
            Memory.pokeByte(j2, b2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, double d2) {
            zza(obj, j2, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, float f2) {
            zzb(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(Object obj, long j2, boolean z) {
            if (zzdtt.zzhpn) {
                zzdtt.zzb(obj, j2, z);
            } else {
                zzdtt.zzc(obj, j2, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zza(byte[] bArr, long j2, long j3, long j4) {
            Memory.pokeByteArray(j3, bArr, (int) j2, (int) j4);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final void zze(Object obj, long j2, byte b2) {
            if (zzdtt.zzhpn) {
                zzdtt.zza(obj, j2, b2);
            } else {
                zzdtt.zzb(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final boolean zzm(Object obj, long j2) {
            return zzdtt.zzhpn ? zzdtt.zzs(obj, j2) : zzdtt.zzt(obj, j2);
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final float zzn(Object obj, long j2) {
            return Float.intBitsToFloat(zzk(obj, j2));
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final double zzo(Object obj, long j2) {
            return Double.longBitsToDouble(zzl(obj, j2));
        }

        @Override // com.google.android.gms.internal.ads.zzdtt.zzd
        public final byte zzy(Object obj, long j2) {
            return zzdtt.zzhpn ? zzdtt.zzq(obj, j2) : zzdtt.zzr(obj, j2);
        }
    }

    static abstract class zzd {
        Unsafe zzhpq;

        zzd(Unsafe unsafe) {
            this.zzhpq = unsafe;
        }

        public abstract void zza(long j2, byte b2);

        public abstract void zza(Object obj, long j2, double d2);

        public abstract void zza(Object obj, long j2, float f2);

        public final void zza(Object obj, long j2, long j3) {
            this.zzhpq.putLong(obj, j2, j3);
        }

        public abstract void zza(Object obj, long j2, boolean z);

        public abstract void zza(byte[] bArr, long j2, long j3, long j4);

        public final void zzb(Object obj, long j2, int i2) {
            this.zzhpq.putInt(obj, j2, i2);
        }

        public abstract void zze(Object obj, long j2, byte b2);

        public final int zzk(Object obj, long j2) {
            return this.zzhpq.getInt(obj, j2);
        }

        public final long zzl(Object obj, long j2) {
            return this.zzhpq.getLong(obj, j2);
        }

        public abstract boolean zzm(Object obj, long j2);

        public abstract float zzn(Object obj, long j2);

        public abstract double zzo(Object obj, long j2);

        public abstract byte zzy(Object obj, long j2);
    }

    static {
        zzd zzdVar;
        zzd zzbVar = null;
        if (zzgqj != null) {
            if (!zzdpj.zzaxl()) {
                zzbVar = new zzb(zzgqj);
            } else if (zzhou) {
                zzbVar = new zzc(zzgqj);
            } else if (zzhov) {
                zzbVar = new zza(zzgqj);
            }
        }
        zzhow = zzbVar;
        zzhox = zzbce();
        zzhgx = zzbcd();
        zzhoy = zzk(byte[].class);
        zzhoz = zzk(boolean[].class);
        zzhpa = zzl(boolean[].class);
        zzhpb = zzk(int[].class);
        zzhpc = zzl(int[].class);
        zzhpd = zzk(long[].class);
        zzhpe = zzl(long[].class);
        zzhpf = zzk(float[].class);
        zzhpg = zzl(float[].class);
        zzhph = zzk(double[].class);
        zzhpi = zzl(double[].class);
        zzhpj = zzk(Object[].class);
        zzhpk = zzl(Object[].class);
        Field fieldZzbcf = zzbcf();
        zzhpl = (fieldZzbcf == null || (zzdVar = zzhow) == null) ? -1L : zzdVar.zzhpq.objectFieldOffset(fieldZzbcf);
        zzhpm = (int) (zzhoy & 7);
        zzhpn = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzdtt() {
    }

    static byte zza(byte[] bArr, long j2) {
        return zzhow.zzy(bArr, zzhoy + j2);
    }

    static void zza(long j2, byte b2) {
        zzhow.zza(j2, b2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = ((((int) j2) ^ (-1)) & 3) << 3;
        zzb(obj, j3, ((255 & b2) << i2) | (zzk(obj, j3) & ((255 << i2) ^ (-1))));
    }

    static void zza(Object obj, long j2, double d2) {
        zzhow.zza(obj, j2, d2);
    }

    static void zza(Object obj, long j2, float f2) {
        zzhow.zza(obj, j2, f2);
    }

    static void zza(Object obj, long j2, long j3) {
        zzhow.zza(obj, j2, j3);
    }

    static void zza(Object obj, long j2, Object obj2) {
        zzhow.zzhpq.putObject(obj, j2, obj2);
    }

    static void zza(Object obj, long j2, boolean z) {
        zzhow.zza(obj, j2, z);
    }

    static void zza(byte[] bArr, long j2, byte b2) {
        zzhow.zze(bArr, zzhoy + j2, b2);
    }

    static void zza(byte[] bArr, long j2, long j3, long j4) {
        zzhow.zza(bArr, j2, j3, j4);
    }

    private static Field zzb(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        zzb(obj, j3, ((255 & b2) << i2) | (zzk(obj, j3) & ((255 << i2) ^ (-1))));
    }

    static void zzb(Object obj, long j2, int i2) {
        zzhow.zzb(obj, j2, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j2, boolean z) {
        zza(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    static boolean zzbca() {
        return zzhgx;
    }

    static boolean zzbcb() {
        return zzhox;
    }

    static Unsafe zzbcc() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzdtv());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean zzbcd() {
        Unsafe unsafe = zzgqj;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (zzdpj.zzaxl()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzbce() {
        Unsafe unsafe = zzgqj;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzbcf() == null) {
                return false;
            }
            if (zzdpj.zzaxl()) {
                return true;
            }
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    private static Field zzbcf() {
        Field fieldZzb;
        if (zzdpj.zzaxl() && (fieldZzb = zzb(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldZzb;
        }
        Field fieldZzb2 = zzb(Buffer.class, "address");
        if (fieldZzb2 == null || fieldZzb2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzb2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j2, boolean z) {
        zzb(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    static <T> T zzj(Class<T> cls) {
        try {
            return (T) zzgqj.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static int zzk(Class<?> cls) {
        if (zzhgx) {
            return zzhow.zzhpq.arrayBaseOffset(cls);
        }
        return -1;
    }

    static int zzk(Object obj, long j2) {
        return zzhow.zzk(obj, j2);
    }

    private static int zzl(Class<?> cls) {
        if (zzhgx) {
            return zzhow.zzhpq.arrayIndexScale(cls);
        }
        return -1;
    }

    static long zzl(Object obj, long j2) {
        return zzhow.zzl(obj, j2);
    }

    private static boolean zzm(Class<?> cls) {
        if (!zzdpj.zzaxl()) {
            return false;
        }
        try {
            Class<?> cls2 = zzhft;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    static boolean zzm(Object obj, long j2) {
        return zzhow.zzm(obj, j2);
    }

    static float zzn(Object obj, long j2) {
        return zzhow.zzn(obj, j2);
    }

    static long zzn(ByteBuffer byteBuffer) {
        return zzhow.zzl(byteBuffer, zzhpl);
    }

    static double zzo(Object obj, long j2) {
        return zzhow.zzo(obj, j2);
    }

    static Object zzp(Object obj, long j2) {
        return zzhow.zzhpq.getObject(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzq(Object obj, long j2) {
        return (byte) (zzk(obj, (-4) & j2) >>> ((int) (((j2 ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzr(Object obj, long j2) {
        return (byte) (zzk(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzs(Object obj, long j2) {
        return zzq(obj, j2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzt(Object obj, long j2) {
        return zzr(obj, j2) != 0;
    }
}
