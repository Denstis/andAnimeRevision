package b.k.a;

import android.animation.Animator;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class d implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.g, androidx.lifecycle.s {
    static final int ACTIVITY_CREATED = 2;
    static final int CREATED = 1;
    static final int INITIALIZING = 0;
    static final int RESUMED = 4;
    static final int STARTED = 3;
    boolean mAdded;
    C0115d mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mCalled;
    j mChildFragmentManager;
    k mChildNonConfig;
    ViewGroup mContainer;
    int mContainerId;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    j mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    h mHost;
    boolean mInLayout;
    View mInnerView;
    boolean mIsCreated;
    boolean mIsNewlyAdded;
    LayoutInflater mLayoutInflater;
    d mParentFragment;
    boolean mPerformedCreateView;
    float mPostponedAlpha;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetaining;
    Bundle mSavedFragmentState;
    Boolean mSavedUserVisibleHint;
    SparseArray<Parcelable> mSavedViewState;
    String mTag;
    d mTarget;
    int mTargetRequestCode;
    View mView;
    androidx.lifecycle.g mViewLifecycleOwner;
    androidx.lifecycle.h mViewLifecycleRegistry;
    androidx.lifecycle.r mViewModelStore;
    String mWho;
    private static final b.e.g<String, Class<?>> sClassMap = new b.e.g<>();
    static final Object USE_DEFAULT_TRANSITION = new Object();
    int mState = 0;
    int mIndex = -1;
    int mTargetIndex = -1;
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;
    androidx.lifecycle.h mLifecycleRegistry = new androidx.lifecycle.h(this);
    androidx.lifecycle.l<androidx.lifecycle.g> mViewLifecycleOwnerLiveData = new androidx.lifecycle.l<>();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.callStartTransitionListener();
        }
    }

    class b extends b.k.a.f {
        b() {
        }

        @Override // b.k.a.f
        public View a(int i2) {
            View view = d.this.mView;
            if (view != null) {
                return view.findViewById(i2);
            }
            throw new IllegalStateException("Fragment does not have a view");
        }

        @Override // b.k.a.f
        public d a(Context context, String str, Bundle bundle) {
            return d.this.mHost.a(context, str, bundle);
        }

        @Override // b.k.a.f
        public boolean a() {
            return d.this.mView != null;
        }
    }

    class c implements androidx.lifecycle.g {
        c() {
        }

        @Override // androidx.lifecycle.g
        public androidx.lifecycle.e getLifecycle() {
            d dVar = d.this;
            if (dVar.mViewLifecycleRegistry == null) {
                dVar.mViewLifecycleRegistry = new androidx.lifecycle.h(dVar.mViewLifecycleOwner);
            }
            return d.this.mViewLifecycleRegistry;
        }
    }

    /* JADX INFO: renamed from: b.k.a.d$d, reason: collision with other inner class name */
    static class C0115d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f2674a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Animator f2675b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2676c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2677d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2678e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f2679f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Object f2680g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        Object f2681h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Object f2682i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        Object f2683j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        Object f2684k;
        Object l;
        Boolean m;
        Boolean n;
        androidx.core.app.m o;
        androidx.core.app.m p;
        boolean q;
        f r;
        boolean s;

        C0115d() {
            Object obj = d.USE_DEFAULT_TRANSITION;
            this.f2681h = obj;
            this.f2682i = null;
            this.f2683j = obj;
            this.f2684k = null;
            this.l = obj;
            this.o = null;
            this.p = null;
        }
    }

    public static class e extends RuntimeException {
        public e(String str, Exception exc) {
            super(str, exc);
        }
    }

    interface f {
        void a();

        void b();
    }

    public static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Bundle f2685b;

        static class a implements Parcelable.ClassLoaderCreator<g> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public g createFromParcel(Parcel parcel) {
                return new g(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public g[] newArray(int i2) {
                return new g[i2];
            }
        }

        g(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle;
            this.f2685b = parcel.readBundle();
            if (classLoader == null || (bundle = this.f2685b) == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeBundle(this.f2685b);
        }
    }

    private C0115d ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new C0115d();
        }
        return this.mAnimationInfo;
    }

    public static d instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    public static d instantiate(Context context, String str, Bundle bundle) {
        try {
            Class<?> clsLoadClass = sClassMap.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                sClassMap.put(str, clsLoadClass);
            }
            d dVar = (d) clsLoadClass.getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(dVar.getClass().getClassLoader());
                dVar.setArguments(bundle);
            }
            return dVar;
        } catch (ClassNotFoundException e2) {
            throw new e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (IllegalAccessException e3) {
            throw new e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        } catch (InstantiationException e4) {
            throw new e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e4);
        } catch (NoSuchMethodException e5) {
            throw new e("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e5);
        } catch (InvocationTargetException e6) {
            throw new e("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e6);
        }
    }

    static boolean isSupportFragmentClass(Context context, String str) {
        try {
            Class<?> clsLoadClass = sClassMap.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                sClassMap.put(str, clsLoadClass);
            }
            return d.class.isAssignableFrom(clsLoadClass);
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    void callStartTransitionListener() {
        C0115d c0115d = this.mAnimationInfo;
        f fVar = null;
        if (c0115d != null) {
            c0115d.q = false;
            f fVar2 = c0115d.r;
            c0115d.r = null;
            fVar = fVar2;
        }
        if (fVar != null) {
            fVar.b();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mIndex=");
        printWriter.print(this.mIndex);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mRetaining=");
        printWriter.print(this.mRetaining);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mTarget != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.mTarget);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (this.mInnerView != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(getStateAfterAnimating());
        }
        if (getContext() != null) {
            b.n.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        if (this.mChildFragmentManager != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.mChildFragmentManager + ":");
            this.mChildFragmentManager.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    d findFragmentByWho(String str) {
        if (str.equals(this.mWho)) {
            return this;
        }
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            return jVar.b(str);
        }
        return null;
    }

    public final b.k.a.e getActivity() {
        h hVar = this.mHost;
        if (hVar == null) {
            return null;
        }
        return (b.k.a.e) hVar.b();
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null || (bool = c0115d.n) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null || (bool = c0115d.m) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    View getAnimatingAway() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        return c0115d.f2674a;
    }

    Animator getAnimator() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        return c0115d.f2675b;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final i getChildFragmentManager() {
        if (this.mChildFragmentManager == null) {
            instantiateChildFragmentManager();
            int i2 = this.mState;
            if (i2 >= 4) {
                this.mChildFragmentManager.m();
            } else if (i2 >= 3) {
                this.mChildFragmentManager.n();
            } else if (i2 >= 2) {
                this.mChildFragmentManager.g();
            } else if (i2 >= 1) {
                this.mChildFragmentManager.h();
            }
        }
        return this.mChildFragmentManager;
    }

    public Context getContext() {
        h hVar = this.mHost;
        if (hVar == null) {
            return null;
        }
        return hVar.c();
    }

    public Object getEnterTransition() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        return c0115d.f2680g;
    }

    androidx.core.app.m getEnterTransitionCallback() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        return c0115d.o;
    }

    public Object getExitTransition() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        return c0115d.f2682i;
    }

    androidx.core.app.m getExitTransitionCallback() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        return c0115d.p;
    }

    public final i getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        h hVar = this.mHost;
        if (hVar == null) {
            return null;
        }
        return hVar.f();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        h hVar = this.mHost;
        if (hVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater layoutInflaterG = hVar.g();
        getChildFragmentManager();
        j jVar = this.mChildFragmentManager;
        jVar.r();
        b.h.o.e.b(layoutInflaterG, jVar);
        return layoutInflaterG;
    }

    @Override // androidx.lifecycle.g
    public androidx.lifecycle.e getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public b.n.a.a getLoaderManager() {
        return b.n.a.a.a(this);
    }

    int getNextAnim() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return 0;
        }
        return c0115d.f2677d;
    }

    int getNextTransition() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return 0;
        }
        return c0115d.f2678e;
    }

    int getNextTransitionStyle() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return 0;
        }
        return c0115d.f2679f;
    }

    public final d getParentFragment() {
        return this.mParentFragment;
    }

    public Object getReenterTransition() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        Object obj = c0115d.f2683j;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        Object obj = c0115d.f2681h;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    public Object getSharedElementEnterTransition() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        return c0115d.f2684k;
    }

    public Object getSharedElementReturnTransition() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return null;
        }
        Object obj = c0115d.l;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    int getStateAfterAnimating() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return 0;
        }
        return c0115d.f2676c;
    }

    public final String getString(int i2) {
        return getResources().getString(i2);
    }

    public final String getString(int i2, Object... objArr) {
        return getResources().getString(i2, objArr);
    }

    public final String getTag() {
        return this.mTag;
    }

    public final d getTargetFragment() {
        return this.mTarget;
    }

    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i2) {
        return getResources().getText(i2);
    }

    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public androidx.lifecycle.g getViewLifecycleOwner() {
        androidx.lifecycle.g gVar = this.mViewLifecycleOwner;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<androidx.lifecycle.g> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.s
    public androidx.lifecycle.r getViewModelStore() {
        if (getContext() == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mViewModelStore == null) {
            this.mViewModelStore = new androidx.lifecycle.r();
        }
        return this.mViewModelStore;
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    void initState() {
        this.mIndex = -1;
        this.mWho = null;
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = null;
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
        this.mRetaining = false;
    }

    void instantiateChildFragmentManager() {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment has not been attached yet.");
        }
        this.mChildFragmentManager = new j();
        this.mChildFragmentManager.a(this.mHost, new b(), this);
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    boolean isHideReplaced() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return false;
        }
        return c0115d.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        return this.mMenuVisible;
    }

    boolean isPostponed() {
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d == null) {
            return false;
        }
        return c0115d.q;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 4;
    }

    public final boolean isStateSaved() {
        j jVar = this.mFragmentManager;
        if (jVar == null) {
            return false;
        }
        return jVar.d();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    void noteStateNotSaved() {
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.t();
        }
    }

    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        h hVar = this.mHost;
        Activity activityB = hVar == null ? null : hVar.b();
        if (activityB != null) {
            this.mCalled = false;
            onAttach(activityB);
        }
    }

    public void onAttachFragment(d dVar) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        j jVar = this.mChildFragmentManager;
        if (jVar == null || jVar.c(1)) {
            return;
        }
        this.mChildFragmentManager.h();
    }

    public Animation onCreateAnimation(int i2, boolean z, int i3) {
        return null;
    }

    public Animator onCreateAnimator(int i2, boolean z, int i3) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        getActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
        b.k.a.e activity = getActivity();
        boolean z = activity != null && activity.isChangingConfigurations();
        androidx.lifecycle.r rVar = this.mViewModelStore;
        if (rVar == null || z) {
            return;
        }
        rVar.a();
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        h hVar = this.mHost;
        Activity activityB = hVar == null ? null : hVar.b();
        if (activityB != null) {
            this.mCalled = false;
            onInflate(activityB, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    i peekChildFragmentManager() {
        return this.mChildFragmentManager;
    }

    void performActivityCreated(Bundle bundle) {
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.t();
        }
        this.mState = 2;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            j jVar2 = this.mChildFragmentManager;
            if (jVar2 != null) {
                jVar2.g();
                return;
            }
            return;
        }
        throw new t("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.a(configuration);
        }
    }

    boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        j jVar = this.mChildFragmentManager;
        return jVar != null && jVar.a(menuItem);
    }

    void performCreate(Bundle bundle) {
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.t();
        }
        this.mState = 1;
        this.mCalled = false;
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.a(e.a.ON_CREATE);
            return;
        }
        throw new t("Fragment " + this + " did not call through to super.onCreate()");
    }

    boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z = true;
        }
        j jVar = this.mChildFragmentManager;
        return jVar != null ? z | jVar.a(menu, menuInflater) : z;
    }

    void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.t();
        }
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new c();
        this.mViewLifecycleRegistry = null;
        this.mView = onCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null) {
            this.mViewLifecycleOwner.getLifecycle();
            this.mViewLifecycleOwnerLiveData.a(this.mViewLifecycleOwner);
        } else {
            if (this.mViewLifecycleRegistry != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
        }
    }

    void performDestroy() {
        this.mLifecycleRegistry.a(e.a.ON_DESTROY);
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.i();
        }
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            this.mChildFragmentManager = null;
            return;
        }
        throw new t("Fragment " + this + " did not call through to super.onDestroy()");
    }

    void performDestroyView() {
        if (this.mView != null) {
            this.mViewLifecycleRegistry.a(e.a.ON_DESTROY);
        }
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.j();
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            b.n.a.a.a(this).a();
            this.mPerformedCreateView = false;
        } else {
            throw new t("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }

    void performDetach() {
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new t("Fragment " + this + " did not call through to super.onDetach()");
        }
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            if (this.mRetaining) {
                jVar.i();
                this.mChildFragmentManager = null;
                return;
            }
            throw new IllegalStateException("Child FragmentManager of " + this + " was not  destroyed and this fragment is not retaining instance");
        }
    }

    LayoutInflater performGetLayoutInflater(Bundle bundle) {
        this.mLayoutInflater = onGetLayoutInflater(bundle);
        return this.mLayoutInflater;
    }

    void performLowMemory() {
        onLowMemory();
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.k();
        }
    }

    void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.a(z);
        }
    }

    boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        j jVar = this.mChildFragmentManager;
        return jVar != null && jVar.b(menuItem);
    }

    void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.a(menu);
        }
    }

    void performPause() {
        if (this.mView != null) {
            this.mViewLifecycleRegistry.a(e.a.ON_PAUSE);
        }
        this.mLifecycleRegistry.a(e.a.ON_PAUSE);
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.l();
        }
        this.mState = 3;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new t("Fragment " + this + " did not call through to super.onPause()");
    }

    void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.b(z);
        }
    }

    boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z = true;
        }
        j jVar = this.mChildFragmentManager;
        return jVar != null ? z | jVar.b(menu) : z;
    }

    void performResume() {
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.t();
            this.mChildFragmentManager.q();
        }
        this.mState = 4;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new t("Fragment " + this + " did not call through to super.onResume()");
        }
        j jVar2 = this.mChildFragmentManager;
        if (jVar2 != null) {
            jVar2.m();
            this.mChildFragmentManager.q();
        }
        this.mLifecycleRegistry.a(e.a.ON_RESUME);
        if (this.mView != null) {
            this.mViewLifecycleRegistry.a(e.a.ON_RESUME);
        }
    }

    void performSaveInstanceState(Bundle bundle) {
        Parcelable parcelableW;
        onSaveInstanceState(bundle);
        j jVar = this.mChildFragmentManager;
        if (jVar == null || (parcelableW = jVar.w()) == null) {
            return;
        }
        bundle.putParcelable("android:support:fragments", parcelableW);
    }

    void performStart() {
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.t();
            this.mChildFragmentManager.q();
        }
        this.mState = 3;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new t("Fragment " + this + " did not call through to super.onStart()");
        }
        j jVar2 = this.mChildFragmentManager;
        if (jVar2 != null) {
            jVar2.n();
        }
        this.mLifecycleRegistry.a(e.a.ON_START);
        if (this.mView != null) {
            this.mViewLifecycleRegistry.a(e.a.ON_START);
        }
    }

    void performStop() {
        if (this.mView != null) {
            this.mViewLifecycleRegistry.a(e.a.ON_STOP);
        }
        this.mLifecycleRegistry.a(e.a.ON_STOP);
        j jVar = this.mChildFragmentManager;
        if (jVar != null) {
            jVar.o();
        }
        this.mState = 2;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new t("Fragment " + this + " did not call through to super.onStop()");
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().q = true;
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final void requestPermissions(String[] strArr, int i2) {
        h hVar = this.mHost;
        if (hVar != null) {
            hVar.a(this, strArr, i2);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final b.k.a.e requireActivity() {
        b.k.a.e activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final i requireFragmentManager() {
        i fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        if (this.mChildFragmentManager == null) {
            instantiateChildFragmentManager();
        }
        this.mChildFragmentManager.a(parcelable, this.mChildNonConfig);
        this.mChildNonConfig = null;
        this.mChildFragmentManager.h();
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mInnerView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView != null) {
                this.mViewLifecycleRegistry.a(e.a.ON_CREATE);
            }
        } else {
            throw new t("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().n = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().m = Boolean.valueOf(z);
    }

    void setAnimatingAway(View view) {
        ensureAnimationInfo().f2674a = view;
    }

    void setAnimator(Animator animator) {
        ensureAnimationInfo().f2675b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mIndex >= 0 && isStateSaved()) {
            throw new IllegalStateException("Fragment already active and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(androidx.core.app.m mVar) {
        ensureAnimationInfo().o = mVar;
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().f2680g = obj;
    }

    public void setExitSharedElementCallback(androidx.core.app.m mVar) {
        ensureAnimationInfo().p = mVar;
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().f2682i = obj;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.j();
        }
    }

    void setHideReplaced(boolean z) {
        ensureAnimationInfo().s = z;
    }

    final void setIndex(int i2, d dVar) {
        StringBuilder sb;
        String str;
        this.mIndex = i2;
        if (dVar != null) {
            sb = new StringBuilder();
            sb.append(dVar.mWho);
            str = ":";
        } else {
            sb = new StringBuilder();
            str = "android:fragment:";
        }
        sb.append(str);
        sb.append(this.mIndex);
        this.mWho = sb.toString();
    }

    public void setInitialSavedState(g gVar) {
        Bundle bundle;
        if (this.mIndex >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        if (gVar == null || (bundle = gVar.f2685b) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.j();
            }
        }
    }

    void setNextAnim(int i2) {
        if (this.mAnimationInfo == null && i2 == 0) {
            return;
        }
        ensureAnimationInfo().f2677d = i2;
    }

    void setNextTransition(int i2, int i3) {
        if (this.mAnimationInfo == null && i2 == 0 && i3 == 0) {
            return;
        }
        ensureAnimationInfo();
        C0115d c0115d = this.mAnimationInfo;
        c0115d.f2678e = i2;
        c0115d.f2679f = i3;
    }

    void setOnStartEnterTransitionListener(f fVar) {
        ensureAnimationInfo();
        f fVar2 = this.mAnimationInfo.r;
        if (fVar == fVar2) {
            return;
        }
        if (fVar != null && fVar2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        C0115d c0115d = this.mAnimationInfo;
        if (c0115d.q) {
            c0115d.r = fVar;
        }
        if (fVar != null) {
            fVar.a();
        }
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().f2683j = obj;
    }

    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().f2681h = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().f2684k = obj;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().l = obj;
    }

    void setStateAfterAnimating(int i2) {
        ensureAnimationInfo().f2676c = i2;
    }

    public void setTargetFragment(d dVar, int i2) {
        i fragmentManager = getFragmentManager();
        i fragmentManager2 = dVar != null ? dVar.getFragmentManager() : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Fragment " + dVar + " must share the same FragmentManager to be set as a target fragment");
        }
        for (d targetFragment = dVar; targetFragment != null; targetFragment = targetFragment.getTargetFragment()) {
            if (targetFragment == this) {
                throw new IllegalArgumentException("Setting " + dVar + " as the target of " + this + " would create a target cycle");
            }
        }
        this.mTarget = dVar;
        this.mTargetRequestCode = i2;
    }

    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 3 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            this.mFragmentManager.j(this);
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 3 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        h hVar = this.mHost;
        if (hVar != null) {
            return hVar.a(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        h hVar = this.mHost;
        if (hVar != null) {
            hVar.a(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startActivityForResult(Intent intent, int i2) {
        startActivityForResult(intent, i2, null);
    }

    public void startActivityForResult(Intent intent, int i2, Bundle bundle) {
        h hVar = this.mHost;
        if (hVar != null) {
            hVar.a(this, intent, i2, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        h hVar = this.mHost;
        if (hVar != null) {
            hVar.a(this, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startPostponedEnterTransition() {
        j jVar = this.mFragmentManager;
        if (jVar == null || jVar.n == null) {
            ensureAnimationInfo().q = false;
        } else if (Looper.myLooper() != this.mFragmentManager.n.e().getLooper()) {
            this.mFragmentManager.n.e().postAtFrontOfQueue(new a());
        } else {
            callStartTransitionListener();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        b.h.n.a.a(this, sb);
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" ");
            sb.append(this.mTag);
        }
        sb.append('}');
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }
}
