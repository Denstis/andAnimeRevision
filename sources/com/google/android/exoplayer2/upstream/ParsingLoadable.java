package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ParsingLoadable<T> implements Loader.Loadable {
    private final StatsDataSource dataSource;
    public final DataSpec dataSpec;
    private final Parser<? extends T> parser;
    private volatile T result;
    public final int type;

    public interface Parser<T> {
        T parse(Uri uri, InputStream inputStream);
    }

    public ParsingLoadable(DataSource dataSource, Uri uri, int i2, Parser<? extends T> parser) {
        this(dataSource, new DataSpec(uri, 3), i2, parser);
    }

    public ParsingLoadable(DataSource dataSource, DataSpec dataSpec, int i2, Parser<? extends T> parser) {
        this.dataSource = new StatsDataSource(dataSource);
        this.dataSpec = dataSpec;
        this.type = i2;
        this.parser = parser;
    }

    public static <T> T load(DataSource dataSource, Parser<? extends T> parser, Uri uri, int i2) {
        ParsingLoadable parsingLoadable = new ParsingLoadable(dataSource, uri, i2, parser);
        parsingLoadable.load();
        return (T) Assertions.checkNotNull(parsingLoadable.getResult());
    }

    public long bytesLoaded() {
        return this.dataSource.getBytesRead();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
    }

    public Map<String, List<String>> getResponseHeaders() {
        return this.dataSource.getLastResponseHeaders();
    }

    public final T getResult() {
        return this.result;
    }

    public Uri getUri() {
        return this.dataSource.getLastOpenedUri();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() {
        this.dataSource.resetBytesRead();
        DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(this.dataSource, this.dataSpec);
        try {
            dataSourceInputStream.open();
            this.result = this.parser.parse((Uri) Assertions.checkNotNull(this.dataSource.getUri()), dataSourceInputStream);
        } finally {
            Util.closeQuietly(dataSourceInputStream);
        }
    }
}
