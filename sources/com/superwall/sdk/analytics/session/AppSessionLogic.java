package com.superwall.sdk.analytics.session;

import java.util.Date;
import kotlin.Metadata;

/* JADX INFO: compiled from: AppSessionLogic.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/analytics/session/AppSessionLogic;", "", "<init>", "()V", "didStartNewSession", "", "lastAppClose", "Ljava/util/Date;", "timeout", "", "(Ljava/util/Date;Ljava/lang/Long;)Z", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AppSessionLogic {
    public static final AppSessionLogic INSTANCE = new AppSessionLogic();

    private AppSessionLogic() {
    }

    public static /* synthetic */ boolean didStartNewSession$default(AppSessionLogic appSessionLogic, Date date, Long l, int i, Object obj) {
        if ((i & 2) != 0) {
            l = 3600000L;
        }
        return appSessionLogic.didStartNewSession(date, l);
    }

    public final boolean didStartNewSession(Date lastAppClose, Long timeout) {
        if (lastAppClose == null) {
            return true;
        }
        return System.currentTimeMillis() - lastAppClose.getTime() > (timeout != null ? timeout.longValue() : 3600000L);
    }
}
