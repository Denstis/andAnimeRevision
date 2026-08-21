package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class i extends b.k.a.c {
    @Override // b.k.a.c
    public Dialog onCreateDialog(Bundle bundle) {
        throw null;
    }

    @Override // b.k.a.c
    public void setupDialog(Dialog dialog, int i2) {
        if (!(dialog instanceof h)) {
            super.setupDialog(dialog, i2);
            return;
        }
        h hVar = (h) dialog;
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                return;
            } else {
                dialog.getWindow().addFlags(24);
            }
        }
        hVar.supportRequestWindowFeature(1);
    }
}
