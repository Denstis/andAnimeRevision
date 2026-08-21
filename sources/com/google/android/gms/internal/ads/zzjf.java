package com.google.android.gms.internal.ads;

import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
final class zzjf implements zzjk {
    private final byte[] zzana = new byte[8];
    private final Stack<zzjh> zzanb = new Stack<>();
    private final zzjp zzanc = new zzjp();
    private zzjj zzand;
    private int zzane;
    private int zzanf;
    private long zzang;

    zzjf() {
    }

    private final long zza(zziv zzivVar, int i2) {
        zzivVar.readFully(this.zzana, 0, i2);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = (j2 << 8) | ((long) (this.zzana[i3] & 255));
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzjk
    public final void reset() {
        this.zzane = 0;
        this.zzanb.clear();
        this.zzanc.reset();
    }

    @Override // com.google.android.gms.internal.ads.zzjk
    public final void zza(zzjj zzjjVar) {
        this.zzand = zzjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjk
    public final boolean zzb(zziv zzivVar) throws zzgv {
        String str;
        int iZzaj;
        int iZza;
        zznr.checkState(this.zzand != null);
        while (true) {
            if (!this.zzanb.isEmpty() && zzivVar.getPosition() >= this.zzanb.peek().zzanj) {
                this.zzand.zzai(this.zzanb.pop().zzanf);
                return true;
            }
            if (this.zzane == 0) {
                long jZza = this.zzanc.zza(zzivVar, true, false, 4);
                if (jZza == -2) {
                    zzivVar.zzgb();
                    while (true) {
                        zzivVar.zza(this.zzana, 0, 4);
                        iZzaj = zzjp.zzaj(this.zzana[0]);
                        if (iZzaj != -1 && iZzaj <= 4) {
                            iZza = (int) zzjp.zza(this.zzana, iZzaj, false);
                            if (this.zzand.zzah(iZza)) {
                                break;
                            }
                        }
                        zzivVar.zzab(1);
                    }
                    zzivVar.zzab(iZzaj);
                    jZza = iZza;
                }
                if (jZza == -1) {
                    return false;
                }
                this.zzanf = (int) jZza;
                this.zzane = 1;
            }
            if (this.zzane == 1) {
                this.zzang = this.zzanc.zza(zzivVar, false, true, 8);
                this.zzane = 2;
            }
            int iZzag = this.zzand.zzag(this.zzanf);
            if (iZzag != 0) {
                if (iZzag == 1) {
                    long position = zzivVar.getPosition();
                    this.zzanb.add(new zzjh(this.zzanf, this.zzang + position));
                    this.zzand.zzd(this.zzanf, position, this.zzang);
                    this.zzane = 0;
                    return true;
                }
                if (iZzag == 2) {
                    long j2 = this.zzang;
                    if (j2 <= 8) {
                        this.zzand.zzc(this.zzanf, zza(zzivVar, (int) j2));
                        this.zzane = 0;
                        return true;
                    }
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j2);
                    throw new zzgv(sb.toString());
                }
                if (iZzag == 3) {
                    long j3 = this.zzang;
                    if (j3 > 2147483647L) {
                        StringBuilder sb2 = new StringBuilder(41);
                        sb2.append("String element size: ");
                        sb2.append(j3);
                        throw new zzgv(sb2.toString());
                    }
                    zzjj zzjjVar = this.zzand;
                    int i2 = this.zzanf;
                    int i3 = (int) j3;
                    if (i3 == 0) {
                        str = "";
                    } else {
                        byte[] bArr = new byte[i3];
                        zzivVar.readFully(bArr, 0, i3);
                        str = new String(bArr);
                    }
                    zzjjVar.zza(i2, str);
                    this.zzane = 0;
                    return true;
                }
                if (iZzag == 4) {
                    this.zzand.zza(this.zzanf, (int) this.zzang, zzivVar);
                    this.zzane = 0;
                    return true;
                }
                if (iZzag != 5) {
                    StringBuilder sb3 = new StringBuilder(32);
                    sb3.append("Invalid element type ");
                    sb3.append(iZzag);
                    throw new zzgv(sb3.toString());
                }
                long j4 = this.zzang;
                if (j4 != 4 && j4 != 8) {
                    StringBuilder sb4 = new StringBuilder(40);
                    sb4.append("Invalid float size: ");
                    sb4.append(j4);
                    throw new zzgv(sb4.toString());
                }
                zzjj zzjjVar2 = this.zzand;
                int i4 = this.zzanf;
                int i5 = (int) this.zzang;
                zzjjVar2.zza(i4, i5 == 4 ? Float.intBitsToFloat((int) r7) : Double.longBitsToDouble(zza(zzivVar, i5)));
                this.zzane = 0;
                return true;
            }
            zzivVar.zzab((int) this.zzang);
            this.zzane = 0;
        }
    }
}
