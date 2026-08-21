package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultDataSource implements DataSource {
    private static final String SCHEME_ASSET = "asset";
    private static final String SCHEME_CONTENT = "content";
    private static final String SCHEME_RAW = "rawresource";
    private static final String SCHEME_RTMP = "rtmp";
    private static final String TAG = "DefaultDataSource";
    private DataSource assetDataSource;
    private final DataSource baseDataSource;
    private DataSource contentDataSource;
    private final Context context;
    private DataSource dataSchemeDataSource;
    private DataSource dataSource;
    private DataSource fileDataSource;
    private DataSource rawResourceDataSource;
    private DataSource rtmpDataSource;
    private final List<TransferListener> transferListeners;

    public DefaultDataSource(Context context, DataSource dataSource) {
        this.context = context.getApplicationContext();
        this.baseDataSource = (DataSource) Assertions.checkNotNull(dataSource);
        this.transferListeners = new ArrayList();
    }

    @Deprecated
    public DefaultDataSource(Context context, TransferListener transferListener, DataSource dataSource) {
        this(context, dataSource);
        if (transferListener != null) {
            this.transferListeners.add(transferListener);
        }
    }

    @Deprecated
    public DefaultDataSource(Context context, TransferListener transferListener, String str, int i2, int i3, boolean z) {
        this(context, transferListener, new DefaultHttpDataSource(str, null, transferListener, i2, i3, z, null));
    }

    @Deprecated
    public DefaultDataSource(Context context, TransferListener transferListener, String str, boolean z) {
        this(context, transferListener, str, 8000, 8000, z);
    }

    public DefaultDataSource(Context context, String str, int i2, int i3, boolean z) {
        this(context, new DefaultHttpDataSource(str, null, i2, i3, z, null));
    }

    public DefaultDataSource(Context context, String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    private void addListenersToDataSource(DataSource dataSource) {
        for (int i2 = 0; i2 < this.transferListeners.size(); i2++) {
            dataSource.addTransferListener(this.transferListeners.get(i2));
        }
    }

    private DataSource getAssetDataSource() {
        if (this.assetDataSource == null) {
            this.assetDataSource = new AssetDataSource(this.context);
            addListenersToDataSource(this.assetDataSource);
        }
        return this.assetDataSource;
    }

    private DataSource getContentDataSource() {
        if (this.contentDataSource == null) {
            this.contentDataSource = new ContentDataSource(this.context);
            addListenersToDataSource(this.contentDataSource);
        }
        return this.contentDataSource;
    }

    private DataSource getDataSchemeDataSource() {
        if (this.dataSchemeDataSource == null) {
            this.dataSchemeDataSource = new DataSchemeDataSource();
            addListenersToDataSource(this.dataSchemeDataSource);
        }
        return this.dataSchemeDataSource;
    }

    private DataSource getFileDataSource() {
        if (this.fileDataSource == null) {
            this.fileDataSource = new FileDataSource();
            addListenersToDataSource(this.fileDataSource);
        }
        return this.fileDataSource;
    }

    private DataSource getRawResourceDataSource() {
        if (this.rawResourceDataSource == null) {
            this.rawResourceDataSource = new RawResourceDataSource(this.context);
            addListenersToDataSource(this.rawResourceDataSource);
        }
        return this.rawResourceDataSource;
    }

    private DataSource getRtmpDataSource() {
        if (this.rtmpDataSource == null) {
            try {
                this.rtmpDataSource = (DataSource) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                addListenersToDataSource(this.rtmpDataSource);
            } catch (ClassNotFoundException unused) {
                Log.w(TAG, "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.rtmpDataSource == null) {
                this.rtmpDataSource = this.baseDataSource;
            }
        }
        return this.rtmpDataSource;
    }

    private void maybeAddListenerToDataSource(DataSource dataSource, TransferListener transferListener) {
        if (dataSource != null) {
            dataSource.addTransferListener(transferListener);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        this.baseDataSource.addTransferListener(transferListener);
        this.transferListeners.add(transferListener);
        maybeAddListenerToDataSource(this.fileDataSource, transferListener);
        maybeAddListenerToDataSource(this.assetDataSource, transferListener);
        maybeAddListenerToDataSource(this.contentDataSource, transferListener);
        maybeAddListenerToDataSource(this.rtmpDataSource, transferListener);
        maybeAddListenerToDataSource(this.dataSchemeDataSource, transferListener);
        maybeAddListenerToDataSource(this.rawResourceDataSource, transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        DataSource dataSource = this.dataSource;
        if (dataSource != null) {
            try {
                dataSource.close();
            } finally {
                this.dataSource = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        DataSource dataSource = this.dataSource;
        return dataSource == null ? Collections.emptyMap() : dataSource.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        DataSource dataSource = this.dataSource;
        if (dataSource == null) {
            return null;
        }
        return dataSource.getUri();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    @Override // com.google.android.exoplayer2.upstream.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long open(com.google.android.exoplayer2.upstream.DataSpec r3) {
        /*
            r2 = this;
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.dataSource
            if (r0 != 0) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            com.google.android.exoplayer2.util.Assertions.checkState(r0)
            android.net.Uri r0 = r3.uri
            java.lang.String r0 = r0.getScheme()
            android.net.Uri r1 = r3.uri
            boolean r1 = com.google.android.exoplayer2.util.Util.isLocalFileUri(r1)
            if (r1 == 0) goto L2c
            android.net.Uri r0 = r3.uri
            java.lang.String r0 = r0.getPath()
            java.lang.String r1 = "/android_asset/"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L27
            goto L34
        L27:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getFileDataSource()
            goto L38
        L2c:
            java.lang.String r1 = "asset"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L3b
        L34:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getAssetDataSource()
        L38:
            r2.dataSource = r0
            goto L72
        L3b:
            java.lang.String r1 = "content"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L48
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getContentDataSource()
            goto L38
        L48:
            java.lang.String r1 = "rtmp"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L55
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getRtmpDataSource()
            goto L38
        L55:
            java.lang.String r1 = "data"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L62
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getDataSchemeDataSource()
            goto L38
        L62:
            java.lang.String r1 = "rawresource"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L6f
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getRawResourceDataSource()
            goto L38
        L6f:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.baseDataSource
            goto L38
        L72:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.dataSource
            long r0 = r0.open(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.DefaultDataSource.open(com.google.android.exoplayer2.upstream.DataSpec):long");
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i2, int i3) {
        return ((DataSource) Assertions.checkNotNull(this.dataSource)).read(bArr, i2, i3);
    }
}
