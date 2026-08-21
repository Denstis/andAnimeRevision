package androidx.recyclerview.widget;

import androidx.recyclerview.widget.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f1390a;

    interface a {
        a.b a(int i2, int i3, int i4, Object obj);

        void a(a.b bVar);
    }

    q(a aVar) {
        this.f1390a = aVar;
    }

    private void a(List<a.b> list, int i2, int i3) {
        a.b bVar = list.get(i2);
        a.b bVar2 = list.get(i3);
        int i4 = bVar2.f1243a;
        if (i4 == 1) {
            c(list, i2, bVar, i3, bVar2);
        } else if (i4 == 2) {
            a(list, i2, bVar, i3, bVar2);
        } else {
            if (i4 != 4) {
                return;
            }
            b(list, i2, bVar, i3, bVar2);
        }
    }

    private int b(List<a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f1243a != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void c(List<a.b> list, int i2, a.b bVar, int i3, a.b bVar2) {
        int i4 = bVar.f1246d < bVar2.f1244b ? -1 : 0;
        if (bVar.f1244b < bVar2.f1244b) {
            i4++;
        }
        int i5 = bVar2.f1244b;
        int i6 = bVar.f1244b;
        if (i5 <= i6) {
            bVar.f1244b = i6 + bVar2.f1246d;
        }
        int i7 = bVar2.f1244b;
        int i8 = bVar.f1246d;
        if (i7 <= i8) {
            bVar.f1246d = i8 + bVar2.f1246d;
        }
        bVar2.f1244b += i4;
        list.set(i2, bVar2);
        list.set(i3, bVar);
    }

    void a(List<a.b> list) {
        while (true) {
            int iB = b(list);
            if (iB == -1) {
                return;
            } else {
                a(list, iB, iB + 1);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00ca A[PHI: r0
      0x00ca: PHI (r0v12 int) = (r0v6 int), (r0v16 int) binds: [B:59:0x00c8, B:46:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(java.util.List<androidx.recyclerview.widget.a.b> r10, int r11, androidx.recyclerview.widget.a.b r12, int r13, androidx.recyclerview.widget.a.b r14) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.q.a(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void b(java.util.List<androidx.recyclerview.widget.a.b> r9, int r10, androidx.recyclerview.widget.a.b r11, int r12, androidx.recyclerview.widget.a.b r13) {
        /*
            r8 = this;
            int r0 = r11.f1246d
            int r1 = r13.f1244b
            r2 = 4
            r3 = 0
            r4 = 1
            if (r0 >= r1) goto Ld
            int r1 = r1 - r4
            r13.f1244b = r1
            goto L20
        Ld:
            int r5 = r13.f1246d
            int r1 = r1 + r5
            if (r0 >= r1) goto L20
            int r5 = r5 - r4
            r13.f1246d = r5
            androidx.recyclerview.widget.q$a r0 = r8.f1390a
            int r1 = r11.f1244b
            java.lang.Object r5 = r13.f1245c
            androidx.recyclerview.widget.a$b r0 = r0.a(r2, r1, r4, r5)
            goto L21
        L20:
            r0 = r3
        L21:
            int r1 = r11.f1244b
            int r5 = r13.f1244b
            if (r1 > r5) goto L2b
            int r5 = r5 + r4
            r13.f1244b = r5
            goto L41
        L2b:
            int r6 = r13.f1246d
            int r7 = r5 + r6
            if (r1 >= r7) goto L41
            int r5 = r5 + r6
            int r5 = r5 - r1
            androidx.recyclerview.widget.q$a r3 = r8.f1390a
            int r1 = r1 + r4
            java.lang.Object r4 = r13.f1245c
            androidx.recyclerview.widget.a$b r3 = r3.a(r2, r1, r5, r4)
            int r1 = r13.f1246d
            int r1 = r1 - r5
            r13.f1246d = r1
        L41:
            r9.set(r12, r11)
            int r11 = r13.f1246d
            if (r11 <= 0) goto L4c
            r9.set(r10, r13)
            goto L54
        L4c:
            r9.remove(r10)
            androidx.recyclerview.widget.q$a r11 = r8.f1390a
            r11.a(r13)
        L54:
            if (r0 == 0) goto L59
            r9.add(r10, r0)
        L59:
            if (r3 == 0) goto L5e
            r9.add(r10, r3)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.q.b(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }
}
