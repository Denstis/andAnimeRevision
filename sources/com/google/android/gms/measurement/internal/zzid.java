package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzle;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzid extends zzkb {
    public zzid(zzke zzkeVar) {
        super(zzkeVar);
    }

    private static String zza(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }

    public final byte[] zza(zzan zzanVar, String str) {
        String strZzf;
        String strZze;
        zzkn next;
        zzg zzgVar;
        zzbr.zzg.zza zzaVar;
        zzbr.zzf.zza zzaVar2;
        Bundle bundle;
        byte[] bArr;
        long j2;
        zzaj zzajVarZza;
        zzd();
        this.zzx.zzae();
        Preconditions.checkNotNull(zzanVar);
        Preconditions.checkNotEmpty(str);
        if (!zzt().zze(str, zzap.zzbe)) {
            zzr().zzw().zza("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        }
        if (!"_iap".equals(zzanVar.zza) && !"_iapx".equals(zzanVar.zza)) {
            zzr().zzw().zza("Generating a payload for this event is not available. package_name, event_name", str, zzanVar.zza);
            return null;
        }
        zzbr.zzf.zza zzaVarZzb = zzbr.zzf.zzb();
        zzi().zzf();
        try {
            zzg zzgVarZzb = zzi().zzb(str);
            if (zzgVarZzb == null) {
                zzr().zzw().zza("Log and bundle not available. package_name", str);
                return new byte[0];
            }
            if (!zzgVarZzb.zzr()) {
                zzr().zzw().zza("Log and bundle disabled. package_name", str);
                return new byte[0];
            }
            zzbr.zzg.zza zzaVarZza = zzbr.zzg.zzbf().zza(1).zza("android");
            if (!TextUtils.isEmpty(zzgVarZzb.zzc())) {
                zzaVarZza.zzf(zzgVarZzb.zzc());
            }
            if (!TextUtils.isEmpty(zzgVarZzb.zzn())) {
                zzaVarZza.zze(zzgVarZzb.zzn());
            }
            if (!TextUtils.isEmpty(zzgVarZzb.zzl())) {
                zzaVarZza.zzg(zzgVarZzb.zzl());
            }
            if (zzgVarZzb.zzm() != -2147483648L) {
                zzaVarZza.zzh((int) zzgVarZzb.zzm());
            }
            zzaVarZza.zzf(zzgVarZzb.zzo()).zzk(zzgVarZzb.zzq());
            if (zzle.zzb() && zzt().zze(zzgVarZzb.zzc(), zzap.zzcc)) {
                if (!TextUtils.isEmpty(zzgVarZzb.zze())) {
                    strZze = zzgVarZzb.zze();
                    zzaVarZza.zzk(strZze);
                } else if (!TextUtils.isEmpty(zzgVarZzb.zzg())) {
                    zzaVarZza.zzp(zzgVarZzb.zzg());
                } else if (!TextUtils.isEmpty(zzgVarZzb.zzf())) {
                    strZzf = zzgVarZzb.zzf();
                    zzaVarZza.zzo(strZzf);
                }
            } else if (!TextUtils.isEmpty(zzgVarZzb.zze())) {
                strZze = zzgVarZzb.zze();
                zzaVarZza.zzk(strZze);
            } else if (!TextUtils.isEmpty(zzgVarZzb.zzf())) {
                strZzf = zzgVarZzb.zzf();
                zzaVarZza.zzo(strZzf);
            }
            zzaVarZza.zzh(zzgVarZzb.zzp());
            if (this.zzx.zzab() && zzt().zza(zzap.zza) && zzt().zzd(zzaVarZza.zzj())) {
                zzaVarZza.zzj();
                if (!TextUtils.isEmpty(null)) {
                    zzaVarZza.zzn(null);
                }
            }
            Pair<String, Boolean> pairZza = zzs().zza(zzgVarZzb.zzc());
            if (zzgVarZzb.zzaf() && pairZza != null && !TextUtils.isEmpty((CharSequence) pairZza.first)) {
                zzaVarZza.zzh(zza((String) pairZza.first, Long.toString(zzanVar.zzd)));
                if (pairZza.second != null) {
                    zzaVarZza.zza(((Boolean) pairZza.second).booleanValue());
                }
            }
            zzl().zzaa();
            zzbr.zzg.zza zzaVarZzc = zzaVarZza.zzc(Build.MODEL);
            zzl().zzaa();
            zzaVarZzc.zzb(Build.VERSION.RELEASE).zzf((int) zzl().zzf()).zzd(zzl().zzg());
            zzaVarZza.zzi(zza(zzgVarZzb.zzd(), Long.toString(zzanVar.zzd)));
            if (!TextUtils.isEmpty(zzgVarZzb.zzi())) {
                zzaVarZza.zzl(zzgVarZzb.zzi());
            }
            String strZzc = zzgVarZzb.zzc();
            List<zzkn> listZza = zzi().zza(strZzc);
            Iterator<zzkn> it = listZza.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if ("_lte".equals(next.zzc)) {
                    break;
                }
            }
            if (next == null || next.zze == null) {
                zzkn zzknVar = new zzkn(strZzc, "auto", "_lte", zzm().currentTimeMillis(), 0L);
                listZza.add(zzknVar);
                zzi().zza(zzknVar);
            }
            if (zzt().zze(strZzc, zzap.zzba)) {
                zzki zzkiVarZzg = zzg();
                zzkiVarZzg.zzr().zzx().zza("Checking account type status for ad personalization signals");
                if (zzkiVarZzg.zzl().zzj()) {
                    String strZzc2 = zzgVarZzb.zzc();
                    if (zzgVarZzb.zzaf() && zzkiVarZzg.zzj().zze(strZzc2)) {
                        zzkiVarZzg.zzr().zzw().zza("Turning off ad personalization due to account type");
                        Iterator<zzkn> it2 = listZza.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            if ("_npa".equals(it2.next().zzc)) {
                                it2.remove();
                                break;
                            }
                        }
                        listZza.add(new zzkn(strZzc2, "auto", "_npa", zzkiVarZzg.zzm().currentTimeMillis(), 1L));
                    }
                }
            }
            zzbr.zzk[] zzkVarArr = new zzbr.zzk[listZza.size()];
            for (int i2 = 0; i2 < listZza.size(); i2++) {
                zzbr.zzk.zza zzaVarZza2 = zzbr.zzk.zzj().zza(listZza.get(i2).zzc).zza(listZza.get(i2).zzd);
                zzg().zza(zzaVarZza2, listZza.get(i2).zze);
                zzkVarArr[i2] = (zzbr.zzk) ((com.google.android.gms.internal.measurement.zzfd) zzaVarZza2.zzu());
            }
            zzaVarZza.zzb(Arrays.asList(zzkVarArr));
            Bundle bundleZzb = zzanVar.zzb.zzb();
            bundleZzb.putLong("_c", 1L);
            zzr().zzw().zza("Marking in-app purchase as real-time");
            bundleZzb.putLong("_r", 1L);
            bundleZzb.putString("_o", zzanVar.zzc);
            if (zzp().zzf(zzaVarZza.zzj())) {
                zzp().zza(bundleZzb, "_dbg", (Object) 1L);
                zzp().zza(bundleZzb, "_r", (Object) 1L);
            }
            zzaj zzajVarZza2 = zzi().zza(str, zzanVar.zza);
            if (zzajVarZza2 == null) {
                zzgVar = zzgVarZzb;
                zzaVar = zzaVarZza;
                zzaVar2 = zzaVarZzb;
                bundle = bundleZzb;
                bArr = null;
                zzajVarZza = new zzaj(str, zzanVar.zza, 0L, 0L, zzanVar.zzd, 0L, null, null, null, null);
                j2 = 0;
            } else {
                zzgVar = zzgVarZzb;
                zzaVar = zzaVarZza;
                zzaVar2 = zzaVarZzb;
                bundle = bundleZzb;
                bArr = null;
                j2 = zzajVarZza2.zzf;
                zzajVarZza = zzajVarZza2.zza(zzanVar.zzd);
            }
            zzi().zza(zzajVarZza);
            zzak zzakVar = new zzak(this.zzx, zzanVar.zzc, str, zzanVar.zza, zzanVar.zzd, j2, bundle);
            zzbr.zzc.zza zzaVarZzb2 = zzbr.zzc.zzj().zza(zzakVar.zzc).zza(zzakVar.zzb).zzb(zzakVar.zzd);
            for (String str2 : zzakVar.zze) {
                zzbr.zze.zza zzaVarZza3 = zzbr.zze.zzh().zza(str2);
                zzg().zza(zzaVarZza3, zzakVar.zze.zza(str2));
                zzaVarZzb2.zza(zzaVarZza3);
            }
            zzbr.zzg.zza zzaVar3 = zzaVar;
            zzaVar3.zza(zzaVarZzb2).zza(zzbr.zzh.zza().zza(zzbr.zzd.zza().zza(zzajVarZza.zzc).zza(zzanVar.zza)));
            zzaVar3.zzc(e_().zza(zzgVar.zzc(), Collections.emptyList(), zzaVar3.zzd(), Long.valueOf(zzaVarZzb2.zzf())));
            if (zzaVarZzb2.zze()) {
                zzaVar3.zzb(zzaVarZzb2.zzf()).zzc(zzaVarZzb2.zzf());
            }
            long jZzk = zzgVar.zzk();
            if (jZzk != 0) {
                zzaVar3.zze(jZzk);
            }
            long jZzj = zzgVar.zzj();
            if (jZzj != 0) {
                zzaVar3.zzd(jZzj);
            } else if (jZzk != 0) {
                zzaVar3.zzd(jZzk);
            }
            zzgVar.zzv();
            zzaVar3.zzg((int) zzgVar.zzs()).zzg(zzt().zze()).zza(zzm().currentTimeMillis()).zzb(Boolean.TRUE.booleanValue());
            zzbr.zzf.zza zzaVar4 = zzaVar2;
            zzaVar4.zza(zzaVar3);
            zzg zzgVar2 = zzgVar;
            zzgVar2.zza(zzaVar3.zzf());
            zzgVar2.zzb(zzaVar3.zzg());
            zzi().zza(zzgVar2);
            zzi().b_();
            try {
                return zzg().zzc(((zzbr.zzf) ((com.google.android.gms.internal.measurement.zzfd) zzaVar4.zzu())).zzbi());
            } catch (IOException e2) {
                zzr().zzf().zza("Data loss. Failed to bundle and serialize. appId", zzew.zza(str), e2);
                return bArr;
            }
        } catch (SecurityException e3) {
            zzr().zzw().zza("Resettable device id encryption failed", e3.getMessage());
            return new byte[0];
        } catch (SecurityException e4) {
            zzr().zzw().zza("app instance id encryption failed", e4.getMessage());
            return new byte[0];
        } finally {
            zzi().zzh();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }
}
