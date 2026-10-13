package com.superwall.sdk.dependencies;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.analytics.internal.TrackingResult;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H¦@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/dependencies/TrackingFactory;", "", "track", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "track-gIAlu-s", "(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface TrackingFactory {
    /* JADX INFO: renamed from: track-gIAlu-s */
    Object mo10617trackgIAlus(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Result<TrackingResult>> continuation);
}
