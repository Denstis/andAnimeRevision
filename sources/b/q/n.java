package b.q;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public abstract class n implements Cloneable {
    static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private ArrayList<t> mEndValuesList;
    private f mEpicenterCallback;
    private b.e.a<String, String> mNameOverrides;
    q mPropagation;
    private ArrayList<t> mStartValuesList;
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final b.q.g STRAIGHT_PATH_MOTION = new a();
    private static ThreadLocal<b.e.a<Animator, d>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    ArrayList<Integer> mTargetIds = new ArrayList<>();
    ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class> mTargetTypeChildExcludes = null;
    private u mStartValues = new u();
    private u mEndValues = new u();
    r mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    private ViewGroup mSceneRoot = null;
    boolean mCanRemoveViews = false;
    ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private int mNumInstances = 0;
    private boolean mPaused = false;
    private boolean mEnded = false;
    private ArrayList<g> mListeners = null;
    private ArrayList<Animator> mAnimators = new ArrayList<>();
    private b.q.g mPathMotion = STRAIGHT_PATH_MOTION;

    static class a extends b.q.g {
        a() {
        }

        @Override // b.q.g
        public Path a(float f2, float f3, float f4, float f5) {
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            return path;
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b.e.a f2950a;

        b(b.e.a aVar) {
            this.f2950a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2950a.remove(animator);
            n.this.mCurrentAnimators.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            n.this.mCurrentAnimators.add(animator);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            n.this.end();
            animator.removeListener(this);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f2953a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f2954b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        t f2955c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        m0 f2956d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        n f2957e;

        d(View view, String str, n nVar, m0 m0Var, t tVar) {
            this.f2953a = view;
            this.f2954b = str;
            this.f2955c = tVar;
            this.f2956d = m0Var;
            this.f2957e = nVar;
        }
    }

    private static class e {
        static <T> ArrayList<T> a(ArrayList<T> arrayList, T t) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.contains(t)) {
                arrayList.add(t);
            }
            return arrayList;
        }

        static <T> ArrayList<T> b(ArrayList<T> arrayList, T t) {
            if (arrayList == null) {
                return arrayList;
            }
            arrayList.remove(t);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }
    }

    public static abstract class f {
        public abstract Rect a(n nVar);
    }

    public interface g {
        void a(n nVar);

        void b(n nVar);

        void c(n nVar);

        void d(n nVar);

        void e(n nVar);
    }

    public n() {
    }

    public n(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.f2949a);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long jB = androidx.core.content.c.g.b(typedArrayObtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (jB >= 0) {
            setDuration(jB);
        }
        long jB2 = androidx.core.content.c.g.b(typedArrayObtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (jB2 > 0) {
            setStartDelay(jB2);
        }
        int iC = androidx.core.content.c.g.c(typedArrayObtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (iC > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, iC));
        }
        String strA = androidx.core.content.c.g.a(typedArrayObtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (strA != null) {
            setMatchOrder(parseMatchOrder(strA));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void addUnmatched(b.e.a<View, t> aVar, b.e.a<View, t> aVar2) {
        for (int i2 = 0; i2 < aVar.size(); i2++) {
            t tVarD = aVar.d(i2);
            if (isValidTarget(tVarD.f2976b)) {
                this.mStartValuesList.add(tVarD);
                this.mEndValuesList.add(null);
            }
        }
        for (int i3 = 0; i3 < aVar2.size(); i3++) {
            t tVarD2 = aVar2.d(i3);
            if (isValidTarget(tVarD2.f2976b)) {
                this.mEndValuesList.add(tVarD2);
                this.mStartValuesList.add(null);
            }
        }
    }

    private static void addViewValues(u uVar, View view, t tVar) {
        uVar.f2978a.put(view, tVar);
        int id = view.getId();
        if (id >= 0) {
            if (uVar.f2979b.indexOfKey(id) >= 0) {
                uVar.f2979b.put(id, null);
            } else {
                uVar.f2979b.put(id, view);
            }
        }
        String strQ = b.h.o.s.q(view);
        if (strQ != null) {
            if (uVar.f2981d.containsKey(strQ)) {
                uVar.f2981d.put(strQ, null);
            } else {
                uVar.f2981d.put(strQ, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (uVar.f2980c.c(itemIdAtPosition) < 0) {
                    b.h.o.s.b(view, true);
                    uVar.f2980c.c(itemIdAtPosition, view);
                    return;
                }
                View viewB = uVar.f2980c.b(itemIdAtPosition);
                if (viewB != null) {
                    b.h.o.s.b(viewB, false);
                    uVar.f2980c.c(itemIdAtPosition, null);
                }
            }
        }
    }

    private static boolean alreadyContains(int[] iArr, int i2) {
        int i3 = iArr[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            if (iArr[i4] == i3) {
                return true;
            }
        }
        return false;
    }

    private void captureHierarchy(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.mTargetExcludes;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class> arrayList3 = this.mTargetTypeExcludes;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.mTargetTypeExcludes.get(i2).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    t tVar = new t();
                    tVar.f2976b = view;
                    if (z) {
                        captureStartValues(tVar);
                    } else {
                        captureEndValues(tVar);
                    }
                    tVar.f2977c.add(this);
                    capturePropagationValues(tVar);
                    addViewValues(z ? this.mStartValues : this.mEndValues, view, tVar);
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.mTargetChildExcludes;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class> arrayList6 = this.mTargetTypeChildExcludes;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i3 = 0; i3 < size2; i3++) {
                                    if (this.mTargetTypeChildExcludes.get(i3).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                                captureHierarchy(viewGroup.getChildAt(i4), z);
                            }
                        }
                    }
                }
            }
        }
    }

    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int i2, boolean z) {
        if (i2 <= 0) {
            return arrayList;
        }
        Integer numValueOf = Integer.valueOf(i2);
        return z ? e.a(arrayList, numValueOf) : e.b(arrayList, numValueOf);
    }

    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t, boolean z) {
        return t != null ? z ? e.a(arrayList, t) : e.b(arrayList, t) : arrayList;
    }

    private ArrayList<Class> excludeType(ArrayList<Class> arrayList, Class cls, boolean z) {
        return cls != null ? z ? e.a(arrayList, cls) : e.b(arrayList, cls) : arrayList;
    }

    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z) {
        return view != null ? z ? e.a(arrayList, view) : e.b(arrayList, view) : arrayList;
    }

    private static b.e.a<Animator, d> getRunningAnimators() {
        b.e.a<Animator, d> aVar = sRunningAnimators.get();
        if (aVar != null) {
            return aVar;
        }
        b.e.a<Animator, d> aVar2 = new b.e.a<>();
        sRunningAnimators.set(aVar2);
        return aVar2;
    }

    private static boolean isValidMatch(int i2) {
        return i2 >= 1 && i2 <= 4;
    }

    private static boolean isValueChanged(t tVar, t tVar2, String str) {
        Object obj = tVar.f2975a.get(str);
        Object obj2 = tVar2.f2975a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    private void matchIds(b.e.a<View, t> aVar, b.e.a<View, t> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            View viewValueAt = sparseArray.valueAt(i2);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i2))) != null && isValidTarget(view)) {
                t tVar = aVar.get(viewValueAt);
                t tVar2 = aVar2.get(view);
                if (tVar != null && tVar2 != null) {
                    this.mStartValuesList.add(tVar);
                    this.mEndValuesList.add(tVar2);
                    aVar.remove(viewValueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void matchInstances(b.e.a<View, t> aVar, b.e.a<View, t> aVar2) {
        t tVarRemove;
        View view;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewB = aVar.b(size);
            if (viewB != null && isValidTarget(viewB) && (tVarRemove = aVar2.remove(viewB)) != null && (view = tVarRemove.f2976b) != null && isValidTarget(view)) {
                this.mStartValuesList.add(aVar.c(size));
                this.mEndValuesList.add(tVarRemove);
            }
        }
    }

    private void matchItemIds(b.e.a<View, t> aVar, b.e.a<View, t> aVar2, b.e.d<View> dVar, b.e.d<View> dVar2) {
        View viewB;
        int iB = dVar.b();
        for (int i2 = 0; i2 < iB; i2++) {
            View viewC = dVar.c(i2);
            if (viewC != null && isValidTarget(viewC) && (viewB = dVar2.b(dVar.a(i2))) != null && isValidTarget(viewB)) {
                t tVar = aVar.get(viewC);
                t tVar2 = aVar2.get(viewB);
                if (tVar != null && tVar2 != null) {
                    this.mStartValuesList.add(tVar);
                    this.mEndValuesList.add(tVar2);
                    aVar.remove(viewC);
                    aVar2.remove(viewB);
                }
            }
        }
    }

    private void matchNames(b.e.a<View, t> aVar, b.e.a<View, t> aVar2, b.e.a<String, View> aVar3, b.e.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i2 = 0; i2 < size; i2++) {
            View viewD = aVar3.d(i2);
            if (viewD != null && isValidTarget(viewD) && (view = aVar4.get(aVar3.b(i2))) != null && isValidTarget(view)) {
                t tVar = aVar.get(viewD);
                t tVar2 = aVar2.get(view);
                if (tVar != null && tVar2 != null) {
                    this.mStartValuesList.add(tVar);
                    this.mEndValuesList.add(tVar2);
                    aVar.remove(viewD);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void matchStartAndEnd(u uVar, u uVar2) {
        b.e.a<View, t> aVar = new b.e.a<>(uVar.f2978a);
        b.e.a<View, t> aVar2 = new b.e.a<>(uVar2.f2978a);
        int i2 = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i2 >= iArr.length) {
                addUnmatched(aVar, aVar2);
                return;
            }
            int i3 = iArr[i2];
            if (i3 == 1) {
                matchInstances(aVar, aVar2);
            } else if (i3 == 2) {
                matchNames(aVar, aVar2, uVar.f2981d, uVar2.f2981d);
            } else if (i3 == 3) {
                matchIds(aVar, aVar2, uVar.f2979b, uVar2.f2979b);
            } else if (i3 == 4) {
                matchItemIds(aVar, aVar2, uVar.f2980c, uVar2.f2980c);
            }
            i2++;
        }
    }

    private static int[] parseMatchOrder(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(strTrim)) {
                iArr[i2] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(strTrim)) {
                iArr[i2] = 1;
            } else if ("name".equalsIgnoreCase(strTrim)) {
                iArr[i2] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(strTrim)) {
                iArr[i2] = 4;
            } else {
                if (!strTrim.isEmpty()) {
                    throw new InflateException("Unknown match type in matchOrder: '" + strTrim + "'");
                }
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                i2--;
                iArr = iArr2;
            }
            i2++;
        }
        return iArr;
    }

    private void runAnimator(Animator animator, b.e.a<Animator, d> aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            animate(animator);
        }
    }

    public n addListener(g gVar) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(gVar);
        return this;
    }

    public n addTarget(int i2) {
        if (i2 != 0) {
            this.mTargetIds.add(Integer.valueOf(i2));
        }
        return this;
    }

    public n addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    public n addTarget(Class cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList<>();
        }
        this.mTargetTypes.add(cls);
        return this;
    }

    public n addTarget(String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList<>();
        }
        this.mTargetNames.add(str);
        return this;
    }

    protected void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new c());
        animator.start();
    }

    protected void cancel() {
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            this.mCurrentAnimators.get(size).cancel();
        }
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((g) arrayList2.get(i2)).d(this);
        }
    }

    public abstract void captureEndValues(t tVar);

    void capturePropagationValues(t tVar) {
        String[] strArrA;
        if (this.mPropagation == null || tVar.f2975a.isEmpty() || (strArrA = this.mPropagation.a()) == null) {
            return;
        }
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= strArrA.length) {
                z = true;
                break;
            } else if (!tVar.f2975a.containsKey(strArrA[i2])) {
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            return;
        }
        this.mPropagation.a(tVar);
    }

    public abstract void captureStartValues(t tVar);

    void captureValues(ViewGroup viewGroup, boolean z) {
        ArrayList<String> arrayList;
        ArrayList<Class> arrayList2;
        b.e.a<String, String> aVar;
        clearValues(z);
        if ((this.mTargetIds.size() > 0 || this.mTargets.size() > 0) && (((arrayList = this.mTargetNames) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetTypes) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                View viewFindViewById = viewGroup.findViewById(this.mTargetIds.get(i2).intValue());
                if (viewFindViewById != null) {
                    t tVar = new t();
                    tVar.f2976b = viewFindViewById;
                    if (z) {
                        captureStartValues(tVar);
                    } else {
                        captureEndValues(tVar);
                    }
                    tVar.f2977c.add(this);
                    capturePropagationValues(tVar);
                    addViewValues(z ? this.mStartValues : this.mEndValues, viewFindViewById, tVar);
                }
            }
            for (int i3 = 0; i3 < this.mTargets.size(); i3++) {
                View view = this.mTargets.get(i3);
                t tVar2 = new t();
                tVar2.f2976b = view;
                if (z) {
                    captureStartValues(tVar2);
                } else {
                    captureEndValues(tVar2);
                }
                tVar2.f2977c.add(this);
                capturePropagationValues(tVar2);
                addViewValues(z ? this.mStartValues : this.mEndValues, view, tVar2);
            }
        } else {
            captureHierarchy(viewGroup, z);
        }
        if (z || (aVar = this.mNameOverrides) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList3.add(this.mStartValues.f2981d.remove(this.mNameOverrides.b(i4)));
        }
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) arrayList3.get(i5);
            if (view2 != null) {
                this.mStartValues.f2981d.put(this.mNameOverrides.d(i5), view2);
            }
        }
    }

    void clearValues(boolean z) {
        u uVar;
        if (z) {
            this.mStartValues.f2978a.clear();
            this.mStartValues.f2979b.clear();
            uVar = this.mStartValues;
        } else {
            this.mEndValues.f2978a.clear();
            this.mEndValues.f2979b.clear();
            uVar = this.mEndValues;
        }
        uVar.f2980c.a();
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public n mo3clone() {
        try {
            n nVar = (n) super.clone();
            nVar.mAnimators = new ArrayList<>();
            nVar.mStartValues = new u();
            nVar.mEndValues = new u();
            nVar.mStartValuesList = null;
            nVar.mEndValuesList = null;
            return nVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, t tVar, t tVar2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void createAnimators(android.view.ViewGroup r21, b.q.u r22, b.q.u r23, java.util.ArrayList<b.q.t> r24, java.util.ArrayList<b.q.t> r25) {
        /*
            Method dump skipped, instruction units count: 346
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.q.n.createAnimators(android.view.ViewGroup, b.q.u, b.q.u, java.util.ArrayList, java.util.ArrayList):void");
    }

    protected void end() {
        this.mNumInstances--;
        if (this.mNumInstances == 0) {
            ArrayList<g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((g) arrayList2.get(i2)).c(this);
                }
            }
            for (int i3 = 0; i3 < this.mStartValues.f2980c.b(); i3++) {
                View viewC = this.mStartValues.f2980c.c(i3);
                if (viewC != null) {
                    b.h.o.s.b(viewC, false);
                }
            }
            for (int i4 = 0; i4 < this.mEndValues.f2980c.b(); i4++) {
                View viewC2 = this.mEndValues.f2980c.c(i4);
                if (viewC2 != null) {
                    b.h.o.s.b(viewC2, false);
                }
            }
            this.mEnded = true;
        }
    }

    public n excludeChildren(int i2, boolean z) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i2, z);
        return this;
    }

    public n excludeChildren(View view, boolean z) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z);
        return this;
    }

    public n excludeChildren(Class cls, boolean z) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z);
        return this;
    }

    public n excludeTarget(int i2, boolean z) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i2, z);
        return this;
    }

    public n excludeTarget(View view, boolean z) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z);
        return this;
    }

    public n excludeTarget(Class cls, boolean z) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z);
        return this;
    }

    public n excludeTarget(String str, boolean z) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z);
        return this;
    }

    void forceToEnd(ViewGroup viewGroup) {
        b.e.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (viewGroup != null) {
            m0 m0VarD = e0.d(viewGroup);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                d dVarD = runningAnimators.d(i2);
                if (dVarD.f2953a != null && m0VarD != null && m0VarD.equals(dVarD.f2956d)) {
                    runningAnimators.b(i2).end();
                }
            }
        }
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Rect getEpicenter() {
        f fVar = this.mEpicenterCallback;
        if (fVar == null) {
            return null;
        }
        return fVar.a(this);
    }

    public f getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if (r3 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        if (r8 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        r7 = r6.mEndValuesList;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        r7 = r6.mStartValuesList;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003e, code lost:
    
        return r7.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    b.q.t getMatchedTransitionValues(android.view.View r7, boolean r8) {
        /*
            r6 = this;
            b.q.r r0 = r6.mParent
            if (r0 == 0) goto L9
            b.q.t r7 = r0.getMatchedTransitionValues(r7, r8)
            return r7
        L9:
            if (r8 == 0) goto Le
            java.util.ArrayList<b.q.t> r0 = r6.mStartValuesList
            goto L10
        Le:
            java.util.ArrayList<b.q.t> r0 = r6.mEndValuesList
        L10:
            r1 = 0
            if (r0 != 0) goto L14
            return r1
        L14:
            int r2 = r0.size()
            r3 = -1
            r4 = 0
        L1a:
            if (r4 >= r2) goto L2e
            java.lang.Object r5 = r0.get(r4)
            b.q.t r5 = (b.q.t) r5
            if (r5 != 0) goto L25
            return r1
        L25:
            android.view.View r5 = r5.f2976b
            if (r5 != r7) goto L2b
            r3 = r4
            goto L2e
        L2b:
            int r4 = r4 + 1
            goto L1a
        L2e:
            if (r3 < 0) goto L3e
            if (r8 == 0) goto L35
            java.util.ArrayList<b.q.t> r7 = r6.mEndValuesList
            goto L37
        L35:
            java.util.ArrayList<b.q.t> r7 = r6.mStartValuesList
        L37:
            java.lang.Object r7 = r7.get(r3)
            r1 = r7
            b.q.t r1 = (b.q.t) r1
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.q.n.getMatchedTransitionValues(android.view.View, boolean):b.q.t");
    }

    public String getName() {
        return this.mName;
    }

    public b.q.g getPathMotion() {
        return this.mPathMotion;
    }

    public q getPropagation() {
        return this.mPropagation;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    public List<Class> getTargetTypes() {
        return this.mTargetTypes;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public t getTransitionValues(View view, boolean z) {
        r rVar = this.mParent;
        if (rVar != null) {
            return rVar.getTransitionValues(view, z);
        }
        return (z ? this.mStartValues : this.mEndValues).f2978a.get(view);
    }

    public boolean isTransitionRequired(t tVar, t tVar2) {
        if (tVar == null || tVar2 == null) {
            return false;
        }
        String[] transitionProperties = getTransitionProperties();
        if (transitionProperties == null) {
            Iterator<String> it = tVar.f2975a.keySet().iterator();
            while (it.hasNext()) {
                if (isValueChanged(tVar, tVar2, it.next())) {
                }
            }
            return false;
        }
        for (String str : transitionProperties) {
            if (!isValueChanged(tVar, tVar2, str)) {
            }
        }
        return false;
        return true;
    }

    boolean isValidTarget(View view) {
        ArrayList<Class> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.mTargetExcludes;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class> arrayList5 = this.mTargetTypeExcludes;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.mTargetTypeExcludes.get(i2).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetNameExcludes != null && b.h.o.s.q(view) != null && this.mTargetNameExcludes.contains(b.h.o.s.q(view))) {
            return false;
        }
        if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id)) || this.mTargets.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.mTargetNames;
        if (arrayList6 != null && arrayList6.contains(b.h.o.s.q(view))) {
            return true;
        }
        if (this.mTargetTypes != null) {
            for (int i3 = 0; i3 < this.mTargetTypes.size(); i3++) {
                if (this.mTargetTypes.get(i3).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void pause(View view) {
        if (this.mEnded) {
            return;
        }
        b.e.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        m0 m0VarD = e0.d(view);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            d dVarD = runningAnimators.d(i2);
            if (dVarD.f2953a != null && m0VarD.equals(dVarD.f2956d)) {
                b.q.a.a(runningAnimators.b(i2));
            }
        }
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((g) arrayList2.get(i3)).b(this);
            }
        }
        this.mPaused = true;
    }

    void playTransition(ViewGroup viewGroup) {
        d dVar;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        matchStartAndEnd(this.mStartValues, this.mEndValues);
        b.e.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        m0 m0VarD = e0.d(viewGroup);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator animatorB = runningAnimators.b(i2);
            if (animatorB != null && (dVar = runningAnimators.get(animatorB)) != null && dVar.f2953a != null && m0VarD.equals(dVar.f2956d)) {
                t tVar = dVar.f2955c;
                View view = dVar.f2953a;
                t transitionValues = getTransitionValues(view, true);
                t matchedTransitionValues = getMatchedTransitionValues(view, true);
                if (!(transitionValues == null && matchedTransitionValues == null) && dVar.f2957e.isTransitionRequired(tVar, matchedTransitionValues)) {
                    if (animatorB.isRunning() || animatorB.isStarted()) {
                        animatorB.cancel();
                    } else {
                        runningAnimators.remove(animatorB);
                    }
                }
            }
        }
        createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
        runAnimators();
    }

    public n removeListener(g gVar) {
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(gVar);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    public n removeTarget(int i2) {
        if (i2 != 0) {
            this.mTargetIds.remove(Integer.valueOf(i2));
        }
        return this;
    }

    public n removeTarget(View view) {
        this.mTargets.remove(view);
        return this;
    }

    public n removeTarget(Class cls) {
        ArrayList<Class> arrayList = this.mTargetTypes;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    public n removeTarget(String str) {
        ArrayList<String> arrayList = this.mTargetNames;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                b.e.a<Animator, d> runningAnimators = getRunningAnimators();
                int size = runningAnimators.size();
                m0 m0VarD = e0.d(view);
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    d dVarD = runningAnimators.d(i2);
                    if (dVarD.f2953a != null && m0VarD.equals(dVarD.f2956d)) {
                        b.q.a.b(runningAnimators.b(i2));
                    }
                }
                ArrayList<g> arrayList = this.mListeners;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((g) arrayList2.get(i3)).e(this);
                    }
                }
            }
            this.mPaused = false;
        }
    }

    protected void runAnimators() {
        start();
        b.e.a<Animator, d> runningAnimators = getRunningAnimators();
        for (Animator animator : this.mAnimators) {
            if (runningAnimators.containsKey(animator)) {
                start();
                runAnimator(animator, runningAnimators);
            }
        }
        this.mAnimators.clear();
        end();
    }

    void setCanRemoveViews(boolean z) {
        this.mCanRemoveViews = z;
    }

    public n setDuration(long j2) {
        this.mDuration = j2;
        return this;
    }

    public void setEpicenterCallback(f fVar) {
        this.mEpicenterCallback = fVar;
    }

    public n setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.mMatchOrder = DEFAULT_MATCH_ORDER;
            return;
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (!isValidMatch(iArr[i2])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (alreadyContains(iArr, i2)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.mMatchOrder = (int[]) iArr.clone();
    }

    public void setPathMotion(b.q.g gVar) {
        if (gVar == null) {
            gVar = STRAIGHT_PATH_MOTION;
        }
        this.mPathMotion = gVar;
    }

    public void setPropagation(q qVar) {
        this.mPropagation = qVar;
    }

    n setSceneRoot(ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
        return this;
    }

    public n setStartDelay(long j2) {
        this.mStartDelay = j2;
        return this;
    }

    protected void start() {
        if (this.mNumInstances == 0) {
            ArrayList<g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((g) arrayList2.get(i2)).a(this);
                }
            }
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    public String toString() {
        return toString("");
    }

    String toString(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.mDuration != -1) {
            str2 = str2 + "dur(" + this.mDuration + ") ";
        }
        if (this.mStartDelay != -1) {
            str2 = str2 + "dly(" + this.mStartDelay + ") ";
        }
        if (this.mInterpolator != null) {
            str2 = str2 + "interp(" + this.mInterpolator + ") ";
        }
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.mTargetIds.size() > 0) {
            String str4 = str3;
            for (int i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                if (i2 > 0) {
                    str4 = str4 + ", ";
                }
                str4 = str4 + this.mTargetIds.get(i2);
            }
            str3 = str4;
        }
        if (this.mTargets.size() > 0) {
            for (int i3 = 0; i3 < this.mTargets.size(); i3++) {
                if (i3 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargets.get(i3);
            }
        }
        return str3 + ")";
    }
}
