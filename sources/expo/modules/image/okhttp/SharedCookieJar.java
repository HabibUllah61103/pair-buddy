package expo.modules.image.okhttp;

import android.webkit.CookieManager;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: ExpoImageOkHttpClientGlideModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0002¨\u0006\u000e"}, d2 = {"Lexpo/modules/image/okhttp/SharedCookieJar;", "Lokhttp3/CookieJar;", "<init>", "()V", "saveFromResponse", "", ImagesContract.URL, "Lokhttp3/HttpUrl;", "cookies", "", "Lokhttp3/Cookie;", "loadForRequest", "getCookieManager", "Landroid/webkit/CookieManager;", "expo-image_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SharedCookieJar implements CookieJar {
    public static final SharedCookieJar INSTANCE = new SharedCookieJar();

    private SharedCookieJar() {
    }

    @Override // okhttp3.CookieJar
    public void saveFromResponse(HttpUrl url, List<Cookie> cookies) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(cookies, "cookies");
        CookieManager cookieManager = getCookieManager();
        if (cookieManager == null) {
            return;
        }
        String url2 = url.getUrl();
        Iterator<Cookie> it = cookies.iterator();
        while (it.hasNext()) {
            cookieManager.setCookie(url2, it.next().toString());
        }
        cookieManager.flush();
    }

    @Override // okhttp3.CookieJar
    public List<Cookie> loadForRequest(HttpUrl url) {
        String cookie;
        Intrinsics.checkNotNullParameter(url, "url");
        CookieManager cookieManager = getCookieManager();
        if (cookieManager != null && (cookie = cookieManager.getCookie(url.getUrl())) != null) {
            List listSplit$default = StringsKt.split$default((CharSequence) cookie, new String[]{";"}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList();
            Iterator it = listSplit$default.iterator();
            while (it.hasNext()) {
                Cookie cookie2 = Cookie.INSTANCE.parse(url, StringsKt.trim((CharSequence) it.next()).toString());
                if (cookie2 != null) {
                    arrayList.add(cookie2);
                }
            }
            return arrayList;
        }
        return CollectionsKt.emptyList();
    }

    private final CookieManager getCookieManager() {
        Object objM11241constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            SharedCookieJar sharedCookieJar = this;
            objM11241constructorimpl = Result.m11241constructorimpl(CookieManager.getInstance());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m11247isFailureimpl(objM11241constructorimpl)) {
            objM11241constructorimpl = null;
        }
        return (CookieManager) objM11241constructorimpl;
    }
}
