package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.q;
import androidx.appcompat.view.menu.v;

/* JADX INFO: loaded from: classes.dex */
public class BottomNavigationPresenter implements p {
    private int id;
    private h menu;
    private BottomNavigationMenuView menuView;
    private boolean updateSuspended = false;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationPresenter.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        int selectedItemId;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.selectedItemId = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.selectedItemId);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean collapseItemActionView(h hVar, k kVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean expandItemActionView(h hVar, k kVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public int getId() {
        return this.id;
    }

    public q getMenuView(ViewGroup viewGroup) {
        return this.menuView;
    }

    @Override // androidx.appcompat.view.menu.p
    public void initForMenu(Context context, h hVar) {
        this.menu = hVar;
        this.menuView.initialize(this.menu);
    }

    @Override // androidx.appcompat.view.menu.p
    public void onCloseMenu(h hVar, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.menuView.tryRestoreSelectedItemId(((SavedState) parcelable).selectedItemId);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.selectedItemId = this.menuView.getSelectedItemId();
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean onSubMenuSelected(v vVar) {
        return false;
    }

    public void setBottomNavigationMenuView(BottomNavigationMenuView bottomNavigationMenuView) {
        this.menuView = bottomNavigationMenuView;
    }

    @Override // androidx.appcompat.view.menu.p
    public void setCallback(p.a aVar) {
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setUpdateSuspended(boolean z) {
        this.updateSuspended = z;
    }

    @Override // androidx.appcompat.view.menu.p
    public void updateMenuView(boolean z) {
        if (this.updateSuspended) {
            return;
        }
        if (z) {
            this.menuView.buildMenuView();
        } else {
            this.menuView.updateMenuView();
        }
    }
}
