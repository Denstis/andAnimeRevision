package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.DataSource;

/* JADX INFO: loaded from: classes.dex */
public final class FileDataSourceFactory implements DataSource.Factory {
    private final TransferListener listener;

    public FileDataSourceFactory() {
        this(null);
    }

    public FileDataSourceFactory(TransferListener transferListener) {
        this.listener = transferListener;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
    public DataSource createDataSource() {
        FileDataSource fileDataSource = new FileDataSource();
        TransferListener transferListener = this.listener;
        if (transferListener != null) {
            fileDataSource.addTransferListener(transferListener);
        }
        return fileDataSource;
    }
}
