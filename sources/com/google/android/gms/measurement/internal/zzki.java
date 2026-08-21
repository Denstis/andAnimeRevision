package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class zzki extends zzkb {
    zzki(zzke zzkeVar) {
        super(zzkeVar);
    }

    static int zza(zzbr.zzg.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i2 = 0; i2 < zzaVar.zze(); i2++) {
            if (str.equals(zzaVar.zzd(i2).zzc())) {
                return i2;
            }
        }
        return -1;
    }

    static zzbr.zze zza(zzbr.zzc zzcVar, String str) {
        for (zzbr.zze zzeVar : zzcVar.zza()) {
            if (zzeVar.zza().equals(str)) {
                return zzeVar;
            }
        }
        return null;
    }

    static <Builder extends com.google.android.gms.internal.measurement.zzgn> Builder zza(Builder builder, byte[] bArr) {
        com.google.android.gms.internal.measurement.zzeq zzeqVarZzb = com.google.android.gms.internal.measurement.zzeq.zzb();
        return zzeqVarZzb != null ? (Builder) builder.zza(bArr, zzeqVarZzb) : (Builder) builder.zza(bArr);
    }

    private static String zza(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    static List<Long> zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            long j2 = 0;
            for (int i3 = 0; i3 < 64; i3++) {
                int i4 = (i2 << 6) + i3;
                if (i4 < bitSet.length()) {
                    if (bitSet.get(i4)) {
                        j2 |= 1 << i3;
                    }
                }
            }
            arrayList.add(Long.valueOf(j2));
        }
        return arrayList;
    }

    static void zza(zzbr.zzc.zza zzaVar, String str, Object obj) {
        List<zzbr.zze> listZza = zzaVar.zza();
        int i2 = 0;
        while (true) {
            if (i2 >= listZza.size()) {
                i2 = -1;
                break;
            } else if (str.equals(listZza.get(i2).zza())) {
                break;
            } else {
                i2++;
            }
        }
        zzbr.zze.zza zzaVarZza = zzbr.zze.zzh().zza(str);
        if (obj instanceof Long) {
            zzaVarZza.zza(((Long) obj).longValue());
        } else if (obj instanceof String) {
            zzaVarZza.zzb((String) obj);
        } else if (obj instanceof Double) {
            zzaVarZza.zza(((Double) obj).doubleValue());
        }
        if (i2 >= 0) {
            zzaVar.zza(i2, zzaVarZza);
        } else {
            zzaVar.zza(zzaVarZza);
        }
    }

    private static void zza(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("  ");
        }
    }

    private final void zza(StringBuilder sb, int i2, zzbj.zzc zzcVar) {
        if (zzcVar == null) {
            return;
        }
        zza(sb, i2);
        sb.append("filter {\n");
        if (zzcVar.zze()) {
            zza(sb, i2, "complement", Boolean.valueOf(zzcVar.zzf()));
        }
        zza(sb, i2, "param_name", zzo().zzb(zzcVar.zzg()));
        int i3 = i2 + 1;
        zzbj.zzf zzfVarZzb = zzcVar.zzb();
        if (zzfVarZzb != null) {
            zza(sb, i3);
            sb.append("string_filter");
            sb.append(" {\n");
            if (zzfVarZzb.zza()) {
                zza(sb, i3, "match_type", zzfVarZzb.zzb().name());
            }
            zza(sb, i3, "expression", zzfVarZzb.zzd());
            if (zzfVarZzb.zze()) {
                zza(sb, i3, "case_sensitive", Boolean.valueOf(zzfVarZzb.zzf()));
            }
            if (zzfVarZzb.zzh() > 0) {
                zza(sb, i3 + 1);
                sb.append("expression_list {\n");
                for (String str : zzfVarZzb.zzg()) {
                    zza(sb, i3 + 2);
                    sb.append(str);
                    sb.append("\n");
                }
                sb.append("}\n");
            }
            zza(sb, i3);
            sb.append("}\n");
        }
        zza(sb, i3, "number_filter", zzcVar.zzd());
        zza(sb, i2);
        sb.append("}\n");
    }

    private final void zza(StringBuilder sb, int i2, String str, zzbj.zzd zzdVar) {
        if (zzdVar == null) {
            return;
        }
        zza(sb, i2);
        sb.append(str);
        sb.append(" {\n");
        if (zzdVar.zza()) {
            zza(sb, i2, "comparison_type", zzdVar.zzb().name());
        }
        if (zzdVar.zzc()) {
            zza(sb, i2, "match_as_float", Boolean.valueOf(zzdVar.zzd()));
        }
        zza(sb, i2, "comparison_value", zzdVar.zzf());
        zza(sb, i2, "min_comparison_value", zzdVar.zzh());
        zza(sb, i2, "max_comparison_value", zzdVar.zzj());
        zza(sb, i2);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i2, String str, zzbr.zzi zziVar, String str2) {
        if (zziVar == null) {
            return;
        }
        zza(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zziVar.zzd() != 0) {
            zza(sb, 4);
            sb.append("results: ");
            int i3 = 0;
            for (Long l : zziVar.zzc()) {
                int i4 = i3 + 1;
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i3 = i4;
            }
            sb.append('\n');
        }
        if (zziVar.zzb() != 0) {
            zza(sb, 4);
            sb.append("status: ");
            int i5 = 0;
            for (Long l2 : zziVar.zza()) {
                int i6 = i5 + 1;
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i5 = i6;
            }
            sb.append('\n');
        }
        if (zziVar.zzf() != 0) {
            zza(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i7 = 0;
            for (zzbr.zzb zzbVar : zziVar.zze()) {
                int i8 = i7 + 1;
                if (i7 != 0) {
                    sb.append(", ");
                }
                sb.append(zzbVar.zza() ? Integer.valueOf(zzbVar.zzb()) : null);
                sb.append(":");
                sb.append(zzbVar.zzc() ? Long.valueOf(zzbVar.zzd()) : null);
                i7 = i8;
            }
            sb.append("}\n");
        }
        if (zziVar.zzh() != 0) {
            zza(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i9 = 0;
            for (zzbr.zzj zzjVar : zziVar.zzg()) {
                int i10 = i9 + 1;
                if (i9 != 0) {
                    sb.append(", ");
                }
                sb.append(zzjVar.zza() ? Integer.valueOf(zzjVar.zzb()) : null);
                sb.append(": [");
                Iterator<Long> it = zzjVar.zzc().iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    long jLongValue = it.next().longValue();
                    int i12 = i11 + 1;
                    if (i11 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i11 = i12;
                }
                sb.append("]");
                i9 = i10;
            }
            sb.append("}\n");
        }
        zza(sb, 3);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i2, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zza(sb, i2 + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    static boolean zza(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    static boolean zza(List<Long> list, int i2) {
        if (i2 < (list.size() << 6)) {
            return ((1 << (i2 % 64)) & list.get(i2 / 64).longValue()) != 0;
        }
        return false;
    }

    static Object zzb(zzbr.zzc zzcVar, String str) {
        zzbr.zze zzeVarZza = zza(zzcVar, str);
        if (zzeVarZza == null) {
            return null;
        }
        if (zzeVarZza.zzb()) {
            return zzeVarZza.zzc();
        }
        if (zzeVarZza.zzd()) {
            return Long.valueOf(zzeVarZza.zze());
        }
        if (zzeVarZza.zzf()) {
            return Double.valueOf(zzeVarZza.zzg());
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzn e_() {
        return super.e_();
    }

    final long zza(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        zzp().zzd();
        MessageDigest messageDigestZzi = zzkm.zzi();
        if (messageDigestZzi != null) {
            return zzkm.zza(messageDigestZzi.digest(bArr));
        }
        zzr().zzf().zza("Failed to get MD5");
        return 0L;
    }

    final <T extends Parcelable> T zza(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return creator.createFromParcel(parcelObtain);
        } catch (SafeParcelReader.ParseException unused) {
            zzr().zzf().zza("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    final String zza(zzbj.zzb zzbVar) {
        if (zzbVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzbVar.zza()) {
            zza(sb, 0, "filter_id", Integer.valueOf(zzbVar.zzb()));
        }
        zza(sb, 0, "event_name", zzo().zza(zzbVar.zzc()));
        String strZza = zza(zzbVar.zzh(), zzbVar.zzi(), zzbVar.zzk());
        if (!strZza.isEmpty()) {
            zza(sb, 0, "filter_type", strZza);
        }
        zza(sb, 1, "event_count_filter", zzbVar.zzg());
        sb.append("  filters {\n");
        Iterator<zzbj.zzc> it = zzbVar.zzd().iterator();
        while (it.hasNext()) {
            zza(sb, 2, it.next());
        }
        zza(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    final String zza(zzbj.zze zzeVar) {
        if (zzeVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzeVar.zza()) {
            zza(sb, 0, "filter_id", Integer.valueOf(zzeVar.zzb()));
        }
        zza(sb, 0, "property_name", zzo().zzc(zzeVar.zzc()));
        String strZza = zza(zzeVar.zze(), zzeVar.zzf(), zzeVar.zzh());
        if (!strZza.isEmpty()) {
            zza(sb, 0, "filter_type", strZza);
        }
        zza(sb, 1, zzeVar.zzd());
        sb.append("}\n");
        return sb.toString();
    }

    final String zza(zzbr.zzf zzfVar) {
        List<zzbr.zze> listZza;
        if (zzfVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (zzbr.zzg zzgVar : zzfVar.zza()) {
            if (zzgVar != null) {
                zza(sb, 1);
                sb.append("bundle {\n");
                if (zzgVar.zza()) {
                    zza(sb, 1, "protocol_version", Integer.valueOf(zzgVar.zzb()));
                }
                zza(sb, 1, "platform", zzgVar.zzq());
                if (zzgVar.zzz()) {
                    zza(sb, 1, "gmp_version", Long.valueOf(zzgVar.zzaa()));
                }
                if (zzgVar.zzab()) {
                    zza(sb, 1, "uploading_gmp_version", Long.valueOf(zzgVar.zzac()));
                }
                if (zzgVar.zzbc()) {
                    zza(sb, 1, "dynamite_version", Long.valueOf(zzgVar.zzbd()));
                }
                if (zzgVar.zzau()) {
                    zza(sb, 1, "config_version", Long.valueOf(zzgVar.zzav()));
                }
                zza(sb, 1, "gmp_app_id", zzgVar.zzam());
                zza(sb, 1, "admob_app_id", zzgVar.zzbb());
                zza(sb, 1, "app_id", zzgVar.zzx());
                zza(sb, 1, "app_version", zzgVar.zzy());
                if (zzgVar.zzar()) {
                    zza(sb, 1, "app_version_major", Integer.valueOf(zzgVar.zzas()));
                }
                zza(sb, 1, "firebase_instance_id", zzgVar.zzaq());
                if (zzgVar.zzah()) {
                    zza(sb, 1, "dev_cert_hash", Long.valueOf(zzgVar.zzai()));
                }
                zza(sb, 1, "app_store", zzgVar.zzw());
                if (zzgVar.zzg()) {
                    zza(sb, 1, "upload_timestamp_millis", Long.valueOf(zzgVar.zzh()));
                }
                if (zzgVar.zzi()) {
                    zza(sb, 1, "start_timestamp_millis", Long.valueOf(zzgVar.zzj()));
                }
                if (zzgVar.zzk()) {
                    zza(sb, 1, "end_timestamp_millis", Long.valueOf(zzgVar.zzl()));
                }
                if (zzgVar.zzm()) {
                    zza(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzgVar.zzn()));
                }
                if (zzgVar.zzo()) {
                    zza(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzgVar.zzp()));
                }
                zza(sb, 1, "app_instance_id", zzgVar.zzag());
                zza(sb, 1, "resettable_device_id", zzgVar.zzad());
                zza(sb, 1, "device_id", zzgVar.zzat());
                zza(sb, 1, "ds_id", zzgVar.zzay());
                if (zzgVar.zzae()) {
                    zza(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzgVar.zzaf()));
                }
                zza(sb, 1, "os_version", zzgVar.zzr());
                zza(sb, 1, "device_model", zzgVar.zzs());
                zza(sb, 1, "user_default_language", zzgVar.zzt());
                if (zzgVar.zzu()) {
                    zza(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzgVar.zzv()));
                }
                if (zzgVar.zzaj()) {
                    zza(sb, 1, "bundle_sequential_index", Integer.valueOf(zzgVar.zzak()));
                }
                if (zzgVar.zzan()) {
                    zza(sb, 1, "service_upload", Boolean.valueOf(zzgVar.zzao()));
                }
                zza(sb, 1, "health_monitor", zzgVar.zzal());
                if (zzgVar.zzaw() && zzgVar.zzax() != 0) {
                    zza(sb, 1, "android_id", Long.valueOf(zzgVar.zzax()));
                }
                if (zzgVar.zzaz()) {
                    zza(sb, 1, "retry_counter", Integer.valueOf(zzgVar.zzba()));
                }
                List<zzbr.zzk> listZze = zzgVar.zze();
                if (listZze != null) {
                    for (zzbr.zzk zzkVar : listZze) {
                        if (zzkVar != null) {
                            zza(sb, 2);
                            sb.append("user_property {\n");
                            zza(sb, 2, "set_timestamp_millis", zzkVar.zza() ? Long.valueOf(zzkVar.zzb()) : null);
                            zza(sb, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, zzo().zzc(zzkVar.zzc()));
                            zza(sb, 2, "string_value", zzkVar.zze());
                            zza(sb, 2, "int_value", zzkVar.zzf() ? Long.valueOf(zzkVar.zzg()) : null);
                            zza(sb, 2, "double_value", zzkVar.zzh() ? Double.valueOf(zzkVar.zzi()) : null);
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzbr.zza> listZzap = zzgVar.zzap();
                String strZzx = zzgVar.zzx();
                if (listZzap != null) {
                    for (zzbr.zza zzaVar : listZzap) {
                        if (zzaVar != null) {
                            zza(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzaVar.zza()) {
                                zza(sb, 2, "audience_id", Integer.valueOf(zzaVar.zzb()));
                            }
                            if (zzaVar.zzf()) {
                                zza(sb, 2, "new_audience", Boolean.valueOf(zzaVar.zzg()));
                            }
                            zza(sb, 2, "current_data", zzaVar.zzc(), strZzx);
                            zza(sb, 2, "previous_data", zzaVar.zze(), strZzx);
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzbr.zzc> listZzc = zzgVar.zzc();
                if (listZzc != null) {
                    for (zzbr.zzc zzcVar : listZzc) {
                        if (zzcVar != null) {
                            zza(sb, 2);
                            sb.append("event {\n");
                            zza(sb, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, zzo().zza(zzcVar.zzc()));
                            if (zzcVar.zzd()) {
                                zza(sb, 2, "timestamp_millis", Long.valueOf(zzcVar.zze()));
                            }
                            if (zzcVar.zzf()) {
                                zza(sb, 2, "previous_timestamp_millis", Long.valueOf(zzcVar.zzg()));
                            }
                            if (zzcVar.zzh()) {
                                zza(sb, 2, "count", Integer.valueOf(zzcVar.zzi()));
                            }
                            if (zzcVar.zzb() != 0 && (listZza = zzcVar.zza()) != null) {
                                for (zzbr.zze zzeVar : listZza) {
                                    if (zzeVar != null) {
                                        zza(sb, 3);
                                        sb.append("param {\n");
                                        zza(sb, 3, AppMeasurementSdk.ConditionalUserProperty.NAME, zzo().zzb(zzeVar.zza()));
                                        zza(sb, 3, "string_value", zzeVar.zzc());
                                        zza(sb, 3, "int_value", zzeVar.zzd() ? Long.valueOf(zzeVar.zze()) : null);
                                        zza(sb, 3, "double_value", zzeVar.zzf() ? Double.valueOf(zzeVar.zzg()) : null);
                                        zza(sb, 3);
                                        sb.append("}\n");
                                    }
                                }
                            }
                            zza(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                zza(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    final List<Long> zza(List<Long> list, List<Integer> list2) {
        int i2;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                zzr().zzi().zza("Ignoring negative bit index to be cleared", num);
            } else {
                int iIntValue = num.intValue() / 64;
                if (iIntValue >= arrayList.size()) {
                    zzr().zzi().zza("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(iIntValue, Long.valueOf(((Long) arrayList.get(iIntValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i3 = size2;
            i2 = size;
            size = i3;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i2);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    final void zza(zzbr.zze.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zza().zzb().zzc();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
        } else {
            zzr().zzf().zza("Ignoring invalid (type) event param value", obj);
        }
    }

    final void zza(zzbr.zzk.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zza().zzb().zzc();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zzb(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
        } else {
            zzr().zzf().zza("Ignoring invalid (type) user attribute value", obj);
        }
    }

    final boolean zza(long j2, long j3) {
        return j2 == 0 || j3 <= 0 || Math.abs(zzm().currentTimeMillis() - j2) > j3;
    }

    final boolean zza(zzan zzanVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzanVar);
        Preconditions.checkNotNull(zzmVar);
        if (com.google.android.gms.internal.measurement.zzji.zzb() && zzt().zza(zzap.zzcj)) {
            return (TextUtils.isEmpty(zzmVar.zzb) && TextUtils.isEmpty(zzmVar.zzr)) ? false : true;
        }
        if (!TextUtils.isEmpty(zzmVar.zzb) || !TextUtils.isEmpty(zzmVar.zzr)) {
            return true;
        }
        zzu();
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    final byte[] zzb(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i2 = gZIPInputStream.read(bArr2);
                if (i2 <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, i2);
            }
        } catch (IOException e2) {
            zzr().zzf().zza("Failed to ungzip content", e2);
            throw e2;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    final byte[] zzc(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            zzr().zzf().zza("Failed to gzip content", e2);
            throw e2;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }

    final List<Integer> zzf() {
        Map<String, String> mapZza = zzap.zza(this.zza.zzn());
        if (mapZza == null || mapZza.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iIntValue = zzap.zzam.zza(null).intValue();
        for (Map.Entry<String, String> entry : mapZza.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int i2 = Integer.parseInt(entry.getValue());
                    if (i2 != 0) {
                        arrayList.add(Integer.valueOf(i2));
                        if (arrayList.size() >= iIntValue) {
                            zzr().zzi().zza("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e2) {
                    zzr().zzi().zza("Experiment ID NumberFormatException", e2);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzki zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzac zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzfu zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
