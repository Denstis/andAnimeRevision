package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbj;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes.dex */
abstract class zzu {
    String zza;
    int zzb;
    Boolean zzc;
    Boolean zzd;
    Long zze;
    Long zzf;

    zzu(String str, int i2) {
        this.zza = str;
        this.zzb = i2;
    }

    static Boolean zza(double d2, zzbj.zzd zzdVar) {
        try {
            return zza(new BigDecimal(d2), zzdVar, Math.ulp(d2));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean zza(long j2, zzbj.zzd zzdVar) {
        try {
            return zza(new BigDecimal(j2), zzdVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @VisibleForTesting
    static Boolean zza(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    static Boolean zza(String str, zzbj.zzd zzdVar) {
        if (!zzki.zza(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzdVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static Boolean zza(String str, zzbj.zzf.zzb zzbVar, boolean z, String str2, List<String> list, String str3, zzew zzewVar) {
        boolean zStartsWith;
        if (str == null) {
            return null;
        }
        if (zzbVar == zzbj.zzf.zzb.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && zzbVar != zzbj.zzf.zzb.REGEXP) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (zzq.zza[zzbVar.ordinal()]) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    if (zzewVar != null) {
                        zzewVar.zzi().zza("Invalid regular expression in REGEXP audience filter. expression", str3);
                    }
                    return null;
                }
            case 2:
                zStartsWith = str.startsWith(str2);
                break;
            case 3:
                zStartsWith = str.endsWith(str2);
                break;
            case 4:
                zStartsWith = str.contains(str2);
                break;
            case 5:
                zStartsWith = str.equals(str2);
                break;
            case 6:
                zStartsWith = list.contains(str);
                break;
            default:
                return null;
        }
        return Boolean.valueOf(zStartsWith);
    }

    @VisibleForTesting
    static Boolean zza(String str, zzbj.zzf zzfVar, zzew zzewVar) {
        List<String> list;
        Preconditions.checkNotNull(zzfVar);
        if (str == null || !zzfVar.zza() || zzfVar.zzb() == zzbj.zzf.zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (zzfVar.zzb() == zzbj.zzf.zzb.IN_LIST) {
            if (zzfVar.zzh() == 0) {
                return null;
            }
        } else if (!zzfVar.zzc()) {
            return null;
        }
        zzbj.zzf.zzb zzbVarZzb = zzfVar.zzb();
        boolean zZzf = zzfVar.zzf();
        String strZzd = (zZzf || zzbVarZzb == zzbj.zzf.zzb.REGEXP || zzbVarZzb == zzbj.zzf.zzb.IN_LIST) ? zzfVar.zzd() : zzfVar.zzd().toUpperCase(Locale.ENGLISH);
        if (zzfVar.zzh() == 0) {
            list = null;
        } else {
            List<String> listZzg = zzfVar.zzg();
            if (!zZzf) {
                ArrayList arrayList = new ArrayList(listZzg.size());
                Iterator<String> it = listZzg.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toUpperCase(Locale.ENGLISH));
                }
                listZzg = Collections.unmodifiableList(arrayList);
            }
            list = listZzg;
        }
        return zza(str, zzbVarZzb, zZzf, strZzd, list, zzbVarZzb == zzbj.zzf.zzb.REGEXP ? strZzd : null, zzewVar);
    }

    @VisibleForTesting
    private static Boolean zza(BigDecimal bigDecimal, zzbj.zzd zzdVar, double d2) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzdVar);
        if (zzdVar.zza() && zzdVar.zzb() != zzbj.zzd.zza.UNKNOWN_COMPARISON_TYPE) {
            if (zzdVar.zzb() == zzbj.zzd.zza.BETWEEN) {
                if (!zzdVar.zzg() || !zzdVar.zzi()) {
                    return null;
                }
            } else if (!zzdVar.zze()) {
                return null;
            }
            zzbj.zzd.zza zzaVarZzb = zzdVar.zzb();
            if (zzdVar.zzb() == zzbj.zzd.zza.BETWEEN) {
                if (zzki.zza(zzdVar.zzh()) && zzki.zza(zzdVar.zzj())) {
                    try {
                        BigDecimal bigDecimal5 = new BigDecimal(zzdVar.zzh());
                        bigDecimal4 = new BigDecimal(zzdVar.zzj());
                        bigDecimal3 = bigDecimal5;
                        bigDecimal2 = null;
                    } catch (NumberFormatException unused) {
                    }
                }
                return null;
            }
            if (!zzki.zza(zzdVar.zzf())) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(zzdVar.zzf());
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException unused2) {
            }
            if (zzaVarZzb == zzbj.zzd.zza.BETWEEN) {
                if (bigDecimal3 == null) {
                    return null;
                }
            } else if (bigDecimal2 != null) {
            }
            int i2 = zzq.zzb[zzaVarZzb.ordinal()];
            if (i2 == 1) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == -1);
            }
            if (i2 == 2) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 1);
            }
            if (i2 == 3) {
                if (d2 == 0.0d) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                }
                if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d2).multiply(new BigDecimal(2)))) == 1 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d2).multiply(new BigDecimal(2)))) == -1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
            if (i2 == 4) {
                if (bigDecimal.compareTo(bigDecimal3) != -1 && bigDecimal.compareTo(bigDecimal4) != 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        }
        return null;
    }

    abstract int zza();

    abstract boolean zzb();
}
