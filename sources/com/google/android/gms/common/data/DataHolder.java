package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.sqlite.CursorWrapper;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@KeepName
@SafeParcelable.Class(creator = "DataHolderCreator", validate = true)
public final class DataHolder extends AbstractSafeParcelable implements Closeable {

    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zac();
    private static final Builder zaly = new zab(new String[0], null);
    private boolean mClosed;

    @SafeParcelable.VersionField(id = 1000)
    private final int zalf;

    @SafeParcelable.Field(getter = "getColumns", id = 1)
    private final String[] zalq;
    private Bundle zalr;

    @SafeParcelable.Field(getter = "getWindows", id = 2)
    private final CursorWindow[] zals;

    @SafeParcelable.Field(getter = "getStatusCode", id = 3)
    private final int zalt;

    @SafeParcelable.Field(getter = "getMetadata", id = 4)
    private final Bundle zalu;
    private int[] zalv;
    private int zalw;
    private boolean zalx;

    @KeepForSdk
    public static class Builder {
        private final String[] zalq;
        private final ArrayList<HashMap<String, Object>> zalz;
        private final String zama;
        private final HashMap<Object, Integer> zamb;
        private boolean zamc;
        private String zamd;

        private Builder(String[] strArr, String str) {
            this.zalq = (String[]) Preconditions.checkNotNull(strArr);
            this.zalz = new ArrayList<>();
            this.zama = str;
            this.zamb = new HashMap<>();
            this.zamc = false;
            this.zamd = null;
        }

        /* synthetic */ Builder(String[] strArr, String str, zab zabVar) {
            this(strArr, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @KeepForSdk
        public DataHolder build(int i2) {
            return new DataHolder(this, i2, (Bundle) null, (zab) (0 == true ? 1 : 0));
        }

        @KeepForSdk
        public DataHolder build(int i2, Bundle bundle) {
            return new DataHolder(this, i2, bundle, -1, (zab) null);
        }

        @KeepForSdk
        public Builder withRow(ContentValues contentValues) {
            Asserts.checkNotNull(contentValues);
            HashMap<String, Object> map = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                map.put(entry.getKey(), entry.getValue());
            }
            return zaa(map);
        }

        public Builder zaa(HashMap<String, Object> map) {
            Object obj;
            int iIntValue;
            Asserts.checkNotNull(map);
            String str = this.zama;
            if (str == null || (obj = map.get(str)) == null) {
                iIntValue = -1;
            } else {
                Integer num = this.zamb.get(obj);
                if (num == null) {
                    this.zamb.put(obj, Integer.valueOf(this.zalz.size()));
                    iIntValue = -1;
                } else {
                    iIntValue = num.intValue();
                }
            }
            if (iIntValue == -1) {
                this.zalz.add(map);
            } else {
                this.zalz.remove(iIntValue);
                this.zalz.add(iIntValue, map);
            }
            this.zamc = false;
            return this;
        }
    }

    public static class zaa extends RuntimeException {
        public zaa(String str) {
            super(str);
        }
    }

    @SafeParcelable.Constructor
    DataHolder(@SafeParcelable.Param(id = 1000) int i2, @SafeParcelable.Param(id = 1) String[] strArr, @SafeParcelable.Param(id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) Bundle bundle) {
        this.mClosed = false;
        this.zalx = true;
        this.zalf = i2;
        this.zalq = strArr;
        this.zals = cursorWindowArr;
        this.zalt = i3;
        this.zalu = bundle;
    }

    @KeepForSdk
    public DataHolder(Cursor cursor, int i2, Bundle bundle) {
        this(new CursorWrapper(cursor), i2, bundle);
    }

    private DataHolder(Builder builder, int i2, Bundle bundle) {
        this(builder.zalq, zaa(builder, -1), i2, (Bundle) null);
    }

    private DataHolder(Builder builder, int i2, Bundle bundle, int i3) {
        this(builder.zalq, zaa(builder, -1), i2, bundle);
    }

    /* synthetic */ DataHolder(Builder builder, int i2, Bundle bundle, int i3, zab zabVar) {
        this(builder, i2, bundle, -1);
    }

    /* synthetic */ DataHolder(Builder builder, int i2, Bundle bundle, zab zabVar) {
        this(builder, i2, (Bundle) null);
    }

    private DataHolder(CursorWrapper cursorWrapper, int i2, Bundle bundle) {
        this(cursorWrapper.getColumnNames(), zaa(cursorWrapper), i2, bundle);
    }

