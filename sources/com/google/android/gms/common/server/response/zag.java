package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
final class zag implements FastParser.zaa<BigInteger> {
    zag() {
    }

    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ BigInteger zah(FastParser fastParser, BufferedReader bufferedReader) {
        return fastParser.zaf(bufferedReader);
    }
}
