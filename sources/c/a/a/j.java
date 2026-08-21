package c.a.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class j<TranscodeType> extends c.a.a.r.a<j<TranscodeType>> implements Cloneable, g<j<TranscodeType>> {
    private final Context B;
    private final k C;
    private final Class<TranscodeType> D;
    private final e E;
    private l<?, ? super TranscodeType> F;
    private Object G;
    private List<c.a.a.r.e<TranscodeType>> H;
    private j<TranscodeType> I;
    private j<TranscodeType> J;
    private Float K;
    private boolean L = true;
    private boolean M;
    private boolean N;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3119a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f3120b = new int[h.values().length];

        static {
            try {
                f3120b[h.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3120b[h.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3120b[h.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3120b[h.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f3119a = new int[ImageView.ScaleType.values().length];
            try {
                f3119a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3119a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3119a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3119a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3119a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3119a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3119a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f3119a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
        new c.a.a.r.f().a(com.bumptech.glide.load.n.j.f3588b).a(h.LOW).a(true);
    }

    @SuppressLint({"CheckResult"})
    protected j(c cVar, k kVar, Class<TranscodeType> cls, Context context) {
        this.C = kVar;
        this.D = cls;
        this.B = context;
        this.F = kVar.b(cls);
        this.E = cVar.f();
        a(kVar.d());
        a((c.a.a.r.a<?>) kVar.e());
    }

    private c.a.a.r.c a(c.a.a.r.j.h<TranscodeType> hVar, c.a.a.r.e<TranscodeType> eVar, c.a.a.r.a<?> aVar, c.a.a.r.d dVar, l<?, ? super TranscodeType> lVar, h hVar2, int i2, int i3, Executor executor) {
        Context context = this.B;
        e eVar2 = this.E;
        return c.a.a.r.h.b(context, eVar2, this.G, this.D, aVar, i2, i3, hVar2, hVar, eVar, this.H, dVar, eVar2.d(), lVar.a(), executor);
    }

    private c.a.a.r.c a(c.a.a.r.j.h<TranscodeType> hVar, c.a.a.r.e<TranscodeType> eVar, c.a.a.r.a<?> aVar, Executor executor) {
        return a(hVar, eVar, (c.a.a.r.d) null, this.F, aVar.q(), aVar.n(), aVar.m(), aVar, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private c.a.a.r.c a(c.a.a.r.j.h<TranscodeType> hVar, c.a.a.r.e<TranscodeType> eVar, c.a.a.r.d dVar, l<?, ? super TranscodeType> lVar, h hVar2, int i2, int i3, c.a.a.r.a<?> aVar, Executor executor) {
        c.a.a.r.d dVar2;
        c.a.a.r.d bVar;
        if (this.J != null) {
            bVar = new c.a.a.r.b(dVar);
            dVar2 = bVar;
        } else {
            dVar2 = null;
            bVar = dVar;
        }
        c.a.a.r.c cVarB = b(hVar, eVar, bVar, lVar, hVar2, i2, i3, aVar, executor);
        if (dVar2 == null) {
            return cVarB;
        }
        int iN = this.J.n();
        int iM = this.J.m();
        if (c.a.a.t.k.b(i2, i3) && !this.J.E()) {
            iN = aVar.n();
            iM = aVar.m();
        }
        j<TranscodeType> jVar = this.J;
        c.a.a.r.b bVar2 = dVar2;
        bVar2.a(cVarB, jVar.a(hVar, eVar, dVar2, jVar.F, jVar.q(), iN, iM, this.J, executor));
        return bVar2;
    }

    @SuppressLint({"CheckResult"})
    private void a(List<c.a.a.r.e<Object>> list) {
        Iterator<c.a.a.r.e<Object>> it = list.iterator();
        while (it.hasNext()) {
            a((c.a.a.r.e) it.next());
        }
    }

    private boolean a(c.a.a.r.a<?> aVar, c.a.a.r.c cVar) {
        return !aVar.y() && cVar.f();
    }

    private h b(h hVar) {
        int i2 = a.f3120b[hVar.ordinal()];
        if (i2 == 1) {
            return h.NORMAL;
        }
        if (i2 == 2) {
            return h.HIGH;
        }
        if (i2 == 3 || i2 == 4) {
            return h.IMMEDIATE;
        }
        throw new IllegalArgumentException("unknown priority: " + q());
    }

    private j<TranscodeType> b(Object obj) {
        this.G = obj;
        this.M = true;
        return this;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private c.a.a.r.c b(c.a.a.r.j.h<TranscodeType> hVar, c.a.a.r.e<TranscodeType> eVar, c.a.a.r.d dVar, l<?, ? super TranscodeType> lVar, h hVar2, int i2, int i3, c.a.a.r.a<?> aVar, Executor executor) {
        j<TranscodeType> jVar = this.I;
        if (jVar == null) {
            if (this.K == null) {
                return a(hVar, eVar, aVar, dVar, lVar, hVar2, i2, i3, executor);
            }
            c.a.a.r.i iVar = new c.a.a.r.i(dVar);
            iVar.a(a(hVar, eVar, aVar, iVar, lVar, hVar2, i2, i3, executor), a(hVar, eVar, aVar.mo4clone().a(this.K.floatValue()), iVar, lVar, b(hVar2), i2, i3, executor));
            return iVar;
        }
        if (this.N) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        l<?, ? super TranscodeType> lVar2 = jVar.L ? lVar : jVar.F;
        h hVarQ = this.I.z() ? this.I.q() : b(hVar2);
        int iN = this.I.n();
        int iM = this.I.m();
        if (c.a.a.t.k.b(i2, i3) && !this.I.E()) {
            iN = aVar.n();
            iM = aVar.m();
        }
        int i4 = iN;
        int i5 = iM;
        c.a.a.r.i iVar2 = new c.a.a.r.i(dVar);
        c.a.a.r.c cVarA = a(hVar, eVar, aVar, iVar2, lVar, hVar2, i2, i3, executor);
        this.N = true;
        j jVar2 = (j<TranscodeType>) this.I;
        c.a.a.r.c cVarA2 = jVar2.a(hVar, eVar, iVar2, lVar2, hVarQ, i4, i5, jVar2, executor);
        this.N = false;
        iVar2.a(cVarA, cVarA2);
        return iVar2;
    }

    private <Y extends c.a.a.r.j.h<TranscodeType>> Y b(Y y, c.a.a.r.e<TranscodeType> eVar, c.a.a.r.a<?> aVar, Executor executor) {
        c.a.a.t.j.a(y);
        if (!this.M) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        c.a.a.r.c cVarA = a(y, eVar, aVar, executor);
        c.a.a.r.c cVarA2 = y.a();
        if (!cVarA.a(cVarA2) || a(aVar, cVarA2)) {
            this.C.a((c.a.a.r.j.h<?>) y);
            y.a(cVarA);
            this.C.a(y, cVarA);
            return y;
        }
        cVarA.a();
        c.a.a.t.j.a(cVarA2);
        if (!cVarA2.isRunning()) {
            cVarA2.begin();
        }
        return y;
    }

    @Override // c.a.a.r.a
    public j<TranscodeType> a(c.a.a.r.a<?> aVar) {
        c.a.a.t.j.a(aVar);
        return (j) super.a(aVar);
    }

    public j<TranscodeType> a(c.a.a.r.e<TranscodeType> eVar) {
        if (eVar != null) {
            if (this.H == null) {
                this.H = new ArrayList();
            }
            this.H.add(eVar);
        }
        return this;
    }

    public j<TranscodeType> a(Object obj) {
        b(obj);
        return this;
    }

    public j<TranscodeType> a(String str) {
        b(str);
        return this;
    }

    @Override // c.a.a.r.a
    public /* bridge */ /* synthetic */ c.a.a.r.a a(c.a.a.r.a aVar) {
        return a((c.a.a.r.a<?>) aVar);
    }

    public <Y extends c.a.a.r.j.h<TranscodeType>> Y a(Y y) {
        a(y, (c.a.a.r.e) null, c.a.a.t.e.b());
        return y;
    }

    <Y extends c.a.a.r.j.h<TranscodeType>> Y a(Y y, c.a.a.r.e<TranscodeType> eVar, Executor executor) {
        b(y, eVar, this, executor);
        return y;
    }

    public c.a.a.r.j.i<ImageView, TranscodeType> a(ImageView imageView) {
        c.a.a.r.a aVarG;
        c.a.a.t.k.a();
        c.a.a.t.j.a(imageView);
        if (!D() && B() && imageView.getScaleType() != null) {
            switch (a.f3119a[imageView.getScaleType().ordinal()]) {
                case 1:
                    aVarG = mo4clone().G();
                    break;
                case 2:
                case 6:
                    aVarG = mo4clone().H();
                    break;
                case 3:
                case 4:
                case 5:
                    aVarG = mo4clone().I();
                    break;
                default:
                    aVarG = this;
                    break;
            }
        } else {
            aVarG = this;
        }
        c.a.a.r.j.i<ImageView, TranscodeType> iVarA = this.E.a(imageView, this.D);
        b(iVarA, null, aVarG, c.a.a.t.e.b());
        return iVarA;
    }

    public j<TranscodeType> b(c.a.a.r.e<TranscodeType> eVar) {
        this.H = null;
        a((c.a.a.r.e) eVar);
        return this;
    }

    @Override // c.a.a.r.a
    /* JADX INFO: renamed from: clone */
    public j<TranscodeType> mo4clone() {
        j<TranscodeType> jVar = (j) super.mo4clone();
        jVar.F = jVar.F.m5clone();
        return jVar;
    }
}
