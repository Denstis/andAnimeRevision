package com.google.android.exoplayer2.offline;

import android.net.Uri;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class DownloadAction {
    private static Deserializer[] defaultDeserializers;
    public final byte[] data;
    public final boolean isRemoveAction;
    public final String type;
    public final Uri uri;
    public final int version;

    public static abstract class Deserializer {
        public final String type;
        public final int version;

        public Deserializer(String str, int i2) {
            this.type = str;
            this.version = i2;
        }

        public abstract DownloadAction readFromStream(int i2, DataInputStream dataInputStream);
    }

    protected DownloadAction(String str, int i2, Uri uri, boolean z, byte[] bArr) {
        this.type = str;
        this.version = i2;
        this.uri = uri;
        this.isRemoveAction = z;
        this.data = bArr == null ? Util.EMPTY_BYTE_ARRAY : bArr;
    }

    public static DownloadAction deserializeFromStream(Deserializer[] deserializerArr, InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        String utf = dataInputStream.readUTF();
        int i2 = dataInputStream.readInt();
        for (Deserializer deserializer : deserializerArr) {
            if (utf.equals(deserializer.type) && deserializer.version >= i2) {
                return deserializer.readFromStream(i2, dataInputStream);
            }
        }
        throw new DownloadException("No deserializer found for:" + utf + ", " + i2);
    }

    public static synchronized Deserializer[] getDefaultDeserializers() {
        int i2;
        int i3;
        int i4;
        if (defaultDeserializers != null) {
            return defaultDeserializers;
        }
        Deserializer[] deserializerArr = new Deserializer[4];
        deserializerArr[0] = ProgressiveDownloadAction.DESERIALIZER;
        try {
            i2 = 2;
            try {
                deserializerArr[1] = getDeserializer(Class.forName("com.google.android.exoplayer2.source.dash.offline.DashDownloadAction"));
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            i2 = 1;
        }
        try {
            i3 = i2 + 1;
            try {
                deserializerArr[i2] = getDeserializer(Class.forName("com.google.android.exoplayer2.source.hls.offline.HlsDownloadAction"));
            } catch (Exception unused3) {
            }
        } catch (Exception unused4) {
            i3 = i2;
        }
        try {
            i4 = i3 + 1;
            try {
                deserializerArr[i3] = getDeserializer(Class.forName("com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloadAction"));
            } catch (Exception unused5) {
            }
        } catch (Exception unused6) {
            i4 = i3;
        }
        defaultDeserializers = (Deserializer[]) Arrays.copyOf((Object[]) Assertions.checkNotNull(deserializerArr), i4);
        return defaultDeserializers;
    }

    private static Deserializer getDeserializer(Class<?> cls) {
        return (Deserializer) Assertions.checkNotNull(cls.getDeclaredField("DESERIALIZER").get(null));
    }

    public static void serializeToStream(DownloadAction downloadAction, OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeUTF(downloadAction.type);
        dataOutputStream.writeInt(downloadAction.version);
        downloadAction.writeToStream(dataOutputStream);
        dataOutputStream.flush();
    }

    public abstract Downloader createDownloader(DownloaderConstructorHelper downloaderConstructorHelper);

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DownloadAction downloadAction = (DownloadAction) obj;
        return this.type.equals(downloadAction.type) && this.version == downloadAction.version && this.uri.equals(downloadAction.uri) && this.isRemoveAction == downloadAction.isRemoveAction && Arrays.equals(this.data, downloadAction.data);
    }

    public List<StreamKey> getKeys() {
        return Collections.emptyList();
    }

    public int hashCode() {
        return (((this.uri.hashCode() * 31) + (this.isRemoveAction ? 1 : 0)) * 31) + Arrays.hashCode(this.data);
    }

    public boolean isSameMedia(DownloadAction downloadAction) {
        return this.uri.equals(downloadAction.uri);
    }

    public final byte[] toByteArray() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            serializeToStream(this, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException();
        }
    }

    protected abstract void writeToStream(DataOutputStream dataOutputStream);
}