    @KeepForSdk
    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.zalx = true;
        this.zalf = 1;
        this.zalq = (String[]) Preconditions.checkNotNull(strArr);
        this.zals = (CursorWindow[]) Preconditions.checkNotNull(cursorWindowArr);
        this.zalt = i2;
        this.zalu = bundle;
        zaca();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @KeepForSdk
    public static Builder builder(String[] strArr) {
        return new Builder(strArr, null, 0 == true ? 1 : 0);
    }

    @KeepForSdk
    public static DataHolder empty(int i2) {
        return new DataHolder(zaly, i2, (Bundle) null);
    }

    private final void zaa(String str, int i2) {
        Bundle bundle = this.zalr;
        if (bundle == null || !bundle.containsKey(str)) {
            String strValueOf = String.valueOf(str);
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "No such column: ".concat(strValueOf) : new String("No such column: "));
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i2 < 0 || i2 >= this.zalw) {
            throw new CursorIndexOutOfBoundsException(i2, this.zalw);
        }
    }

    private static CursorWindow[] zaa(Builder builder, int i2) {
        long jLongValue;
        if (builder.zalq.length == 0) {
            return new CursorWindow[0];
        }
        List listSubList = (i2 < 0 || i2 >= builder.zalz.size()) ? builder.zalz : builder.zalz.subList(0, i2);
        int size = listSubList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow);
        cursorWindow.setNumColumns(builder.zalq.length);
        CursorWindow cursorWindow2 = cursorWindow;
        int i3 = 0;
        boolean z = false;
        while (i3 < size) {
            try {
                if (!cursorWindow2.allocRow()) {
                    StringBuilder sb = new StringBuilder(72);
                    sb.append("Allocating additional cursor window for large data set (row ");
                    sb.append(i3);
                    sb.append(")");
                    Log.d("DataHolder", sb.toString());
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i3);
                    cursorWindow2.setNumColumns(builder.zalq.length);
                    arrayList.add(cursorWindow2);
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                    }
                }
                Map map = (Map) listSubList.get(i3);
                boolean zPutDouble = true;
                for (int i4 = 0; i4 < builder.zalq.length && zPutDouble; i4++) {
                    String str = builder.zalq[i4];
                    Object obj = map.get(str);
                    if (obj == null) {
                        zPutDouble = cursorWindow2.putNull(i3, i4);
                    } else if (obj instanceof String) {
                        zPutDouble = cursorWindow2.putString((String) obj, i3, i4);
                    } else {
                        if (obj instanceof Long) {
                            jLongValue = ((Long) obj).longValue();
                        } else if (obj instanceof Integer) {
                            zPutDouble = cursorWindow2.putLong(((Integer) obj).intValue(), i3, i4);
                        } else if (obj instanceof Boolean) {
                            jLongValue = ((Boolean) obj).booleanValue() ? 1L : 0L;
                        } else if (obj instanceof byte[]) {
                            zPutDouble = cursorWindow2.putBlob((byte[]) obj, i3, i4);
                        } else if (obj instanceof Double) {
                            zPutDouble = cursorWindow2.putDouble(((Double) obj).doubleValue(), i3, i4);
                        } else {
                            if (!(obj instanceof Float)) {
                                String strValueOf = String.valueOf(obj);
                                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(strValueOf).length());
                                sb2.append("Unsupported object for column ");
                                sb2.append(str);
                                sb2.append(": ");
                                sb2.append(strValueOf);
                                throw new IllegalArgumentException(sb2.toString());
                            }
                            zPutDouble = cursorWindow2.putDouble(((Float) obj).floatValue(), i3, i4);
                        }
                        zPutDouble = cursorWindow2.putLong(jLongValue, i3, i4);
                    }
                }
                if (zPutDouble) {
                    z = false;
                } else {
                    if (z) {
                        throw new zaa("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                    }
                    StringBuilder sb3 = new StringBuilder(74);
                    sb3.append("Couldn't populate window data for row ");
                    sb3.append(i3);
                    sb3.append(" - allocating new window.");
                    Log.d("DataHolder", sb3.toString());
                    cursorWindow2.freeLastRow();
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i3);
                    cursorWindow2.setNumColumns(builder.zalq.length);
                    arrayList.add(cursorWindow2);
                    i3--;
                    z = true;
                }
                i3++;
            } catch (RuntimeException e2) {
                int size2 = arrayList.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    ((CursorWindow) arrayList.get(i5)).close();
                }
                throw e2;
            }
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    private static CursorWindow[] zaa(CursorWrapper cursorWrapper) {
        int startPosition;
        ArrayList arrayList = new ArrayList();
        try {
            int count = cursorWrapper.getCount();
            CursorWindow window = cursorWrapper.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                startPosition = 0;
            } else {
                window.acquireReference();
                cursorWrapper.setWindow(null);
                arrayList.add(window);
                startPosition = window.getNumRows();
            }
            while (startPosition < count) {
                if (!cursorWrapper.moveToPosition(startPosition)) {
                    break;
                }
                CursorWindow window2 = cursorWrapper.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    cursorWrapper.setWindow(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(startPosition);
                    cursorWrapper.fillWindow(startPosition, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                startPosition = window2.getStartPosition() + window2.getNumRows();
            }
            cursorWrapper.close();
            return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
        } catch (Throwable th) {
            cursorWrapper.close();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public final void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i2 = 0; i2 < this.zals.length; i2++) {
                    this.zals[i2].close();
                }
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.zalx && this.zals.length > 0 && !isClosed()) {
                close();
                String string = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(string);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    @KeepForSdk
    public final boolean getBoolean(String str, int i2, int i3) {
        zaa(str, i2);
        return Long.valueOf(this.zals[i3].getLong(i2, this.zalr.getInt(str))).longValue() == 1;
    }

    @KeepForSdk
    public final byte[] getByteArray(String str, int i2, int i3) {
        zaa(str, i2);
        return this.zals[i3].getBlob(i2, this.zalr.getInt(str));
    }

    @KeepForSdk
    public final int getCount() {
        return this.zalw;
    }

    @KeepForSdk
    public final int getInteger(String str, int i2, int i3) {
        zaa(str, i2);
        return this.zals[i3].getInt(i2, this.zalr.getInt(str));
    }

    @KeepForSdk
    public final long getLong(String str, int i2, int i3) {
        zaa(str, i2);
        return this.zals[i3].getLong(i2, this.zalr.getInt(str));
    }

    @KeepForSdk
    public final Bundle getMetadata() {
        return this.zalu;
    }

    @KeepForSdk
    public final int getStatusCode() {
        return this.zalt;
    }

    @KeepForSdk
    public final String getString(String str, int i2, int i3) {
        zaa(str, i2);
        return this.zals[i3].getString(i2, this.zalr.getInt(str));
    }

    @KeepForSdk
    public final int getWindowIndex(int i2) {
        int i3 = 0;
        Preconditions.checkState(i2 >= 0 && i2 < this.zalw);
        while (true) {
            int[] iArr = this.zalv;
            if (i3 >= iArr.length) {
                break;
            }
            if (i2 < iArr[i3]) {
                i3--;
                break;
            }
            i3++;
        }
        return i3 == this.zalv.length ? i3 - 1 : i3;
    }

    @KeepForSdk
    public final boolean hasColumn(String str) {
        return this.zalr.containsKey(str);
    }

    @KeepForSdk
    public final boolean hasNull(String str, int i2, int i3) {
        zaa(str, i2);
        return this.zals[i3].isNull(i2, this.zalr.getInt(str));
    }

    @KeepForSdk
    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.zalq, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zals, i2, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.zalf);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        if ((i2 & 1) != 0) {
            close();
        }
    }

    public final float zaa(String str, int i2, int i3) {
        zaa(str, i2);
        return this.zals[i3].getFloat(i2, this.zalr.getInt(str));
    }

    public final void zaa(String str, int i2, int i3, CharArrayBuffer charArrayBuffer) {
        zaa(str, i2);
        this.zals[i3].copyStringToBuffer(i2, this.zalr.getInt(str), charArrayBuffer);
    }

    public final double zab(String str, int i2, int i3) {
        zaa(str, i2);
        return this.zals[i3].getDouble(i2, this.zalr.getInt(str));
    }

    public final void zaca() {
        this.zalr = new Bundle();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = this.zalq;
            if (i3 >= strArr.length) {
                break;
            }
            this.zalr.putInt(strArr[i3], i3);
            i3++;
        }
        this.zalv = new int[this.zals.length];
        int numRows = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zals;
            if (i2 >= cursorWindowArr.length) {
                this.zalw = numRows;
                return;
            }
            this.zalv[i2] = numRows;
            numRows += this.zals[i2].getNumRows() - (numRows - cursorWindowArr[i2].getStartPosition());
            i2++;
        }
    }
}
