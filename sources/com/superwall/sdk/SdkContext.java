package com.superwall.sdk;

import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.models.config.Config;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: SdkContext.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H¦@¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00020\u0003H¦@¢\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bH¦@¢\u0006\u0002\u0010\t¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/SdkContext;", "", "reevaluateTestMode", "", Keys.APP_USER_ID, "", Keys.ALIAS_ID, "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchAssignments", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitConfig", "Lcom/superwall/sdk/models/config/Config;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SdkContext {
    Object awaitConfig(Continuation<? super Config> continuation);

    Object fetchAssignments(Continuation<? super Unit> continuation);

    Object reevaluateTestMode(String str, String str2, Continuation<? super Unit> continuation);
}
