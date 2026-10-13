package com.superwall.sdk.storage.core_data;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.triggers.TriggerRuleOccurrence;
import com.superwall.sdk.storage.core_data.entities.ManagedEventData;
import com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao;
import com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrence;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: CoreDataManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J&\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0016\b\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015J&\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00192\u0016\b\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015J\u0006\u0010\u001b\u001a\u00020\u0011J\"\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001f\u001a\u00020 H\u0086@¢\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u0019H\u0086@¢\u0006\u0002\u0010$J&\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0086@¢\u0006\u0002\u0010+R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006,"}, d2 = {"Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "Lkotlinx/coroutines/CoroutineScope;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "superwallDatabase", "Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;", "getSuperwallDatabase", "()Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;", "superwallDatabase$delegate", "Lkotlin/Lazy;", "saveEventData", "", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "completion", "Lkotlin/Function1;", "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;", "save", "triggerRuleOccurrence", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrence;", "deleteAllEntities", "getComputedPropertySinceEvent", "", NotificationCompat.CATEGORY_EVENT, "request", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/config/ComputedPropertyRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "countTriggerRuleOccurrences", "ruleOccurrence", "(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "countEventsByNameInPeriod", "name", "", "startDate", "Ljava/util/Date;", "endDate", "(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CoreDataManager implements CoroutineScope {
    private final CoroutineContext coroutineContext;

    /* JADX INFO: renamed from: superwallDatabase$delegate, reason: from kotlin metadata */
    private final Lazy superwallDatabase;

    /* JADX INFO: renamed from: com.superwall.sdk.storage.core_data.CoreDataManager$countEventsByNameInPeriod$1, reason: invalid class name */
    /* JADX INFO: compiled from: CoreDataManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.core_data.CoreDataManager", f = "CoreDataManager.kt", i = {}, l = {191}, m = "countEventsByNameInPeriod", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CoreDataManager.this.countEventsByNameInPeriod(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.core_data.CoreDataManager$countTriggerRuleOccurrences$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CoreDataManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.core_data.CoreDataManager", f = "CoreDataManager.kt", i = {}, l = {170, 179}, m = "countTriggerRuleOccurrences", n = {}, s = {})
    static final class C05851 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05851(Continuation<? super C05851> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CoreDataManager.this.countTriggerRuleOccurrences(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.core_data.CoreDataManager$getComputedPropertySinceEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CoreDataManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.core_data.CoreDataManager", f = "CoreDataManager.kt", i = {0}, l = {110}, m = "getComputedPropertySinceEvent", n = {"request"}, s = {"L$0"})
    static final class C05871 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05871(Continuation<? super C05871> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CoreDataManager.this.getComputedPropertySinceEvent(null, null, this);
        }
    }

    public CoreDataManager(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.coroutineContext = CoroutineDispatcher.limitedParallelism$default(Dispatchers.getIO(), 1, null, 2, null);
        this.superwallDatabase = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.storage.core_data.CoreDataManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CoreDataManager.superwallDatabase_delegate$lambda$0(context);
            }
        });
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SuperwallDatabase getSuperwallDatabase() {
        return (SuperwallDatabase) this.superwallDatabase.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SuperwallDatabase superwallDatabase_delegate$lambda$0(Context context) {
        return SuperwallDatabase.INSTANCE.getDatabase(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void saveEventData$default(CoreDataManager coreDataManager, EventData eventData, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        coreDataManager.saveEventData(eventData, function1);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.core_data.CoreDataManager$saveEventData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CoreDataManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.core_data.CoreDataManager$saveEventData$1", f = "CoreDataManager.kt", i = {0}, l = {42}, m = "invokeSuspend", n = {"managedEventData"}, s = {"L$0"})
    static final class C05891 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<ManagedEventData, Unit> $completion;
        final /* synthetic */ EventData $eventData;
        Object L$0;
        int label;
        final /* synthetic */ CoreDataManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C05891(EventData eventData, CoreDataManager coreDataManager, Function1<? super ManagedEventData, Unit> function1, Continuation<? super C05891> continuation) {
            super(2, continuation);
            this.$eventData = eventData;
            this.this$0 = coreDataManager;
            this.$completion = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05891(this.$eventData, this.this$0, this.$completion, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05891) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ManagedEventData managedEventData;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ManagedEventData managedEventData2 = new ManagedEventData(this.$eventData.getId(), this.$eventData.getCreatedAt(), this.$eventData.getName(), this.$eventData.getParameters());
                    this.L$0 = managedEventData2;
                    this.label = 1;
                    if (this.this$0.getSuperwallDatabase().managedEventDataDao().insert(managedEventData2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    managedEventData = managedEventData2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    managedEventData = (ManagedEventData) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                Function1<ManagedEventData, Unit> function1 = this.$completion;
                if (function1 != null) {
                    function1.invoke(managedEventData);
                }
            } catch (Throwable th) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.coreData, "Error saving to Room database.", null, th, 8, null);
            }
            return Unit.INSTANCE;
        }
    }

    public final void saveEventData(EventData eventData, Function1<? super ManagedEventData, Unit> completion) {
        Intrinsics.checkNotNullParameter(eventData, "eventData");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05891(eventData, this, completion, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void save$default(CoreDataManager coreDataManager, TriggerRuleOccurrence triggerRuleOccurrence, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        coreDataManager.save(triggerRuleOccurrence, function1);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.core_data.CoreDataManager$save$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CoreDataManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.core_data.CoreDataManager$save$1", f = "CoreDataManager.kt", i = {0}, l = {69}, m = "invokeSuspend", n = {"managedRuleOccurrence"}, s = {"L$0"})
    static final class C05881 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<ManagedTriggerRuleOccurrence, Unit> $completion;
        final /* synthetic */ TriggerRuleOccurrence $triggerRuleOccurrence;
        Object L$0;
        int label;
        final /* synthetic */ CoreDataManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C05881(TriggerRuleOccurrence triggerRuleOccurrence, CoreDataManager coreDataManager, Function1<? super ManagedTriggerRuleOccurrence, Unit> function1, Continuation<? super C05881> continuation) {
            super(2, continuation);
            this.$triggerRuleOccurrence = triggerRuleOccurrence;
            this.this$0 = coreDataManager;
            this.$completion = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05881(this.$triggerRuleOccurrence, this.this$0, this.$completion, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05881) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ManagedTriggerRuleOccurrence managedTriggerRuleOccurrence;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ManagedTriggerRuleOccurrence managedTriggerRuleOccurrence2 = new ManagedTriggerRuleOccurrence(null, null, this.$triggerRuleOccurrence.getKey(), 3, null);
                    this.L$0 = managedTriggerRuleOccurrence2;
                    this.label = 1;
                    if (this.this$0.getSuperwallDatabase().managedTriggerRuleOccurrenceDao().insert(managedTriggerRuleOccurrence2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    managedTriggerRuleOccurrence = managedTriggerRuleOccurrence2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    managedTriggerRuleOccurrence = (ManagedTriggerRuleOccurrence) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                Function1<ManagedTriggerRuleOccurrence, Unit> function1 = this.$completion;
                if (function1 != null) {
                    function1.invoke(managedTriggerRuleOccurrence);
                }
            } catch (Throwable th) {
                Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.coreData, "Error saving to Room database.", null, th, 8, null);
            }
            return Unit.INSTANCE;
        }
    }

    public final void save(TriggerRuleOccurrence triggerRuleOccurrence, Function1<? super ManagedTriggerRuleOccurrence, Unit> completion) {
        Intrinsics.checkNotNullParameter(triggerRuleOccurrence, "triggerRuleOccurrence");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05881(triggerRuleOccurrence, this, completion, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.core_data.CoreDataManager$deleteAllEntities$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CoreDataManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.core_data.CoreDataManager$deleteAllEntities$1", f = "CoreDataManager.kt", i = {}, l = {86, 87}, m = "invokeSuspend", n = {}, s = {})
    static final class C05861 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05861(Continuation<? super C05861> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CoreDataManager.this.new C05861(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05861) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        
            if (r8.this$0.getSuperwallDatabase().managedEventDataDao().deleteAll(r8) == r0) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L1e
                goto L60
            L12:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L1a:
                kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L1e
                goto L3b
            L1e:
                r0 = move-exception
                r9 = r0
                r5 = r9
                goto L51
            L22:
                kotlin.ResultKt.throwOnFailure(r9)
                com.superwall.sdk.storage.core_data.CoreDataManager r9 = com.superwall.sdk.storage.core_data.CoreDataManager.this     // Catch: java.lang.Throwable -> L1e
                com.superwall.sdk.storage.core_data.SuperwallDatabase r9 = com.superwall.sdk.storage.core_data.CoreDataManager.access$getSuperwallDatabase(r9)     // Catch: java.lang.Throwable -> L1e
                com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao r9 = r9.managedTriggerRuleOccurrenceDao()     // Catch: java.lang.Throwable -> L1e
                r1 = r8
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1     // Catch: java.lang.Throwable -> L1e
                r8.label = r3     // Catch: java.lang.Throwable -> L1e
                java.lang.Object r9 = r9.deleteAll(r1)     // Catch: java.lang.Throwable -> L1e
                if (r9 != r0) goto L3b
                goto L50
            L3b:
                com.superwall.sdk.storage.core_data.CoreDataManager r9 = com.superwall.sdk.storage.core_data.CoreDataManager.this     // Catch: java.lang.Throwable -> L1e
                com.superwall.sdk.storage.core_data.SuperwallDatabase r9 = com.superwall.sdk.storage.core_data.CoreDataManager.access$getSuperwallDatabase(r9)     // Catch: java.lang.Throwable -> L1e
                com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao r9 = r9.managedEventDataDao()     // Catch: java.lang.Throwable -> L1e
                r1 = r8
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1     // Catch: java.lang.Throwable -> L1e
                r8.label = r2     // Catch: java.lang.Throwable -> L1e
                java.lang.Object r9 = r9.deleteAll(r1)     // Catch: java.lang.Throwable -> L1e
                if (r9 != r0) goto L60
            L50:
                return r0
            L51:
                com.superwall.sdk.logger.Logger r0 = com.superwall.sdk.logger.Logger.INSTANCE
                com.superwall.sdk.logger.LogLevel r1 = com.superwall.sdk.logger.LogLevel.error
                com.superwall.sdk.logger.LogScope r2 = com.superwall.sdk.logger.LogScope.coreData
                r6 = 8
                r7 = 0
                java.lang.String r3 = "Could not delete entities in Room database."
                r4 = 0
                com.superwall.sdk.logger.Logger.debug$default(r0, r1, r2, r3, r4, r5, r6, r7)
            L60:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.storage.core_data.CoreDataManager.C05861.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void deleteAllEntities() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05861(null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getComputedPropertySinceEvent(EventData eventData, ComputedPropertyRequest computedPropertyRequest, Continuation<? super Integer> continuation) {
        C05871 c05871;
        if (continuation instanceof C05871) {
            c05871 = (C05871) continuation;
            if ((c05871.label & Integer.MIN_VALUE) != 0) {
                c05871.label -= Integer.MIN_VALUE;
            } else {
                c05871 = new C05871(continuation);
            }
        } else {
            c05871 = new C05871(continuation);
        }
        Object lastSavedEvent = c05871.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05871.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(lastSavedEvent);
                Date createdAt = (eventData == null || !Intrinsics.areEqual(eventData.getName(), computedPropertyRequest.getEventName())) ? null : eventData.getCreatedAt();
                ManagedEventDataDao managedEventDataDao = getSuperwallDatabase().managedEventDataDao();
                String eventName = computedPropertyRequest.getEventName();
                c05871.L$0 = computedPropertyRequest;
                c05871.label = 1;
                lastSavedEvent = managedEventDataDao.getLastSavedEvent(eventName, createdAt, c05871);
                if (lastSavedEvent == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                computedPropertyRequest = (ComputedPropertyRequest) c05871.L$0;
                ResultKt.throwOnFailure(lastSavedEvent);
            }
            ManagedEventData managedEventData = (ManagedEventData) lastSavedEvent;
            if (managedEventData == null) {
                return null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(managedEventData.getCreatedAt());
            Calendar calendar2 = Calendar.getInstance();
            int calendarComponent = computedPropertyRequest.getType().getCalendarComponent();
            if (calendarComponent == 1) {
                linkedHashMap.put(Boxing.boxInt(1), Boxing.boxInt(calendar2.get(1) - calendar.get(1)));
            } else if (calendarComponent == 2) {
                linkedHashMap.put(Boxing.boxInt(2), Boxing.boxInt((((calendar2.get(1) - calendar.get(1)) * 12) + calendar2.get(2)) - calendar.get(2)));
            } else if (calendarComponent == 5) {
                linkedHashMap.put(Boxing.boxInt(5), Boxing.boxInt((int) ((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) / ((long) 86400000))));
            } else if (calendarComponent == 11) {
                linkedHashMap.put(Boxing.boxInt(11), Boxing.boxInt((int) (((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) / ((long) 3600000)) % ((long) 24))));
            } else if (calendarComponent == 12) {
                linkedHashMap.put(Boxing.boxInt(12), Boxing.boxInt((int) (((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) / ((long) 60000)) % ((long) 60))));
            }
            return computedPropertyRequest.getType().dateComponent(linkedHashMap);
        } catch (Throwable th) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.coreData, "Error getting last saved event from Room database.", null, th, 8, null);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
    
        if (r8 == r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008d, code lost:
    
        if (r8 == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object countTriggerRuleOccurrences(com.superwall.sdk.models.triggers.TriggerRuleOccurrence r7, kotlin.coroutines.Continuation<? super java.lang.Integer> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.superwall.sdk.storage.core_data.CoreDataManager.C05851
            if (r0 == 0) goto L14
            r0 = r8
            com.superwall.sdk.storage.core_data.CoreDataManager$countTriggerRuleOccurrences$1 r0 = (com.superwall.sdk.storage.core_data.CoreDataManager.C05851) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.superwall.sdk.storage.core_data.CoreDataManager$countTriggerRuleOccurrences$1 r0 = new com.superwall.sdk.storage.core_data.CoreDataManager$countTriggerRuleOccurrences$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L90
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L74
        L39:
            kotlin.ResultKt.throwOnFailure(r8)
            com.superwall.sdk.storage.core_data.SuperwallDatabase r8 = r6.getSuperwallDatabase()
            com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao r8 = r8.managedTriggerRuleOccurrenceDao()
            com.superwall.sdk.models.triggers.TriggerRuleOccurrence$Interval r2 = r7.getInterval()
            boolean r5 = r2 instanceof com.superwall.sdk.models.triggers.TriggerRuleOccurrence.Interval.Minutes
            if (r5 == 0) goto L7b
            java.util.Calendar r2 = java.util.Calendar.getInstance()
            com.superwall.sdk.models.triggers.TriggerRuleOccurrence$Interval r3 = r7.getInterval()
            com.superwall.sdk.models.triggers.TriggerRuleOccurrence$Interval$Minutes r3 = (com.superwall.sdk.models.triggers.TriggerRuleOccurrence.Interval.Minutes) r3
            int r3 = r3.getMinutes()
            int r3 = -r3
            r5 = 12
            r2.add(r5, r3)
            java.util.Date r2 = r2.getTime()
            java.lang.String r7 = r7.getKey()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r0.label = r4
            java.lang.Object r8 = r8.getManagedTriggerRuleOccurrencesSinceDate(r2, r7, r0)
            if (r8 != r1) goto L74
            goto L8f
        L74:
            java.util.List r8 = (java.util.List) r8
            int r7 = r8.size()
            goto L96
        L7b:
            com.superwall.sdk.models.triggers.TriggerRuleOccurrence$Interval$Infinity r4 = com.superwall.sdk.models.triggers.TriggerRuleOccurrence.Interval.Infinity.INSTANCE
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
            if (r2 == 0) goto L9b
            java.lang.String r7 = r7.getKey()
            r0.label = r3
            java.lang.Object r8 = r8.getManagedTriggerRuleOccurrencesByKey(r7, r0)
            if (r8 != r1) goto L90
        L8f:
            return r1
        L90:
            java.util.List r8 = (java.util.List) r8
            int r7 = r8.size()
        L96:
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        L9b:
            kotlin.NoWhenBranchMatchedException r7 = new kotlin.NoWhenBranchMatchedException
            r7.<init>()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.storage.core_data.CoreDataManager.countTriggerRuleOccurrences(com.superwall.sdk.models.triggers.TriggerRuleOccurrence, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object countEventsByNameInPeriod(String str, Date date, Date date2, Continuation<? super Integer> continuation) {
        AnonymousClass1 anonymousClass1;
        int iIntValue;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objCountEventsByNameInPeriod = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objCountEventsByNameInPeriod);
                ManagedEventDataDao managedEventDataDao = getSuperwallDatabase().managedEventDataDao();
                anonymousClass1.label = 1;
                objCountEventsByNameInPeriod = managedEventDataDao.countEventsByNameInPeriod(str, date, date2, anonymousClass1);
                if (objCountEventsByNameInPeriod == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objCountEventsByNameInPeriod);
            }
            iIntValue = ((Number) objCountEventsByNameInPeriod).intValue();
        } catch (Throwable th) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.error, LogScope.coreData, "Error counting events by name in period from Room database.", null, th, 8, null);
            iIntValue = 0;
        }
        return Boxing.boxInt(iIntValue);
    }
}
