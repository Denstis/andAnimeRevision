package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import androidx.appcompat.app.i;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetDialogFragment extends i {
    @Override // androidx.appcompat.app.i, b.k.a.c
    public Dialog onCreateDialog(Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }
}
