package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.n0;
import androidx.appcompat.widget.q;
import androidx.appcompat.widget.r;
import androidx.appcompat.widget.u;
import androidx.appcompat.widget.w;
import b.h.o.s;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatViewInflater {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final Map<String, Constructor<? extends View>> sConstructorMap = new b.e.a();

    private static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f123b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f124c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Method f125d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Context f126e;

        public a(View view, String str) {
            this.f123b = view;
            this.f124c = str;
        }

        private void a(Context context, String str) {
            String str2;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f124c, View.class)) != null) {
                        this.f125d = method;
                        this.f126e = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f123b.getId();
            if (id == -1) {
                str2 = "";
            } else {
                str2 = " with id '" + this.f123b.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f124c + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f123b.getClass() + str2);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f125d == null) {
                a(this.f123b.getContext(), this.f124c);
            }
            try {
                this.f125d.invoke(this.f126e, view);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (InvocationTargetException e3) {
                throw new IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }
    }

    private void checkOnClickListener(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || s.v(view)) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
                String string = typedArrayObtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new a(view, string));
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    private View createViewByPrefix(Context context, String str, String str2) {
        String str3;
        Constructor<? extends View> constructor = sConstructorMap.get(str);
        if (constructor == null) {
            try {
                ClassLoader classLoader = context.getClassLoader();
                if (str2 != null) {
                    str3 = str2 + str;
                } else {
                    str3 = str;
                }
                constructor = classLoader.loadClass(str3).asSubclass(View.class).getConstructor(sConstructorSignature);
                sConstructorMap.put(str, constructor);
            } catch (Exception unused) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.mConstructorArgs);
    }

    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.mConstructorArgs[0] = context;
            this.mConstructorArgs[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return createViewByPrefix(context, str, null);
            }
            for (int i2 = 0; i2 < sClassPrefixList.length; i2++) {
                View viewCreateViewByPrefix = createViewByPrefix(context, str, sClassPrefixList[i2]);
                if (viewCreateViewByPrefix != null) {
                    return viewCreateViewByPrefix;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr = this.mConstructorArgs;
            objArr[0] = null;
            objArr[1] = null;
        }
    }

    private static Context themifyContext(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.a.j.View, 0, 0);
        int resourceId = z ? typedArrayObtainStyledAttributes.getResourceId(b.a.j.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(b.a.j.View_theme, 0)) != 0) {
            Log.i(LOG_TAG, "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? ((context instanceof b.a.n.d) && ((b.a.n.d) context).a() == resourceId) ? context : new b.a.n.d(context, resourceId) : context;
    }

    private void verifyNotNull(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    protected androidx.appcompat.widget.d createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.d(context, attributeSet);
    }

    protected androidx.appcompat.widget.f createButton(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.f(context, attributeSet);
    }

    protected androidx.appcompat.widget.g createCheckBox(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.g(context, attributeSet);
    }

    protected androidx.appcompat.widget.h createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.h(context, attributeSet);
    }

    protected androidx.appcompat.widget.k createEditText(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.k(context, attributeSet);
    }

    protected AppCompatImageButton createImageButton(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    protected AppCompatImageView createImageView(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    protected androidx.appcompat.widget.n createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.n(context, attributeSet);
    }

    protected q createRadioButton(Context context, AttributeSet attributeSet) {
        return new q(context, attributeSet);
    }

    protected r createRatingBar(Context context, AttributeSet attributeSet) {
        return new r(context, attributeSet);
    }

    protected androidx.appcompat.widget.s createSeekBar(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.s(context, attributeSet);
    }

    protected u createSpinner(Context context, AttributeSet attributeSet) {
        return new u(context, attributeSet);
    }

    protected w createTextView(Context context, AttributeSet attributeSet) {
        return new w(context, attributeSet);
    }

    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    final View createView(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        Context context2;
        View viewCreateTextView;
        context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = themifyContext(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = n0.b(context2);
        }
        switch (str) {
            case "TextView":
                viewCreateTextView = createTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "ImageView":
                viewCreateTextView = createImageView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "Button":
                viewCreateTextView = createButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "EditText":
                viewCreateTextView = createEditText(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "Spinner":
                viewCreateTextView = createSpinner(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "ImageButton":
                viewCreateTextView = createImageButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "CheckBox":
                viewCreateTextView = createCheckBox(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "RadioButton":
                viewCreateTextView = createRadioButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "CheckedTextView":
                viewCreateTextView = createCheckedTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "AutoCompleteTextView":
                viewCreateTextView = createAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "MultiAutoCompleteTextView":
                viewCreateTextView = createMultiAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "RatingBar":
                viewCreateTextView = createRatingBar(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "SeekBar":
                viewCreateTextView = createSeekBar(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            default:
                viewCreateTextView = createView(context2, str, attributeSet);
                break;
        }
        if (viewCreateTextView == null && context != context2) {
            viewCreateTextView = createViewFromTag(context2, str, attributeSet);
        }
        if (viewCreateTextView != null) {
            checkOnClickListener(viewCreateTextView, attributeSet);
        }
        return viewCreateTextView;
    }
}
