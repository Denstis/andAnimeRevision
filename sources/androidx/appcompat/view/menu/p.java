package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public interface p {

    public interface a {
        boolean a(h hVar);

        void onCloseMenu(h hVar, boolean z);
    }

    boolean collapseItemActionView(h hVar, k kVar);

    boolean expandItemActionView(h hVar, k kVar);

    boolean flagActionItems();

    int getId();

    void initForMenu(Context context, h hVar);

    void onCloseMenu(h hVar, boolean z);

    void onRestoreInstanceState(Parcelable parcelable);

    Parcelable onSaveInstanceState();

    boolean onSubMenuSelected(v vVar);

    void setCallback(a aVar);

    void updateMenuView(boolean z);
}
