package b.q;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import b.q.n;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class r extends n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2967d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<n> f2965b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2966c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f2968e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2969f = 0;

    class a extends o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f2970a;

        a(r rVar, n nVar) {
            this.f2970a = nVar;
        }

        @Override // b.q.n.g
        public void c(n nVar) {
            this.f2970a.runAnimators();
            nVar.removeListener(this);
        }
    }

    static class b extends o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        r f2971a;

        b(r rVar) {
            this.f2971a = rVar;
        }

        @Override // b.q.o, b.q.n.g
        public void a(n nVar) {
            r rVar = this.f2971a;
            if (rVar.f2968e) {
                return;
            }
            rVar.start();
            this.f2971a.f2968e = true;
        }

        @Override // b.q.n.g
        public void c(n nVar) {
            r rVar = this.f2971a;
            rVar.f2967d--;
            if (rVar.f2967d == 0) {
                rVar.f2968e = false;
                rVar.end();
            }
            nVar.removeListener(this);
        }
    }

    private void b() {
        b bVar = new b(this);
        Iterator<n> it = this.f2965b.iterator();
        while (it.hasNext()) {
            it.next().addListener(bVar);
        }
        this.f2967d = this.f2965b.size();
    }

    public int a() {
        return this.f2965b.size();
    }

    public n a(int i2) {
        if (i2 < 0 || i2 >= this.f2965b.size()) {
            return null;
        }
        return this.f2965b.get(i2);
    }

    public r a(n nVar) {
        this.f2965b.add(nVar);
        nVar.mParent = this;
        long j2 = this.mDuration;
        if (j2 >= 0) {
            nVar.setDuration(j2);
        }
        if ((this.f2969f & 1) != 0) {
            nVar.setInterpolator(getInterpolator());
        }
        if ((this.f2969f & 2) != 0) {
            nVar.setPropagation(getPropagation());
        }
        if ((this.f2969f & 4) != 0) {
            nVar.setPathMotion(getPathMotion());
        }
        if ((this.f2969f & 8) != 0) {
            nVar.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    @Override // b.q.n
    public r addListener(n.g gVar) {
        return (r) super.addListener(gVar);
    }

    @Override // b.q.n
    public r addTarget(int i2) {
        for (int i3 = 0; i3 < this.f2965b.size(); i3++) {
            this.f2965b.get(i3).addTarget(i2);
        }
        return (r) super.addTarget(i2);
    }

    @Override // b.q.n
    public r addTarget(View view) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).addTarget(view);
        }
        return (r) super.addTarget(view);
    }

    @Override // b.q.n
    public r addTarget(Class cls) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).addTarget(cls);
        }
        return (r) super.addTarget(cls);
    }

    @Override // b.q.n
    public r addTarget(String str) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).addTarget(str);
        }
        return (r) super.addTarget(str);
    }

    public r b(int i2) {
        if (i2 == 0) {
            this.f2966c = true;
        } else {
            if (i2 != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i2);
            }
            this.f2966c = false;
        }
        return this;
    }

    @Override // b.q.n
    protected void cancel() {
        super.cancel();
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).cancel();
        }
    }

    @Override // b.q.n
    public void captureEndValues(t tVar) {
        if (isValidTarget(tVar.f2976b)) {
            for (n nVar : this.f2965b) {
                if (nVar.isValidTarget(tVar.f2976b)) {
                    nVar.captureEndValues(tVar);
                    tVar.f2977c.add(nVar);
                }
            }
        }
    }

    @Override // b.q.n
    void capturePropagationValues(t tVar) {
        super.capturePropagationValues(tVar);
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).capturePropagationValues(tVar);
        }
    }

    @Override // b.q.n
    public void captureStartValues(t tVar) {
        if (isValidTarget(tVar.f2976b)) {
            for (n nVar : this.f2965b) {
                if (nVar.isValidTarget(tVar.f2976b)) {
                    nVar.captureStartValues(tVar);
                    tVar.f2977c.add(nVar);
                }
            }
        }
    }

    @Override // b.q.n
    /* JADX INFO: renamed from: clone */
    public n mo3clone() {
        r rVar = (r) super.mo3clone();
        rVar.f2965b = new ArrayList<>();
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            rVar.a(this.f2965b.get(i2).mo3clone());
        }
        return rVar;
    }

    @Override // b.q.n
    protected void createAnimators(ViewGroup viewGroup, u uVar, u uVar2, ArrayList<t> arrayList, ArrayList<t> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            n nVar = this.f2965b.get(i2);
            if (startDelay > 0 && (this.f2966c || i2 == 0)) {
                long startDelay2 = nVar.getStartDelay();
                if (startDelay2 > 0) {
                    nVar.setStartDelay(startDelay2 + startDelay);
                } else {
                    nVar.setStartDelay(startDelay);
                }
            }
            nVar.createAnimators(viewGroup, uVar, uVar2, arrayList, arrayList2);
        }
    }

    @Override // b.q.n
    public n excludeTarget(int i2, boolean z) {
        for (int i3 = 0; i3 < this.f2965b.size(); i3++) {
            this.f2965b.get(i3).excludeTarget(i2, z);
        }
        return super.excludeTarget(i2, z);
    }

    @Override // b.q.n
    public n excludeTarget(View view, boolean z) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).excludeTarget(view, z);
        }
        return super.excludeTarget(view, z);
    }

    @Override // b.q.n
    public n excludeTarget(Class cls, boolean z) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).excludeTarget(cls, z);
        }
        return super.excludeTarget(cls, z);
    }

    @Override // b.q.n
    public n excludeTarget(String str, boolean z) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).excludeTarget(str, z);
        }
        return super.excludeTarget(str, z);
    }

    @Override // b.q.n
    void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).forceToEnd(viewGroup);
        }
    }

    @Override // b.q.n
    public void pause(View view) {
        super.pause(view);
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).pause(view);
        }
    }

    @Override // b.q.n
    public r removeListener(n.g gVar) {
        return (r) super.removeListener(gVar);
    }

    @Override // b.q.n
    public r removeTarget(int i2) {
        for (int i3 = 0; i3 < this.f2965b.size(); i3++) {
            this.f2965b.get(i3).removeTarget(i2);
        }
        return (r) super.removeTarget(i2);
    }

    @Override // b.q.n
    public r removeTarget(View view) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).removeTarget(view);
        }
        return (r) super.removeTarget(view);
    }

    @Override // b.q.n
    public r removeTarget(Class cls) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).removeTarget(cls);
        }
        return (r) super.removeTarget(cls);
    }

    @Override // b.q.n
    public r removeTarget(String str) {
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).removeTarget(str);
        }
        return (r) super.removeTarget(str);
    }

    @Override // b.q.n
    public void resume(View view) {
        super.resume(view);
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).resume(view);
        }
    }

    @Override // b.q.n
    protected void runAnimators() {
        if (this.f2965b.isEmpty()) {
            start();
            end();
            return;
        }
        b();
        if (this.f2966c) {
            Iterator<n> it = this.f2965b.iterator();
            while (it.hasNext()) {
                it.next().runAnimators();
            }
            return;
        }
        for (int i2 = 1; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2 - 1).addListener(new a(this, this.f2965b.get(i2)));
        }
        n nVar = this.f2965b.get(0);
        if (nVar != null) {
            nVar.runAnimators();
        }
    }

    @Override // b.q.n
    void setCanRemoveViews(boolean z) {
        super.setCanRemoveViews(z);
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).setCanRemoveViews(z);
        }
    }

    @Override // b.q.n
    public /* bridge */ /* synthetic */ n setDuration(long j2) {
        setDuration(j2);
        return this;
    }

    @Override // b.q.n
    public r setDuration(long j2) {
        super.setDuration(j2);
        if (this.mDuration >= 0) {
            int size = this.f2965b.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f2965b.get(i2).setDuration(j2);
            }
        }
        return this;
    }

    @Override // b.q.n
    public void setEpicenterCallback(n.f fVar) {
        super.setEpicenterCallback(fVar);
        this.f2969f |= 8;
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).setEpicenterCallback(fVar);
        }
    }

    @Override // b.q.n
    public r setInterpolator(TimeInterpolator timeInterpolator) {
        this.f2969f |= 1;
        ArrayList<n> arrayList = this.f2965b;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f2965b.get(i2).setInterpolator(timeInterpolator);
            }
        }
        return (r) super.setInterpolator(timeInterpolator);
    }

    @Override // b.q.n
    public void setPathMotion(g gVar) {
        super.setPathMotion(gVar);
        this.f2969f |= 4;
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            this.f2965b.get(i2).setPathMotion(gVar);
        }
    }

    @Override // b.q.n
    public void setPropagation(q qVar) {
        super.setPropagation(qVar);
        this.f2969f |= 2;
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).setPropagation(qVar);
        }
    }

    @Override // b.q.n
    /* bridge */ /* synthetic */ n setSceneRoot(ViewGroup viewGroup) {
        setSceneRoot(viewGroup);
        return this;
    }

    @Override // b.q.n
    r setSceneRoot(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int size = this.f2965b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2965b.get(i2).setSceneRoot(viewGroup);
        }
        return this;
    }

    @Override // b.q.n
    public r setStartDelay(long j2) {
        return (r) super.setStartDelay(j2);
    }

    @Override // b.q.n
    String toString(String str) {
        String string = super.toString(str);
        for (int i2 = 0; i2 < this.f2965b.size(); i2++) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append("\n");
            sb.append(this.f2965b.get(i2).toString(str + "  "));
            string = sb.toString();
        }
        return string;
    }
}
