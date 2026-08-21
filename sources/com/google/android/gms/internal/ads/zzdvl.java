package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class zzdvl implements zzbe, Closeable, Iterator<zzbb> {
    protected zzdvn zzhwt;
    protected zzba zzhww;
    private static final zzbb zzhwv = new zzdvo("eof ");
    private static zzdvt zzcp = zzdvt.zzn(zzdvl.class);
    private zzbb zzhwx = null;
    long zzhwy = 0;
    long zzbch = 0;
    long zzaqu = 0;
    private List<zzbb> zzhwz = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Iterator
    /* JADX INFO: renamed from: zzbdd, reason: merged with bridge method [inline-methods] */
    public final zzbb next() {
        zzbb zzbbVarZza;
        zzbb zzbbVar = this.zzhwx;
        if (zzbbVar != null && zzbbVar != zzhwv) {
            this.zzhwx = null;
            return zzbbVar;
        }
        zzdvn zzdvnVar = this.zzhwt;
        if (zzdvnVar == null || this.zzhwy >= this.zzaqu) {
            this.zzhwx = zzhwv;
            throw new NoSuchElementException();
        }
        try {
            synchronized (zzdvnVar) {
                this.zzhwt.zzew(this.zzhwy);
                zzbbVarZza = this.zzhww.zza(this.zzhwt, this);
                this.zzhwy = this.zzhwt.position();
            }
            return zzbbVarZza;
        } catch (EOFException unused) {
            throw new NoSuchElementException();
        } catch (IOException unused2) {
            throw new NoSuchElementException();
        }
    }

    public void close() {
        this.zzhwt.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        zzbb zzbbVar = this.zzhwx;
        if (zzbbVar == zzhwv) {
            return false;
        }
        if (zzbbVar != null) {
            return true;
        }
        try {
            this.zzhwx = (zzbb) next();
            return true;
        } catch (NoSuchElementException unused) {
            this.zzhwx = zzhwv;
            return false;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i2 = 0; i2 < this.zzhwz.size(); i2++) {
            if (i2 > 0) {
                sb.append(";");
            }
            sb.append(this.zzhwz.get(i2).toString());
        }
        sb.append("]");
        return sb.toString();
    }

    public void zza(zzdvn zzdvnVar, long j2, zzba zzbaVar) {
        this.zzhwt = zzdvnVar;
        long jPosition = zzdvnVar.position();
        this.zzbch = jPosition;
        this.zzhwy = jPosition;
        zzdvnVar.zzew(zzdvnVar.position() + j2);
        this.zzaqu = zzdvnVar.position();
        this.zzhww = zzbaVar;
    }

    public final List<zzbb> zzbdc() {
        return (this.zzhwt == null || this.zzhwx == zzhwv) ? this.zzhwz : new zzdvr(this.zzhwz, this);
    }
}
