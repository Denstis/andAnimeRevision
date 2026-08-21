package animebestapp.com.e;

import animebestapp.com.e.c.c;
import animebestapp.com.e.c.d;
import animebestapp.com.e.c.g;
import animebestapp.com.e.c.i;
import animebestapp.com.e.c.k;
import animebestapp.com.e.c.m;
import animebestapp.com.e.c.n;
import animebestapp.com.e.c.p;
import animebestapp.com.e.c.r;
import animebestapp.com.e.c.s;
import animebestapp.com.e.c.t;
import animebestapp.com.models.AdBanner;
import animebestapp.com.models.BannerInfo;
import animebestapp.com.models.UserHash;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import e.a.h;
import e.a.o;
import java.util.HashMap;
import java.util.List;
import k.s.e;
import k.s.l;
import k.s.q;

/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: animebestapp.com.e.a$a, reason: collision with other inner class name */
    public static final class C0029a {
        @e("engine/apiController.php?hash=cxbthdf3234ss1d1ssav21sd21sv12f3&method=addComments")
        public static /* synthetic */ o a(a aVar, String str, String str2, String str3, String str4, String str5, String str6, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendComment");
            }
            if ((i2 & 32) != 0) {
                str6 = "-";
            }
            return aVar.a(str, str2, str3, str4, str5, str6);
        }
    }

    @e("engine/apiController.php?hash=cxbthdf3234ss1d1ssav21sd21sv12f3&method=getCommentsList&limit=5&sort=date&order=desc")
    h<g> a(@q("news_id") String str, @q(TtmlNode.START) int i2);

    @e("file.json")
    o<HashMap<String, List<animebestapp.com.models.e>>> a();

    @l("rest")
    o<c> a(@k.s.a animebestapp.com.e.c.a aVar);

    @l("rest")
    o<animebestapp.com.e.c.e> a(@k.s.a d dVar);

    @l("rest")
    o<c> a(@k.s.a i iVar);

    @l("rest")
    o<animebestapp.com.e.c.l> a(@k.s.a k kVar);

    @l("rest")
    o<animebestapp.com.e.c.o> a(@k.s.a m mVar);

    @l("rest")
    o<c> a(@k.s.a p pVar);

    @l("rest")
    o<animebestapp.com.e.c.o> a(@k.s.a animebestapp.com.e.c.q qVar);

    @l("rest")
    o<t> a(@k.s.a r rVar);

    @l("rest")
    o<t> a(@k.s.a s sVar);

    @e("engine/apiController.php?hash=cxbthdf3234ss1d1ssav21sd21sv12f3&method=getUserHash")
    o<UserHash> a(@q("ip") String str, @q("user_id") String str2);

    @e("engine/apiController.php?hash=cxbthdf3234ss1d1ssav21sd21sv12f3&method=addComments")
    o<c> a(@q("comments") String str, @q("post_id") String str2, @q("user_id") String str3, @q("user_hash") String str4, @q("ip") String str5, @q(AppMeasurementSdk.ConditionalUserProperty.NAME) String str6);

    @e("bannerap.json")
    o<AdBanner> b();

    @l("rest")
    o<n> b(@k.s.a m mVar);

    @e("engine/apiController.php?hash=cxbthdf3234ss1d1ssav21sd21sv12f3&method=getPostList&category=4&limit=100&sort=m_rating_sum&order=desc")
    o<animebestapp.com.e.c.o> c();

    @e("info.json")
    o<animebestapp.com.ui.nav.d> d();

    @e("https://ipinfo.io/json")
    o<animebestapp.com.models.c> e();

    @e("banner.json")
    o<BannerInfo> f();
}
