package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzib {
    static final boolean zza;
    private static final Logger zzb = Logger.getLogger(zzib.class.getName());
    private static final Unsafe zzc = zzc();
    private static final Class<?> zzd = zzdr.zzb();
    private static final boolean zze = zzd(Long.TYPE);
    private static final boolean zzf = zzd(Integer.TYPE);
    private static final zzd zzg;
    private static final boolean zzh;
    private static final boolean zzi;
    private static final long zzj;
    private static final long zzk;
    private static final long zzl;
    private static final long zzm;
    private static final long zzn;
    private static final long zzo;
    private static final long zzp;
    private static final long zzq;
    private static final long zzr;
    private static final long zzs;
    private static final long zzt;
    private static final long zzu;
    private static final long zzv;
    private static final long zzw;
    private static final int zzx;

    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final byte zza(Object obj, long j2) {
            return zzib.zza ? zzib.zzk(obj, j2) : zzib.zzl(obj, j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, byte b2) {
            if (zzib.zza) {
                zzib.zzc(obj, j2, b2);
            } else {
                zzib.zzd(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, double d2) {
            zza(obj, j2, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, float f2) {
            zza(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, boolean z) {
            if (zzib.zza) {
                zzib.zzd(obj, j2, z);
            } else {
                zzib.zze(obj, j2, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final boolean zzb(Object obj, long j2) {
            return zzib.zza ? zzib.zzm(obj, j2) : zzib.zzn(obj, j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final float zzc(Object obj, long j2) {
            return Float.intBitsToFloat(zze(obj, j2));
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final double zzd(Object obj, long j2) {
            return Double.longBitsToDouble(zzf(obj, j2));
        }
    }

    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final byte zza(Object obj, long j2) {
            return this.zza.getByte(obj, j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, byte b2) {
            this.zza.putByte(obj, j2, b2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, double d2) {
            this.zza.putDouble(obj, j2, d2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, float f2) {
            this.zza.putFloat(obj, j2, f2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, boolean z) {
            this.zza.putBoolean(obj, j2, z);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final boolean zzb(Object obj, long j2) {
            return this.zza.getBoolean(obj, j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final float zzc(Object obj, long j2) {
            return this.zza.getFloat(obj, j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final double zzd(Object obj, long j2) {
            return this.zza.getDouble(obj, j2);
        }
    }

    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final byte zza(Object obj, long j2) {
            return zzib.zza ? zzib.zzk(obj, j2) : zzib.zzl(obj, j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, byte b2) {
            if (zzib.zza) {
                zzib.zzc(obj, j2, b2);
            } else {
                zzib.zzd(obj, j2, b2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, double d2) {
            zza(obj, j2, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, float f2) {
            zza(obj, j2, Float.floatToIntBits(f2));
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final void zza(Object obj, long j2, boolean z) {
            if (zzib.zza) {
                zzib.zzd(obj, j2, z);
            } else {
                zzib.zze(obj, j2, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final boolean zzb(Object obj, long j2) {
            return zzib.zza ? zzib.zzm(obj, j2) : zzib.zzn(obj, j2);
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final float zzc(Object obj, long j2) {
            return Float.intBitsToFloat(zze(obj, j2));
        }

        @Override // com.google.android.gms.internal.measurement.zzib.zzd
        public final double zzd(Object obj, long j2) {
            return Double.longBitsToDouble(zzf(obj, j2));
        }
    }

    static abstract class zzd {
        Unsafe zza;

        zzd(Unsafe unsafe) {
            this.zza = unsafe;
        }

        public abstract byte zza(Object obj, long j2);

        public abstract void zza(Object obj, long j2, byte b2);

        public abstract void zza(Object obj, long j2, double d2);

        public abstract void zza(Object obj, long j2, float f2);

        public final void zza(Object obj, long j2, int i2) {
            this.zza.putInt(obj, j2, i2);
        }

        public final void zza(Object obj, long j2, long j3) {
            this.zza.putLong(obj, j2, j3);
        }

        public abstract void zza(Object obj, long j2, boolean z);

        public abstract boolean zzb(Object obj, long j2);

        public abstract float zzc(Object obj, long j2);

        public abstract double zzd(Object obj, long j2);

        public final int zze(Object obj, long j2) {
            return this.zza.getInt(obj, j2);
        }

        public final long zzf(Object obj, long j2) {
            return this.zza.getLong(obj, j2);
        }
    }

    static {
        zzd zzdVar;
        zzd zzbVar = null;
        if (zzc != null) {
            if (!zzdr.zza()) {
                zzbVar = new zzb(zzc);
            } else if (zze) {
                zzbVar = new zzc(zzc);
            } else if (zzf) {
                zzbVar = new zza(zzc);
            }
        }
        zzg = zzbVar;
        zzh = zze();
        zzi = zzd();
        zzj = zzb(byte[].class);
        zzk = zzb(boolean[].class);
        zzl = zzc(boolean[].class);
        zzm = zzb(int[].class);
        zzn = zzc(int[].class);
        zzo = zzb(long[].class);
        zzp = zzc(long[].class);
        zzq = zzb(float[].class);
        zzr = zzc(float[].class);
        zzs = zzb(double[].class);
        zzt = zzc(double[].class);
        zzu = zzb(Object[].class);
        zzv = zzc(Object[].class);
        Field fieldZzf = zzf();
        zzw = (fieldZzf == null || (zzdVar = zzg) == null) ? -1L : zzdVar.zza.objectFieldOffset(fieldZzf);
        zzx = (int) (zzj & 7);
        zza = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzib() {
    }

    static byte zza(byte[] bArr, long j2) {
        return zzg.zza(bArr, zzj + j2);
    }

    static int zza(Object obj, long j2) {
        return zzg.zze(obj, j2);
    }

    static <T> T zza(Class<T> cls) {
        try {
            return (T) zzc.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static void zza(Object obj, long j2, double d2) {
        zzg.zza(obj, j2, d2);
    }

    static void zza(Object obj, long j2, float f2) {
        zzg.zza(obj, j2, f2);
    }

    static void zza(Object obj, long j2, int i2) {
        zzg.zza(obj, j2, i2);
    }

    static void zza(Object obj, long j2, long j3) {
        zzg.zza(obj, j2, j3);
    }

    static void zza(Object obj, long j2, Object obj2) {
        zzg.zza.putObject(obj, j2, obj2);
    }

    static void zza(Object obj, long j2, boolean z) {
        zzg.zza(obj, j2, z);
    }

    static void zza(byte[] bArr, long j2, byte b2) {
        zzg.zza((Object) bArr, zzj + j2, b2);
    }

    static boolean zza() {
        return zzi;
    }

    private static int zzb(Class<?> cls) {
        if (zzi) {
            return zzg.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    static long zzb(Object obj, long j2) {
        return zzg.zzf(obj, j2);
    }

    static boolean zzb() {
        return zzh;
    }

    private static int zzc(Class<?> cls) {
        if (zzi) {
            return zzg.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    static Unsafe zzc() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzid());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = ((((int) j2) ^ (-1)) & 3) << 3;
        zza(obj, j3, ((255 & b2) << i2) | (zza(obj, j3) & ((255 << i2) ^ (-1))));
    }

    static boolean zzc(Object obj, long j2) {
        return zzg.zzb(obj, j2);
    }

    static float zzd(Object obj, long j2) {
        return zzg.zzc(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzd(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        zza(obj, j3, ((255 & b2) << i2) | (zza(obj, j3) & ((255 << i2) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzd(Object obj, long j2, boolean z) {
        zzc(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    private static boolean zzd() {
        Unsafe unsafe = zzc;
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
            if (zzdr.zza()) {
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
            Logger logger = zzb;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzd(Class<?> cls) {
        if (!zzdr.zza()) {
            return false;
        }
        try {
            Class<?> cls2 = zzd;
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

    static double zze(Object obj, long j2) {
        return zzg.zzd(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zze(Object obj, long j2, boolean z) {
        zzd(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    private static boolean zze() {
        Unsafe unsafe = zzc;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzf() == null) {
                return false;
            }
            if (zzdr.zza()) {
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
            Logger logger = zzb;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    static Object zzf(Object obj, long j2) {
        return zzg.zza.getObject(obj, j2);
    }

    private static Field zzf() {
        Field fieldZza;
        if (zzdr.zza() && (fieldZza = zza((Class<?>) Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldZza;
        }
        Field fieldZza2 = zza((Class<?>) Buffer.class, "address");
        if (fieldZza2 == null || fieldZza2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZza2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzk(Object obj, long j2) {
        return (byte) (zza(obj, (-4) & j2) >>> ((int) (((j2 ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzl(Object obj, long j2) {
        return (byte) (zza(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzm(Object obj, long j2) {
        return zzk(obj, j2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzn(Object obj, long j2) {
        return zzl(obj, j2) != 0;
    }
}
