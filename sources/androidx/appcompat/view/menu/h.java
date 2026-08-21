package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class h implements b.h.i.a.a {
    private static final String ACTION_VIEW_STATES_KEY = "android:menu:actionviewstates";
    private static final String EXPANDED_ACTION_VIEW_ID = "android:menu:expandedactionview";
    private static final String PRESENTER_KEY = "android:menu:presenters";
    private static final String TAG = "MenuBuilder";
    private static final int[] sCategoryToOrder = {1, 4, 5, 3, 2, 0};
    private a mCallback;
    private final Context mContext;
    private ContextMenu.ContextMenuInfo mCurrentMenuInfo;
    private k mExpandedItem;
    private SparseArray<Parcelable> mFrozenViewStates;
    Drawable mHeaderIcon;
    CharSequence mHeaderTitle;
    View mHeaderView;
    private boolean mOverrideVisibleItems;
    private boolean mQwertyMode;
    private final Resources mResources;
    private boolean mShortcutsVisible;
    private int mDefaultShowAsAction = 0;
    private boolean mPreventDispatchingItemsChanged = false;
    private boolean mItemsChangedWhileDispatchPrevented = false;
    private boolean mStructureChangedWhileDispatchPrevented = false;
    private boolean mOptionalIconsVisible = false;
    private boolean mIsClosing = false;
    private ArrayList<k> mTempShortcutItemList = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<p>> mPresenters = new CopyOnWriteArrayList<>();
    private boolean mGroupDividerEnabled = false;
    private ArrayList<k> mItems = new ArrayList<>();
    private ArrayList<k> mVisibleItems = new ArrayList<>();
    private boolean mIsVisibleItemsStale = true;
    private ArrayList<k> mActionItems = new ArrayList<>();
    private ArrayList<k> mNonActionItems = new ArrayList<>();
    private boolean mIsActionItemsStale = true;

    public interface a {
        boolean onMenuItemSelected(h hVar, MenuItem menuItem);

        void onMenuModeChange(h hVar);
    }

    public interface b {
        boolean a(k kVar);
    }

    public h(Context context) {
        this.mContext = context;
        this.mResources = context.getResources();
        setShortcutsVisibleInner(true);
    }

    private k createNewMenuItem(int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        return new k(this, i2, i3, i4, i5, charSequence, i6);
    }

    private void dispatchPresenterUpdate(boolean z) {
        if (this.mPresenters.isEmpty()) {
            return;
        }
        stopDispatchingItemsChanged();
        for (WeakReference<p> weakReference : this.mPresenters) {
            p pVar = weakReference.get();
            if (pVar == null) {
                this.mPresenters.remove(weakReference);
            } else {
                pVar.updateMenuView(z);
            }
        }
        startDispatchingItemsChanged();
    }

    private void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(PRESENTER_KEY);
        if (sparseParcelableArray == null || this.mPresenters.isEmpty()) {
            return;
        }
        for (WeakReference<p> weakReference : this.mPresenters) {
            p pVar = weakReference.get();
            if (pVar == null) {
                this.mPresenters.remove(weakReference);
            } else {
                int id = pVar.getId();
                if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    pVar.onRestoreInstanceState(parcelable);
                }
            }
        }
    }

    private void dispatchSaveInstanceState(Bundle bundle) {
        Parcelable parcelableOnSaveInstanceState;
        if (this.mPresenters.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        for (WeakReference<p> weakReference : this.mPresenters) {
            p pVar = weakReference.get();
            if (pVar == null) {
                this.mPresenters.remove(weakReference);
            } else {
                int id = pVar.getId();
                if (id > 0 && (parcelableOnSaveInstanceState = pVar.onSaveInstanceState()) != null) {
                    sparseArray.put(id, parcelableOnSaveInstanceState);
                }
            }
        }
        bundle.putSparseParcelableArray(PRESENTER_KEY, sparseArray);
    }

    private boolean dispatchSubMenuSelected(v vVar, p pVar) {
        if (this.mPresenters.isEmpty()) {
            return false;
        }
        boolean zOnSubMenuSelected = pVar != null ? pVar.onSubMenuSelected(vVar) : false;
        for (WeakReference<p> weakReference : this.mPresenters) {
            p pVar2 = weakReference.get();
            if (pVar2 == null) {
                this.mPresenters.remove(weakReference);
            } else if (!zOnSubMenuSelected) {
                zOnSubMenuSelected = pVar2.onSubMenuSelected(vVar);
            }
        }
        return zOnSubMenuSelected;
    }

    private static int findInsertIndex(ArrayList<k> arrayList, int i2) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).c() <= i2) {
                return size + 1;
            }
        }
        return 0;
    }

    private static int getOrdering(int i2) {
        int i3 = ((-65536) & i2) >> 16;
        if (i3 >= 0) {
            int[] iArr = sCategoryToOrder;
            if (i3 < iArr.length) {
                return (i2 & 65535) | (iArr[i3] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void removeItemAtInt(int i2, boolean z) {
        if (i2 < 0 || i2 >= this.mItems.size()) {
            return;
        }
        this.mItems.remove(i2);
        if (z) {
            onItemsChanged(true);
        }
    }

    private void setHeaderInternal(int i2, CharSequence charSequence, int i3, Drawable drawable, View view) {
        Resources resources = getResources();
        if (view != null) {
            this.mHeaderView = view;
            this.mHeaderTitle = null;
            this.mHeaderIcon = null;
        } else {
            if (i2 > 0) {
                this.mHeaderTitle = resources.getText(i2);
            } else if (charSequence != null) {
                this.mHeaderTitle = charSequence;
            }
            if (i3 > 0) {
                this.mHeaderIcon = androidx.core.content.a.c(getContext(), i3);
            } else if (drawable != null) {
                this.mHeaderIcon = drawable;
            }
            this.mHeaderView = null;
        }
        onItemsChanged(false);
    }

    private void setShortcutsVisibleInner(boolean z) {
        this.mShortcutsVisible = z && this.mResources.getConfiguration().keyboard != 1 && b.h.o.t.d(ViewConfiguration.get(this.mContext), this.mContext);
    }

    @Override // android.view.Menu
    public MenuItem add(int i2) {
        return addInternal(0, 0, 0, this.mResources.getString(i2));
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i3, int i4, int i5) {
        return addInternal(i2, i3, i4, this.mResources.getString(i5));
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        return addInternal(i2, i3, i4, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return addInternal(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        int i6;
        PackageManager packageManager = this.mContext.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i5 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i7 = 0; i7 < size; i7++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i7);
            int i8 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i8 < 0 ? intent : intentArr[i8]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i2, i3, i4, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i6 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i6] = intent3;
            }
        }
        return size;
    }

    protected MenuItem addInternal(int i2, int i3, int i4, CharSequence charSequence) {
        int ordering = getOrdering(i4);
        k kVarCreateNewMenuItem = createNewMenuItem(i2, i3, i4, ordering, charSequence, this.mDefaultShowAsAction);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.mCurrentMenuInfo;
        if (contextMenuInfo != null) {
            kVarCreateNewMenuItem.a(contextMenuInfo);
        }
        ArrayList<k> arrayList = this.mItems;
        arrayList.add(findInsertIndex(arrayList, ordering), kVarCreateNewMenuItem);
        onItemsChanged(true);
        return kVarCreateNewMenuItem;
    }

    public void addMenuPresenter(p pVar) {
        addMenuPresenter(pVar, this.mContext);
    }

    public void addMenuPresenter(p pVar, Context context) {
        this.mPresenters.add(new WeakReference<>(pVar));
        pVar.initForMenu(context, this);
        this.mIsActionItemsStale = true;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2) {
        return addSubMenu(0, 0, 0, this.mResources.getString(i2));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return addSubMenu(i2, i3, i4, this.mResources.getString(i5));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        k kVar = (k) addInternal(i2, i3, i4, charSequence);
        v vVar = new v(this.mContext, this, kVar);
        kVar.a(vVar);
        return vVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void changeMenuMode() {
        a aVar = this.mCallback;
        if (aVar != null) {
            aVar.onMenuModeChange(this);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        k kVar = this.mExpandedItem;
        if (kVar != null) {
            collapseItemActionView(kVar);
        }
        this.mItems.clear();
        onItemsChanged(true);
    }

    public void clearAll() {
        this.mPreventDispatchingItemsChanged = true;
        clear();
        clearHeader();
        this.mPresenters.clear();
        this.mPreventDispatchingItemsChanged = false;
        this.mItemsChangedWhileDispatchPrevented = false;
        this.mStructureChangedWhileDispatchPrevented = false;
        onItemsChanged(true);
    }

    public void clearHeader() {
        this.mHeaderIcon = null;
        this.mHeaderTitle = null;
        this.mHeaderView = null;
        onItemsChanged(false);
    }

    @Override // android.view.Menu
    public void close() {
        close(true);
    }

    public final void close(boolean z) {
        if (this.mIsClosing) {
            return;
        }
        this.mIsClosing = true;
        for (WeakReference<p> weakReference : this.mPresenters) {
            p pVar = weakReference.get();
            if (pVar == null) {
                this.mPresenters.remove(weakReference);
            } else {
                pVar.onCloseMenu(this, z);
            }
        }
        this.mIsClosing = false;
    }

    public boolean collapseItemActionView(k kVar) {
        boolean zCollapseItemActionView = false;
        if (!this.mPresenters.isEmpty() && this.mExpandedItem == kVar) {
            stopDispatchingItemsChanged();
            for (WeakReference<p> weakReference : this.mPresenters) {
                p pVar = weakReference.get();
                if (pVar != null) {
                    zCollapseItemActionView = pVar.collapseItemActionView(this, kVar);
                    if (zCollapseItemActionView) {
                        break;
                    }
                } else {
                    this.mPresenters.remove(weakReference);
                }
            }
            startDispatchingItemsChanged();
            if (zCollapseItemActionView) {
                this.mExpandedItem = null;
            }
        }
        return zCollapseItemActionView;
    }

    boolean dispatchMenuItemSelected(h hVar, MenuItem menuItem) {
        a aVar = this.mCallback;
        return aVar != null && aVar.onMenuItemSelected(hVar, menuItem);
    }

    public boolean expandItemActionView(k kVar) {
        boolean zExpandItemActionView = false;
        if (this.mPresenters.isEmpty()) {
            return false;
        }
        stopDispatchingItemsChanged();
        for (WeakReference<p> weakReference : this.mPresenters) {
            p pVar = weakReference.get();
            if (pVar != null) {
                zExpandItemActionView = pVar.expandItemActionView(this, kVar);
                if (zExpandItemActionView) {
                    break;
                }
            } else {
                this.mPresenters.remove(weakReference);
            }
        }
        startDispatchingItemsChanged();
        if (zExpandItemActionView) {
            this.mExpandedItem = kVar;
        }
        return zExpandItemActionView;
    }

    public int findGroupIndex(int i2) {
        return findGroupIndex(i2, 0);
    }

    public int findGroupIndex(int i2, int i3) {
        int size = size();
        if (i3 < 0) {
            i3 = 0;
        }
        while (i3 < size) {
            if (this.mItems.get(i3).getGroupId() == i2) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i2) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            k kVar = this.mItems.get(i3);
            if (kVar.getItemId() == i2) {
                return kVar;
            }
            if (kVar.hasSubMenu() && (menuItemFindItem = kVar.getSubMenu().findItem(i2)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public int findItemIndex(int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            if (this.mItems.get(i3).getItemId() == i2) {
                return i3;
            }
        }
        return -1;
    }

    k findItemWithShortcutForKey(int i2, KeyEvent keyEvent) {
        ArrayList<k> arrayList = this.mTempShortcutItemList;
        arrayList.clear();
        findItemsWithShortcutForKey(arrayList, i2, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zIsQwertyMode = isQwertyMode();
        for (int i3 = 0; i3 < size; i3++) {
            k kVar = arrayList.get(i3);
            char alphabeticShortcut = zIsQwertyMode ? kVar.getAlphabeticShortcut() : kVar.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (zIsQwertyMode && alphabeticShortcut == '\b' && i2 == 67))) {
                return kVar;
            }
        }
        return null;
    }

    void findItemsWithShortcutForKey(List<k> list, int i2, KeyEvent keyEvent) {
        boolean zIsQwertyMode = isQwertyMode();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i2 == 67) {
            int size = this.mItems.size();
            for (int i3 = 0; i3 < size; i3++) {
                k kVar = this.mItems.get(i3);
                if (kVar.hasSubMenu()) {
                    ((h) kVar.getSubMenu()).findItemsWithShortcutForKey(list, i2, keyEvent);
                }
                char alphabeticShortcut = zIsQwertyMode ? kVar.getAlphabeticShortcut() : kVar.getNumericShortcut();
                if (((modifiers & 69647) == ((zIsQwertyMode ? kVar.getAlphabeticModifiers() : kVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (zIsQwertyMode && alphabeticShortcut == '\b' && i2 == 67)) && kVar.isEnabled()) {
                        list.add(kVar);
                    }
                }
            }
        }
    }

    public void flagActionItems() {
        ArrayList<k> visibleItems = getVisibleItems();
        if (this.mIsActionItemsStale) {
            boolean zFlagActionItems = false;
            for (WeakReference<p> weakReference : this.mPresenters) {
                p pVar = weakReference.get();
                if (pVar == null) {
                    this.mPresenters.remove(weakReference);
                } else {
                    zFlagActionItems |= pVar.flagActionItems();
                }
            }
            if (zFlagActionItems) {
                this.mActionItems.clear();
                this.mNonActionItems.clear();
                int size = visibleItems.size();
                for (int i2 = 0; i2 < size; i2++) {
                    k kVar = visibleItems.get(i2);
                    (kVar.h() ? this.mActionItems : this.mNonActionItems).add(kVar);
                }
            } else {
                this.mActionItems.clear();
                this.mNonActionItems.clear();
                this.mNonActionItems.addAll(getVisibleItems());
            }
            this.mIsActionItemsStale = false;
        }
    }

    public ArrayList<k> getActionItems() {
        flagActionItems();
        return this.mActionItems;
    }

    protected String getActionViewStatesKey() {
        return ACTION_VIEW_STATES_KEY;
    }

    public Context getContext() {
        return this.mContext;
    }

    public k getExpandedItem() {
        return this.mExpandedItem;
    }

    public Drawable getHeaderIcon() {
        return this.mHeaderIcon;
    }

    public CharSequence getHeaderTitle() {
        return this.mHeaderTitle;
    }

    public View getHeaderView() {
        return this.mHeaderView;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i2) {
        return this.mItems.get(i2);
    }

    public ArrayList<k> getNonActionItems() {
        flagActionItems();
        return this.mNonActionItems;
    }

    boolean getOptionalIconsVisible() {
        return this.mOptionalIconsVisible;
    }

    Resources getResources() {
        return this.mResources;
    }

    public h getRootMenu() {
        return this;
    }

    public ArrayList<k> getVisibleItems() {
        if (!this.mIsVisibleItemsStale) {
            return this.mVisibleItems;
        }
        this.mVisibleItems.clear();
        int size = this.mItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            k kVar = this.mItems.get(i2);
            if (kVar.isVisible()) {
                this.mVisibleItems.add(kVar);
            }
        }
        this.mIsVisibleItemsStale = false;
        this.mIsActionItemsStale = true;
        return this.mVisibleItems;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.mOverrideVisibleItems) {
            return true;
        }
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mItems.get(i2).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean isGroupDividerEnabled() {
        return this.mGroupDividerEnabled;
    }

    boolean isQwertyMode() {
        return this.mQwertyMode;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return findItemWithShortcutForKey(i2, keyEvent) != null;
    }

    public boolean isShortcutsVisible() {
        return this.mShortcutsVisible;
    }

    void onItemActionRequestChanged(k kVar) {
        this.mIsActionItemsStale = true;
        onItemsChanged(true);
    }

    void onItemVisibleChanged(k kVar) {
        this.mIsVisibleItemsStale = true;
        onItemsChanged(true);
    }

    public void onItemsChanged(boolean z) {
        if (this.mPreventDispatchingItemsChanged) {
            this.mItemsChangedWhileDispatchPrevented = true;
            if (z) {
                this.mStructureChangedWhileDispatchPrevented = true;
                return;
            }
            return;
        }
        if (z) {
            this.mIsVisibleItemsStale = true;
            this.mIsActionItemsStale = true;
        }
        dispatchPresenterUpdate(z);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i2, int i3) {
        return performItemAction(findItem(i2), i3);
    }

    public boolean performItemAction(MenuItem menuItem, int i2) {
        return performItemAction(menuItem, null, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d A[PHI: r1
      0x002d: PHI (r1v4 boolean) = (r1v2 boolean), (r1v1 boolean), (r1v5 boolean) binds: [B:35:0x0068, B:23:0x003c, B:16:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean performItemAction(android.view.MenuItem r7, androidx.appcompat.view.menu.p r8, int r9) {
        /*
            r6 = this;
            androidx.appcompat.view.menu.k r7 = (androidx.appcompat.view.menu.k) r7
            r0 = 0
            if (r7 == 0) goto L6c
            boolean r1 = r7.isEnabled()
            if (r1 != 0) goto Lc
            goto L6c
        Lc:
            boolean r1 = r7.g()
            b.h.o.b r2 = r7.a()
            r3 = 1
            if (r2 == 0) goto L1f
            boolean r4 = r2.a()
            if (r4 == 0) goto L1f
            r4 = 1
            goto L20
        L1f:
            r4 = 0
        L20:
            boolean r5 = r7.f()
            if (r5 == 0) goto L31
            boolean r7 = r7.expandActionView()
            r1 = r1 | r7
            if (r1 == 0) goto L6b
        L2d:
            r6.close(r3)
            goto L6b
        L31:
            boolean r5 = r7.hasSubMenu()
            if (r5 != 0) goto L3f
            if (r4 == 0) goto L3a
            goto L3f
        L3a:
            r7 = r9 & 1
            if (r7 != 0) goto L6b
            goto L2d
        L3f:
            r9 = r9 & 4
            if (r9 != 0) goto L46
            r6.close(r0)
        L46:
            boolean r9 = r7.hasSubMenu()
            if (r9 != 0) goto L58
            androidx.appcompat.view.menu.v r9 = new androidx.appcompat.view.menu.v
            android.content.Context r0 = r6.getContext()
            r9.<init>(r0, r6, r7)
            r7.a(r9)
        L58:
            android.view.SubMenu r7 = r7.getSubMenu()
            androidx.appcompat.view.menu.v r7 = (androidx.appcompat.view.menu.v) r7
            if (r4 == 0) goto L63
            r2.a(r7)
        L63:
            boolean r7 = r6.dispatchSubMenuSelected(r7, r8)
            r1 = r1 | r7
            if (r1 != 0) goto L6b
            goto L2d
        L6b:
            return r1
        L6c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.h.performItemAction(android.view.MenuItem, androidx.appcompat.view.menu.p, int):boolean");
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        k kVarFindItemWithShortcutForKey = findItemWithShortcutForKey(i2, keyEvent);
        boolean zPerformItemAction = kVarFindItemWithShortcutForKey != null ? performItemAction(kVarFindItemWithShortcutForKey, i3) : false;
        if ((i3 & 2) != 0) {
            close(true);
        }
        return zPerformItemAction;
    }

    @Override // android.view.Menu
    public void removeGroup(int i2) {
        int iFindGroupIndex = findGroupIndex(i2);
        if (iFindGroupIndex >= 0) {
            int size = this.mItems.size() - iFindGroupIndex;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= size || this.mItems.get(iFindGroupIndex).getGroupId() != i2) {
                    break;
                }
                removeItemAtInt(iFindGroupIndex, false);
                i3 = i4;
            }
            onItemsChanged(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i2) {
        removeItemAtInt(findItemIndex(i2), true);
    }

    public void removeItemAt(int i2) {
        removeItemAtInt(i2, true);
    }

    public void removeMenuPresenter(p pVar) {
        for (WeakReference<p> weakReference : this.mPresenters) {
            p pVar2 = weakReference.get();
            if (pVar2 == null || pVar2 == pVar) {
                this.mPresenters.remove(weakReference);
            }
        }
    }

    public void restoreActionViewStates(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(getActionViewStatesKey());
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((v) item.getSubMenu()).restoreActionViewStates(bundle);
            }
        }
        int i3 = bundle.getInt(EXPANDED_ACTION_VIEW_ID);
        if (i3 <= 0 || (menuItemFindItem = findItem(i3)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public void restorePresenterStates(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveActionViewStates(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt(EXPANDED_ACTION_VIEW_ID, item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((v) item.getSubMenu()).saveActionViewStates(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(getActionViewStatesKey(), sparseArray);
        }
    }

    public void savePresenterStates(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void setCallback(a aVar) {
        this.mCallback = aVar;
    }

    public void setCurrentMenuInfo(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.mCurrentMenuInfo = contextMenuInfo;
    }

    public h setDefaultShowAsAction(int i2) {
        this.mDefaultShowAsAction = i2;
        return this;
    }

    void setExclusiveItemChecked(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.mItems.size();
        stopDispatchingItemsChanged();
        for (int i2 = 0; i2 < size; i2++) {
            k kVar = this.mItems.get(i2);
            if (kVar.getGroupId() == groupId && kVar.i() && kVar.isCheckable()) {
                kVar.b(kVar == menuItem);
            }
        }
        startDispatchingItemsChanged();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i2, boolean z, boolean z2) {
        int size = this.mItems.size();
        for (int i3 = 0; i3 < size; i3++) {
            k kVar = this.mItems.get(i3);
            if (kVar.getGroupId() == i2) {
                kVar.c(z2);
                kVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.mGroupDividerEnabled = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i2, boolean z) {
        int size = this.mItems.size();
        for (int i3 = 0; i3 < size; i3++) {
            k kVar = this.mItems.get(i3);
            if (kVar.getGroupId() == i2) {
                kVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i2, boolean z) {
        int size = this.mItems.size();
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            k kVar = this.mItems.get(i3);
            if (kVar.getGroupId() == i2 && kVar.e(z)) {
                z2 = true;
            }
        }
        if (z2) {
            onItemsChanged(true);
        }
    }

    protected h setHeaderIconInt(int i2) {
        setHeaderInternal(0, null, i2, null, null);
        return this;
    }

    protected h setHeaderIconInt(Drawable drawable) {
        setHeaderInternal(0, null, 0, drawable, null);
        return this;
    }

    protected h setHeaderTitleInt(int i2) {
        setHeaderInternal(i2, null, 0, null, null);
        return this;
    }

    protected h setHeaderTitleInt(CharSequence charSequence) {
        setHeaderInternal(0, charSequence, 0, null, null);
        return this;
    }

    protected h setHeaderViewInt(View view) {
        setHeaderInternal(0, null, 0, null, view);
        return this;
    }

    public void setOptionalIconsVisible(boolean z) {
        this.mOptionalIconsVisible = z;
    }

    public void setOverrideVisibleItems(boolean z) {
        this.mOverrideVisibleItems = z;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.mQwertyMode = z;
        onItemsChanged(false);
    }

    public void setShortcutsVisible(boolean z) {
        if (this.mShortcutsVisible == z) {
            return;
        }
        setShortcutsVisibleInner(z);
        onItemsChanged(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.mItems.size();
    }

    public void startDispatchingItemsChanged() {
        this.mPreventDispatchingItemsChanged = false;
        if (this.mItemsChangedWhileDispatchPrevented) {
            this.mItemsChangedWhileDispatchPrevented = false;
            onItemsChanged(this.mStructureChangedWhileDispatchPrevented);
        }
    }

    public void stopDispatchingItemsChanged() {
        if (this.mPreventDispatchingItemsChanged) {
            return;
        }
        this.mPreventDispatchingItemsChanged = true;
        this.mItemsChangedWhileDispatchPrevented = false;
        this.mStructureChangedWhileDispatchPrevented = false;
    }
}
