package animebestapp.com.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.menu.d.e;
import com.google.android.material.navigation.NavigationView;
import g.j;
import g.l;
import g.m.m;
import g.p.b.d;
import g.p.b.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SlideMenuView extends NavigationView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f1545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f1546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f1547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f1548e;

    private static final class a extends RecyclerView.g<RecyclerView.d0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f1549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1551c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f1552d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f1553e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final View f1554f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final b f1555g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List<? extends animebestapp.com.menu.d.d> f1556h;

        /* JADX INFO: renamed from: animebestapp.com.menu.SlideMenuView$a$a, reason: collision with other inner class name */
        public static final class C0032a extends RecyclerView.d0 {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0032a(ViewGroup viewGroup) {
                super(animebestapp.com.utils.d.a(viewGroup, R.layout.slide_menu_category_item));
                g.p.b.f.b(viewGroup, "parent");
            }

            public final void a(animebestapp.com.menu.d.d dVar, boolean z) {
                g.p.b.f.b(dVar, "item");
                View viewFindViewById = this.itemView.findViewById(R.id.divider);
                g.p.b.f.a((Object) viewFindViewById, "itemView.findViewById<View>(R.id.divider)");
                viewFindViewById.setVisibility(z ? 8 : 0);
                View viewFindViewById2 = this.itemView.findViewById(R.id.tvTitle);
                g.p.b.f.a((Object) viewFindViewById2, "itemView.findViewById<TextView>(R.id.tvTitle)");
                ((TextView) viewFindViewById2).setText(dVar.getTitle());
            }
        }

        public static final class b extends RecyclerView.d0 {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(View view) {
                super(view);
                g.p.b.f.b(view, "parent");
            }
        }

        public static final class c extends RecyclerView.d0 {

            /* JADX INFO: renamed from: animebestapp.com.menu.SlideMenuView$a$c$a, reason: collision with other inner class name */
            static final class ViewOnClickListenerC0033a implements View.OnClickListener {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ g.p.a.b f1557b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ animebestapp.com.menu.d.d f1558c;

                ViewOnClickListenerC0033a(g.p.a.b bVar, animebestapp.com.menu.d.d dVar) {
                    this.f1557b = bVar;
                    this.f1558c = dVar;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1557b.a(this.f1558c.getKey());
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(ViewGroup viewGroup) {
                super(animebestapp.com.utils.d.a(viewGroup, R.layout.slide_menu_item));
                g.p.b.f.b(viewGroup, "parent");
            }

            public final void a(animebestapp.com.menu.d.d dVar, g.p.a.b<? super String, l> bVar) {
                g.p.b.f.b(dVar, "item");
                g.p.b.f.b(bVar, "callback");
                this.itemView.setOnClickListener(new ViewOnClickListenerC0033a(bVar, dVar));
                View view = this.itemView;
                if (view == null) {
                    throw new j("null cannot be cast to non-null type android.widget.TextView");
                }
                ((TextView) view).setText(dVar.getTitle());
            }
        }

        public static final class d extends RecyclerView.d0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final RecyclerView f1559a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final TextView f1560b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final ImageView f1561c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final Drawable f1562d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final Drawable f1563e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private final b f1564f;

            /* JADX INFO: renamed from: animebestapp.com.menu.SlideMenuView$a$d$a, reason: collision with other inner class name */
            static final class ViewOnClickListenerC0034a implements View.OnClickListener {
                ViewOnClickListenerC0034a() {
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ImageView imageView = d.this.f1561c;
                    RecyclerView recyclerView = d.this.f1559a;
                    g.p.b.f.a((Object) recyclerView, "recyclerView");
                    imageView.setImageDrawable(recyclerView.getVisibility() != 0 ? d.this.f1562d : d.this.f1563e);
                    RecyclerView recyclerView2 = d.this.f1559a;
                    g.p.b.f.a((Object) recyclerView2, "recyclerView");
                    RecyclerView recyclerView3 = d.this.f1559a;
                    g.p.b.f.a((Object) recyclerView3, "recyclerView");
                    recyclerView2.setVisibility(recyclerView3.getVisibility() == 0 ? 8 : 0);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(ViewGroup viewGroup, b bVar) {
                super(animebestapp.com.utils.d.a(viewGroup, R.layout.slide_menu_sub_list));
                g.p.b.f.b(viewGroup, "parent");
                g.p.b.f.b(bVar, "delegate");
                this.f1564f = bVar;
                this.f1559a = (RecyclerView) this.itemView.findViewById(R.id.rvList);
                this.f1560b = (TextView) this.itemView.findViewById(R.id.tvTitle);
                this.f1561c = (ImageView) this.itemView.findViewById(R.id.ivIndicator);
                this.f1562d = androidx.core.content.a.c(viewGroup.getContext(), R.drawable.ic_arrow_drop_down);
                this.f1563e = androidx.core.content.a.c(viewGroup.getContext(), R.drawable.ic_arrow_left);
                RecyclerView recyclerView = this.f1559a;
                g.p.b.f.a((Object) recyclerView, "recyclerView");
                View view = this.itemView;
                g.p.b.f.a((Object) view, "itemView");
                recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()));
                RecyclerView recyclerView2 = this.f1559a;
                g.p.b.f.a((Object) recyclerView2, "recyclerView");
                recyclerView2.setNestedScrollingEnabled(false);
            }

            public final void a(animebestapp.com.menu.d.a aVar) {
                g.p.b.f.b(aVar, "item");
                TextView textView = this.f1560b;
                g.p.b.f.a((Object) textView, "tvTitle");
                textView.setText(aVar.getTitle());
                this.f1560b.setOnClickListener(new ViewOnClickListenerC0034a());
                RecyclerView recyclerView = this.f1559a;
                g.p.b.f.a((Object) recyclerView, "recyclerView");
                recyclerView.setAdapter(new a(null, this.f1564f, aVar.a()));
            }
        }

        public static final class e extends RecyclerView.d0 {

            /* JADX INFO: renamed from: animebestapp.com.menu.SlideMenuView$a$e$a, reason: collision with other inner class name */
            static final class C0035a implements CompoundButton.OnCheckedChangeListener {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ animebestapp.com.menu.d.e f1566a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ g.p.a.c f1567b;

                C0035a(animebestapp.com.menu.d.e eVar, g.p.a.c cVar) {
                    this.f1566a = eVar;
                    this.f1567b = cVar;
                }

                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    this.f1567b.a(this.f1566a.getKey(), Boolean.valueOf(z));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(ViewGroup viewGroup) {
                super(animebestapp.com.utils.d.a(viewGroup, R.layout.slide_menu_switch_item));
                g.p.b.f.b(viewGroup, "parent");
            }

            public final void a(animebestapp.com.menu.d.e eVar, g.p.a.c<? super String, ? super Boolean, l> cVar) {
                g.p.b.f.b(eVar, "item");
                g.p.b.f.b(cVar, "callback");
                View view = this.itemView;
                if (view == null) {
                    throw new j("null cannot be cast to non-null type androidx.appcompat.widget.SwitchCompat");
                }
                ((SwitchCompat) view).setOnCheckedChangeListener(null);
                View view2 = this.itemView;
                if (view2 == null) {
                    throw new j("null cannot be cast to non-null type androidx.appcompat.widget.SwitchCompat");
                }
                SwitchCompat switchCompat = (SwitchCompat) view2;
                switchCompat.setChecked(eVar.a());
                switchCompat.setOnCheckedChangeListener(new C0035a(eVar, cVar));
                switchCompat.setText(eVar.getTitle());
            }
        }

        static final class f extends g.p.b.g implements g.p.a.b<String, l> {
            f() {
                super(1);
            }

            @Override // g.p.a.b
            public /* bridge */ /* synthetic */ l a(String str) {
                a2(str);
                return l.f4367a;
            }

            /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
            public final void a2(String str) {
                g.p.b.f.b(str, "it");
                a.this.f1555g.a(str);
            }
        }

        static final class g extends g.p.b.g implements g.p.a.c<String, Boolean, l> {
            g() {
                super(2);
            }

            @Override // g.p.a.c
            public /* bridge */ /* synthetic */ l a(String str, Boolean bool) {
                a(str, bool.booleanValue());
                return l.f4367a;
            }

            public final void a(String str, boolean z) {
                g.p.b.f.b(str, "key");
                a.this.f1555g.a(str, z);
            }
        }

        public a(View view, b bVar, List<? extends animebestapp.com.menu.d.d> list) {
            g.p.b.f.b(bVar, "delegate");
            g.p.b.f.b(list, "list");
            this.f1554f = view;
            this.f1555g = bVar;
            this.f1556h = list;
            this.f1550b = 1;
            this.f1551c = 2;
            this.f1552d = 3;
            this.f1553e = this.f1554f == null ? 0 : 1;
        }

        public final void a(List<? extends animebestapp.com.menu.d.d> list) {
            g.p.b.f.b(list, "<set-?>");
            this.f1556h = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int getItemCount() {
            return this.f1556h.size() + this.f1553e;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int getItemViewType(int i2) {
            if (i2 == 0 && this.f1554f != null) {
                return this.f1549a;
            }
            animebestapp.com.menu.d.d dVar = this.f1556h.get(i2 - this.f1553e);
            if (dVar instanceof animebestapp.com.menu.d.b) {
                return this.f1550b;
            }
            if (dVar instanceof animebestapp.com.menu.d.e) {
                return this.f1551c;
            }
            if (dVar instanceof animebestapp.com.menu.d.a) {
                return this.f1552d;
            }
            return 4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onBindViewHolder(RecyclerView.d0 d0Var, int i2) {
            g.p.b.f.b(d0Var, "holder");
            if (i2 != 0 || this.f1554f == null) {
                animebestapp.com.menu.d.d dVar = this.f1556h.get(d0Var.getAdapterPosition() - this.f1553e);
                if (d0Var instanceof d) {
                    d dVar2 = (d) d0Var;
                    if (dVar == null) {
                        throw new j("null cannot be cast to non-null type animebestapp.com.menu.model.DropMenuItem");
                    }
                    dVar2.a((animebestapp.com.menu.d.a) dVar);
                    return;
                }
                if (d0Var instanceof C0032a) {
                    C0032a c0032a = (C0032a) d0Var;
                    c0032a.a(dVar, c0032a.getAdapterPosition() == 0);
                } else if (d0Var instanceof c) {
                    ((c) d0Var).a(dVar, new f());
                } else if (d0Var instanceof e) {
                    e eVar = (e) d0Var;
                    if (dVar == null) {
                        throw new j("null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem");
                    }
                    eVar.a((animebestapp.com.menu.d.e) dVar, new g());
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public RecyclerView.d0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
            g.p.b.f.b(viewGroup, "parent");
            if (i2 != this.f1549a) {
                return i2 == this.f1550b ? new C0032a(viewGroup) : i2 == this.f1551c ? new e(viewGroup) : i2 == this.f1552d ? new d(viewGroup, this.f1555g) : new c(viewGroup);
            }
            View view = this.f1554f;
            if (view != null) {
                return new b(view);
            }
            g.p.b.f.a();
            throw null;
        }
    }

    public interface b {
        void a(String str);

        void a(String str, boolean z);
    }

    public static final class c implements b {
        c() {
        }

        @Override // animebestapp.com.menu.SlideMenuView.b
        public void a(String str) {
            f.b(str, "key");
            b listener = SlideMenuView.this.getListener();
            if (listener != null) {
                listener.a(str);
            }
        }

        @Override // animebestapp.com.menu.SlideMenuView.b
        public void a(String str, boolean z) {
            f.b(str, "key");
            b listener = SlideMenuView.this.getListener();
            if (listener != null) {
                listener.a(str, z);
            }
        }
    }

    public SlideMenuView(Context context) {
        this(context, null, 0, 6, null);
    }

    public SlideMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e A[PHI: r12 r13 r14
      0x008e: PHI (r12v2 animebestapp.com.menu.d.e) = (r12v1 animebestapp.com.menu.d.e), (r12v6 animebestapp.com.menu.d.e) binds: [B:24:0x008c, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]
      0x008e: PHI (r13v1 java.lang.String) = (r13v0 java.lang.String), (r13v4 java.lang.String) binds: [B:24:0x008c, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]
      0x008e: PHI (r14v1 java.lang.String) = (r14v0 java.lang.String), (r14v4 java.lang.String) binds: [B:24:0x008c, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090 A[PHI: r12 r13 r14
      0x0090: PHI (r12v4 animebestapp.com.menu.d.e) = (r12v1 animebestapp.com.menu.d.e), (r12v6 animebestapp.com.menu.d.e) binds: [B:24:0x008c, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]
      0x0090: PHI (r13v3 java.lang.String) = (r13v0 java.lang.String), (r13v4 java.lang.String) binds: [B:24:0x008c, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]
      0x0090: PHI (r14v3 java.lang.String) = (r14v0 java.lang.String), (r14v4 java.lang.String) binds: [B:24:0x008c, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SlideMenuView(android.content.Context r19, android.util.AttributeSet r20, int r21) {
        /*
            r18 = this;
            r0 = r18
            java.lang.String r1 = "context"
            r2 = r19
            g.p.b.f.b(r2, r1)
            r18.<init>(r19, r20, r21)
            animebestapp.com.menu.SlideMenuView$c r1 = new animebestapp.com.menu.SlideMenuView$c
            r1.<init>()
            r0.f1546c = r1
            r1 = 0
            android.view.View r2 = r0.getChildAt(r1)
            if (r2 == 0) goto Lb5
            androidx.recyclerview.widget.RecyclerView r2 = (androidx.recyclerview.widget.RecyclerView) r2
            r3 = 2131427409(0x7f0b0051, float:1.8476433E38)
            android.view.View r3 = animebestapp.com.utils.d.a(r2, r3)
            r0.f1547d = r3
            animebestapp.com.menu.c r3 = animebestapp.com.menu.c.f1585b
            java.util.ArrayList r3 = r3.a()
            java.util.ArrayList r4 = new java.util.ArrayList
            r5 = 10
            int r5 = g.m.j.a(r3, r5)
            r4.<init>(r5)
            java.util.Iterator r3 = r3.iterator()
        L3a:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto La4
            java.lang.Object r5 = r3.next()
            animebestapp.com.menu.d.d r5 = (animebestapp.com.menu.d.d) r5
            java.lang.String r6 = r5.getKey()
            int r7 = r6.hashCode()
            r8 = -985752863(0xffffffffc53e9ae1, float:-3049.68)
            r9 = 1
            java.lang.String r10 = "null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem"
            r11 = 2
            if (r7 == r8) goto L79
            r8 = -601793174(0xffffffffdc215d6a, float:-1.8168072E17)
            if (r7 == r8) goto L5d
            goto La0
        L5d:
            java.lang.String r7 = "night_mode"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto La0
            if (r5 == 0) goto L73
            r12 = r5
            animebestapp.com.menu.d.e r12 = (animebestapp.com.menu.d.e) r12
            r13 = 0
            r14 = 0
            int r5 = androidx.appcompat.app.f.j()
            if (r5 != r11) goto L90
            goto L8e
        L73:
            g.j r1 = new g.j
            r1.<init>(r10)
            throw r1
        L79:
            java.lang.String r7 = "player"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto La0
            if (r5 == 0) goto L9a
            r12 = r5
            animebestapp.com.menu.d.e r12 = (animebestapp.com.menu.d.e) r12
            r13 = 0
            r14 = 0
            int r5 = androidx.appcompat.app.f.j()
            if (r5 != r11) goto L90
        L8e:
            r15 = 1
            goto L91
        L90:
            r15 = 0
        L91:
            r16 = 3
            r17 = 0
            animebestapp.com.menu.d.e r5 = animebestapp.com.menu.d.e.a(r12, r13, r14, r15, r16, r17)
            goto La0
        L9a:
            g.j r1 = new g.j
            r1.<init>(r10)
            throw r1
        La0:
            r4.add(r5)
            goto L3a
        La4:
            animebestapp.com.menu.SlideMenuView$a r1 = new animebestapp.com.menu.SlideMenuView$a
            android.view.View r3 = r0.f1547d
            animebestapp.com.menu.SlideMenuView$c r5 = r0.f1546c
            r1.<init>(r3, r5, r4)
            r0.f1548e = r1
            animebestapp.com.menu.SlideMenuView$a r1 = r0.f1548e
            r2.setAdapter(r1)
            return
        Lb5:
            g.j r1 = new g.j
            java.lang.String r2 = "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"
            r1.<init>(r2)
            goto Lbe
        Lbd:
            throw r1
        Lbe:
            goto Lbd
        */
        throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.menu.SlideMenuView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public /* synthetic */ SlideMenuView(Context context, AttributeSet attributeSet, int i2, int i3, d dVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006c A[PHI: r11 r12 r13
      0x006c: PHI (r11v2 animebestapp.com.menu.d.e) = (r11v1 animebestapp.com.menu.d.e), (r11v6 animebestapp.com.menu.d.e) binds: [B:22:0x006a, B:14:0x004e] A[DONT_GENERATE, DONT_INLINE]
      0x006c: PHI (r12v1 java.lang.String) = (r12v0 java.lang.String), (r12v4 java.lang.String) binds: [B:22:0x006a, B:14:0x004e] A[DONT_GENERATE, DONT_INLINE]
      0x006c: PHI (r13v1 java.lang.String) = (r13v0 java.lang.String), (r13v4 java.lang.String) binds: [B:22:0x006a, B:14:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e A[PHI: r11 r12 r13
      0x006e: PHI (r11v4 animebestapp.com.menu.d.e) = (r11v1 animebestapp.com.menu.d.e), (r11v6 animebestapp.com.menu.d.e) binds: [B:22:0x006a, B:14:0x004e] A[DONT_GENERATE, DONT_INLINE]
      0x006e: PHI (r12v3 java.lang.String) = (r12v0 java.lang.String), (r12v4 java.lang.String) binds: [B:22:0x006a, B:14:0x004e] A[DONT_GENERATE, DONT_INLINE]
      0x006e: PHI (r13v3 java.lang.String) = (r13v0 java.lang.String), (r13v4 java.lang.String) binds: [B:22:0x006a, B:14:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            r17 = this;
            r0 = r17
            animebestapp.com.menu.c r1 = animebestapp.com.menu.c.f1585b
            java.util.ArrayList r1 = r1.a()
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = g.m.j.a(r1, r3)
            r2.<init>(r3)
            java.util.Iterator r1 = r1.iterator()
        L17:
            boolean r3 = r1.hasNext()
            r4 = 0
            if (r3 == 0) goto L81
            java.lang.Object r3 = r1.next()
            animebestapp.com.menu.d.d r3 = (animebestapp.com.menu.d.d) r3
            java.lang.String r5 = r3.getKey()
            int r6 = r5.hashCode()
            r7 = -985752863(0xffffffffc53e9ae1, float:-3049.68)
            r8 = 1
            java.lang.String r9 = "null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem"
            r10 = 2
            if (r6 == r7) goto L57
            r7 = -601793174(0xffffffffdc215d6a, float:-1.8168072E17)
            if (r6 == r7) goto L3b
            goto L7d
        L3b:
            java.lang.String r6 = "night_mode"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L7d
            if (r3 == 0) goto L51
            r11 = r3
            animebestapp.com.menu.d.e r11 = (animebestapp.com.menu.d.e) r11
            r12 = 0
            r13 = 0
            int r3 = androidx.appcompat.app.f.j()
            if (r3 != r10) goto L6e
            goto L6c
        L51:
            g.j r1 = new g.j
            r1.<init>(r9)
            throw r1
        L57:
            java.lang.String r6 = "player"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L7d
            if (r3 == 0) goto L77
            r11 = r3
            animebestapp.com.menu.d.e r11 = (animebestapp.com.menu.d.e) r11
            r12 = 0
            r13 = 0
            int r3 = androidx.appcompat.app.f.j()
            if (r3 != r10) goto L6e
        L6c:
            r14 = 1
            goto L6f
        L6e:
            r14 = 0
        L6f:
            r15 = 3
            r16 = 0
            animebestapp.com.menu.d.e r3 = animebestapp.com.menu.d.e.a(r11, r12, r13, r14, r15, r16)
            goto L7d
        L77:
            g.j r1 = new g.j
            r1.<init>(r9)
            throw r1
        L7d:
            r2.add(r3)
            goto L17
        L81:
            android.view.View r1 = r0.getChildAt(r4)
            if (r1 == 0) goto La3
            androidx.recyclerview.widget.RecyclerView r1 = (androidx.recyclerview.widget.RecyclerView) r1
            r3 = 2131427409(0x7f0b0051, float:1.8476433E38)
            android.view.View r3 = animebestapp.com.utils.d.a(r1, r3)
            r0.f1547d = r3
            animebestapp.com.menu.SlideMenuView$a r3 = new animebestapp.com.menu.SlideMenuView$a
            android.view.View r4 = r0.f1547d
            animebestapp.com.menu.SlideMenuView$c r5 = r0.f1546c
            r3.<init>(r4, r5, r2)
            r0.f1548e = r3
            animebestapp.com.menu.SlideMenuView$a r2 = r0.f1548e
            r1.setAdapter(r2)
            return
        La3:
            g.j r1 = new g.j
            java.lang.String r2 = "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"
            r1.<init>(r2)
            goto Lac
        Lab:
            throw r1
        Lac:
            goto Lab
        */
        throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.menu.SlideMenuView.a():void");
    }

    public final void a(boolean z) {
        e eVar;
        String str;
        String str2;
        int i2;
        Object obj;
        boolean z2;
        ArrayList<animebestapp.com.menu.d.d> arrayListA = animebestapp.com.menu.c.f1585b.a();
        ArrayList arrayList = new ArrayList(m.a(arrayListA, 10));
        for (animebestapp.com.menu.d.d dVarA : arrayListA) {
            String key = dVarA.getKey();
            int iHashCode = key.hashCode();
            if (iHashCode != -985752863) {
                if (iHashCode == -601793174 && key.equals("night_mode")) {
                    if (dVarA == null) {
                        throw new j("null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem");
                    }
                    eVar = (e) dVarA;
                    str = null;
                    str2 = null;
                    z2 = androidx.appcompat.app.f.j() == 2;
                    i2 = 3;
                    obj = null;
                    dVarA = e.a(eVar, str, str2, z2, i2, obj);
                }
            } else if (!key.equals("player")) {
                continue;
            } else {
                if (dVarA == null) {
                    throw new j("null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem");
                }
                eVar = (e) dVarA;
                str = null;
                str2 = null;
                i2 = 3;
                obj = null;
                z2 = z;
                dVarA = e.a(eVar, str, str2, z2, i2, obj);
            }
            arrayList.add(dVarA);
        }
        this.f1548e.a(arrayList);
        this.f1548e.notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007b A[PHI: r13 r14 r15
      0x007b: PHI (r13v2 animebestapp.com.menu.d.e) = (r13v1 animebestapp.com.menu.d.e), (r13v6 animebestapp.com.menu.d.e) binds: [B:24:0x0079, B:16:0x005d] A[DONT_GENERATE, DONT_INLINE]
      0x007b: PHI (r14v1 java.lang.String) = (r14v0 java.lang.String), (r14v4 java.lang.String) binds: [B:24:0x0079, B:16:0x005d] A[DONT_GENERATE, DONT_INLINE]
      0x007b: PHI (r15v1 java.lang.String) = (r15v0 java.lang.String), (r15v4 java.lang.String) binds: [B:24:0x0079, B:16:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007e A[PHI: r13 r14 r15
      0x007e: PHI (r13v4 animebestapp.com.menu.d.e) = (r13v1 animebestapp.com.menu.d.e), (r13v6 animebestapp.com.menu.d.e) binds: [B:24:0x0079, B:16:0x005d] A[DONT_GENERATE, DONT_INLINE]
      0x007e: PHI (r14v3 java.lang.String) = (r14v0 java.lang.String), (r14v4 java.lang.String) binds: [B:24:0x0079, B:16:0x005d] A[DONT_GENERATE, DONT_INLINE]
      0x007e: PHI (r15v3 java.lang.String) = (r15v0 java.lang.String), (r15v4 java.lang.String) binds: [B:24:0x0079, B:16:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.material.navigation.NavigationView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void addHeaderView(android.view.View r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            java.lang.String r2 = "view"
            g.p.b.f.b(r1, r2)
            r2 = 0
            android.view.View r3 = r0.getChildAt(r2)
            if (r3 == 0) goto La6
            androidx.recyclerview.widget.RecyclerView r3 = (androidx.recyclerview.widget.RecyclerView) r3
            animebestapp.com.menu.c r4 = animebestapp.com.menu.c.f1585b
            java.util.ArrayList r4 = r4.a()
            java.util.ArrayList r5 = new java.util.ArrayList
            r6 = 10
            int r6 = g.m.j.a(r4, r6)
            r5.<init>(r6)
            java.util.Iterator r4 = r4.iterator()
        L27:
            boolean r6 = r4.hasNext()
            if (r6 == 0) goto L93
            java.lang.Object r6 = r4.next()
            animebestapp.com.menu.d.d r6 = (animebestapp.com.menu.d.d) r6
            java.lang.String r7 = r6.getKey()
            int r8 = r7.hashCode()
            r9 = -985752863(0xffffffffc53e9ae1, float:-3049.68)
            r10 = 1
            java.lang.String r11 = "null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem"
            r12 = 2
            if (r8 == r9) goto L66
            r9 = -601793174(0xffffffffdc215d6a, float:-1.8168072E17)
            if (r8 == r9) goto L4a
            goto L8f
        L4a:
            java.lang.String r8 = "night_mode"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L8f
            if (r6 == 0) goto L60
            r13 = r6
            animebestapp.com.menu.d.e r13 = (animebestapp.com.menu.d.e) r13
            r14 = 0
            r15 = 0
            int r6 = androidx.appcompat.app.f.j()
            if (r6 != r12) goto L7e
            goto L7b
        L60:
            g.j r1 = new g.j
            r1.<init>(r11)
            throw r1
        L66:
            java.lang.String r8 = "player"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L8f
            if (r6 == 0) goto L89
            r13 = r6
            animebestapp.com.menu.d.e r13 = (animebestapp.com.menu.d.e) r13
            r14 = 0
            r15 = 0
            int r6 = androidx.appcompat.app.f.j()
            if (r6 != r12) goto L7e
        L7b:
            r16 = 1
            goto L80
        L7e:
            r16 = 0
        L80:
            r17 = 3
            r18 = 0
            animebestapp.com.menu.d.e r6 = animebestapp.com.menu.d.e.a(r13, r14, r15, r16, r17, r18)
            goto L8f
        L89:
            g.j r1 = new g.j
            r1.<init>(r11)
            throw r1
        L8f:
            r5.add(r6)
            goto L27
        L93:
            r0.f1547d = r1
            animebestapp.com.menu.SlideMenuView$a r1 = new animebestapp.com.menu.SlideMenuView$a
            android.view.View r2 = r0.f1547d
            animebestapp.com.menu.SlideMenuView$c r4 = r0.f1546c
            r1.<init>(r2, r4, r5)
            r0.f1548e = r1
            animebestapp.com.menu.SlideMenuView$a r1 = r0.f1548e
            r3.setAdapter(r1)
            return
        La6:
            g.j r1 = new g.j
            java.lang.String r2 = "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"
            r1.<init>(r2)
            goto Laf
        Lae:
            throw r1
        Laf:
            goto Lae
        */
        throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.menu.SlideMenuView.addHeaderView(android.view.View):void");
    }

    public final View getHeader() {
        return this.f1547d;
    }

    @Override // com.google.android.material.navigation.NavigationView
    public View getHeaderView(int i2) {
        return this.f1547d;
    }

    public final b getListener() {
        return this.f1545b;
    }

    public final void setHeader(View view) {
        f.b(view, "<set-?>");
        this.f1547d = view;
    }

    public final void setListener(b bVar) {
        this.f1545b = bVar;
    }
}
