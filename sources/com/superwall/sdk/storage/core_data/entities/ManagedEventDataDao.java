package com.superwall.sdk.storage.core_data.entities;

import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ManagedEventData.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH§@¢\u0006\u0002\u0010\fJ\u000e\u0010\r\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u000eJ&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000bH§@¢\u0006\u0002\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;", "", "insert", "", "eventData", "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;", "(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLastSavedEvent", "name", "", "date", "Ljava/util/Date;", "(Ljava/lang/String;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAll", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "countEventsByNameInPeriod", "", "startDate", "endDate", "(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ManagedEventDataDao {
    Object countEventsByNameInPeriod(String str, Date date, Date date2, Continuation<? super Integer> continuation);

    Object deleteAll(Continuation<? super Unit> continuation);

    Object getLastSavedEvent(String str, Date date, Continuation<? super ManagedEventData> continuation);

    Object insert(ManagedEventData managedEventData, Continuation<? super Unit> continuation);
}
