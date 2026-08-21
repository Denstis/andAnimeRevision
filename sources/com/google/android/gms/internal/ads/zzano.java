package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public interface zzano extends IInterface {
    void onActivityResult(int i2, int i3, Intent intent);

    void onBackPressed();

    void onCreate(Bundle bundle);

    void onDestroy();

    void onPause();

    void onRestart();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();

    void zzag(IObjectWrapper iObjectWrapper);

    void zzda();

    boolean zzsp();
}
