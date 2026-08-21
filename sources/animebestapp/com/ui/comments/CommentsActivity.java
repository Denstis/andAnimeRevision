package animebestapp.com.ui.comments;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Comment;
import animebestapp.com.ui.comments.a;
import animebestapp.com.utils.WrapContentLinearLayoutManager;
import g.m.l;
import g.m.m;
import g.p.b.f;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CommentsActivity extends animebestapp.com.ui.a.a<d, animebestapp.com.ui.comments.b> implements d {
    private final animebestapp.com.ui.comments.a t = new animebestapp.com.ui.comments.a();
    private HashMap u;

    static final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CommentsActivity.this.finish();
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            animebestapp.com.ui.comments.b bVarA = CommentsActivity.a(CommentsActivity.this);
            EditText editText = (EditText) CommentsActivity.this.h(animebestapp.com.a.etComment);
            f.a((Object) editText, "etComment");
            bVarA.a(editText.getText().toString(), CommentsActivity.this.y());
            ((EditText) CommentsActivity.this.h(animebestapp.com.a.etComment)).setText("");
        }
    }

    public static final class c extends RecyclerView.i {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a(int i2, int i3) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a(int i2, int i3, int i4) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a(int i2, int i3, Object obj) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void b(int i2, int i3) {
            if (i2 == 0) {
                ((RecyclerView) CommentsActivity.this.h(animebestapp.com.a.rvList)).scrollToPosition(0);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void c(int i2, int i3) {
        }
    }

    public static final /* synthetic */ animebestapp.com.ui.comments.b a(CommentsActivity commentsActivity) {
        return (animebestapp.com.ui.comments.b) commentsActivity.r;
    }

    @Override // animebestapp.com.ui.comments.d
    public void d(List<Comment> list) {
        List listA;
        Object next;
        f.b(list, "items");
        if (this.t.a() == a.e.PROGRESS && list.isEmpty()) {
            listA = l.a();
        } else {
            ArrayList arrayList = new ArrayList(m.a(list, 10));
            for (Comment comment : list) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        next = it.next();
                        if (f.a((Object) ((Comment) next).getId(), (Object) comment.getParent())) {
                            break;
                        }
                    } else {
                        next = null;
                        break;
                    }
                }
                arrayList.add(new a.c(comment, (Comment) next, null, 4, null));
            }
            listA = arrayList;
        }
        this.t.a(a.e.FINISH);
        this.t.a(listA);
        TextView textView = (TextView) h(animebestapp.com.a.tvEmpty);
        f.a((Object) textView, "tvEmpty");
        textView.setVisibility(this.t.getItemCount() > 0 ? 8 : 0);
        RecyclerView recyclerView = (RecyclerView) h(animebestapp.com.a.rvList);
        f.a((Object) recyclerView, "rvList");
        recyclerView.setVisibility(this.t.getItemCount() > 0 ? 0 : 8);
    }

    @Override // animebestapp.com.ui.a.a
    public View h(int i2) {
        if (this.u == null) {
            this.u = new HashMap();
        }
        View view = (View) this.u.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.u.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // animebestapp.com.ui.comments.d
    public void h() {
        ((RecyclerView) h(animebestapp.com.a.rvList)).scrollToPosition(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    @Override // c.b.a.c.f.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public animebestapp.com.ui.comments.b l() {
        /*
            r4 = this;
            java.lang.String r0 = "CommentsActivity"
            java.lang.String r1 = "createPresenter"
            android.util.Log.d(r0, r1)
            android.content.Intent r1 = r4.getIntent()
            java.lang.String r2 = "id"
            java.lang.String r1 = r1.getStringExtra(r2)
            if (r1 == 0) goto L1e
            int r2 = r1.length()
            if (r2 != 0) goto L1b
            r2 = 1
            goto L1c
        L1b:
            r2 = 0
        L1c:
            if (r2 == 0) goto L3d
        L1e:
            com.google.gson.Gson r1 = new com.google.gson.Gson
            r1.<init>()
            android.content.Intent r2 = r4.getIntent()
            java.lang.String r3 = "content"
            java.lang.String r2 = r2.getStringExtra(r3)
            java.lang.Class<animebestapp.com.models.Anime> r3 = animebestapp.com.models.Anime.class
            java.lang.Object r1 = r1.fromJson(r2, r3)
            animebestapp.com.models.Anime r1 = (animebestapp.com.models.Anime) r1
            long r1 = r1.getId()
            java.lang.String r1 = java.lang.String.valueOf(r1)
        L3d:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "id: "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r0, r2)
            animebestapp.com.ui.comments.b r0 = new animebestapp.com.ui.comments.b
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.ui.comments.CommentsActivity.l():animebestapp.com.ui.comments.b");
    }

    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_comments);
        a((Toolbar) h(animebestapp.com.a.toolbar));
        androidx.appcompat.app.a aVarU = u();
        if (aVarU == null) {
            f.a();
            throw null;
        }
        aVarU.d(true);
        androidx.appcompat.app.a aVarU2 = u();
        if (aVarU2 == null) {
            f.a();
            throw null;
        }
        aVarU2.e(true);
        ((Toolbar) h(animebestapp.com.a.toolbar)).setNavigationOnClickListener(new a());
        RecyclerView recyclerView = (RecyclerView) h(animebestapp.com.a.rvList);
        f.a((Object) recyclerView, "rvList");
        recyclerView.setLayoutManager(new WrapContentLinearLayoutManager(this));
        RecyclerView recyclerView2 = (RecyclerView) h(animebestapp.com.a.rvList);
        f.a((Object) recyclerView2, "rvList");
        recyclerView2.setAdapter(this.t);
        animebestapp.com.ui.comments.b bVar = (animebestapp.com.ui.comments.b) this.r;
        RecyclerView recyclerView3 = (RecyclerView) h(animebestapp.com.a.rvList);
        f.a((Object) recyclerView3, "rvList");
        bVar.a(recyclerView3);
        ((ImageView) h(animebestapp.com.a.btnSend)).setOnClickListener(new b());
        this.t.registerAdapterDataObserver(new c());
    }

    public final String y() throws SocketException {
        Object next;
        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        if (networkInterfaces == null) {
            return "";
        }
        ArrayList<NetworkInterface> list = Collections.list(networkInterfaces);
        f.a((Object) list, "java.util.Collections.list(this)");
        if (list == null) {
            return "";
        }
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (NetworkInterface networkInterface : list) {
            f.a((Object) networkInterface, "networkInterface");
            Enumeration<InetAddress> inetAddresses = networkInterface.getInetAddresses();
            if (inetAddresses != null) {
                ArrayList list2 = Collections.list(inetAddresses);
                f.a((Object) list2, "java.util.Collections.list(this)");
                if (list2 != null) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        InetAddress inetAddress = (InetAddress) next;
                        f.a((Object) inetAddress, "it");
                        if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet4Address)) {
                            break;
                        }
                    }
                    InetAddress inetAddress2 = (InetAddress) next;
                    if (inetAddress2 != null) {
                        String hostAddress = inetAddress2.getHostAddress();
                        f.a((Object) hostAddress, "it.hostAddress");
                        return hostAddress;
                    }
                } else {
                    continue;
                }
            }
            arrayList.add(null);
        }
        return "";
    }
}
