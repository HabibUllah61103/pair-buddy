package com.superwall.sdk.config;

import com.superwall.sdk.Superwall;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.models.assignment.Assignment;
import com.superwall.sdk.models.assignment.AssignmentPostback;
import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.models.triggers.Trigger;
import com.superwall.sdk.network.NetworkError;
import com.superwall.sdk.network.SuperwallAPI;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Assignments.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0018\b\u0002\u0010\b\u001a\u0012\u0012\b\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\f0\t¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016J.\u0010\u0018\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0004\u0012\u00020\u001c0\u00192\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0086@¢\u0006\u0002\u0010\u001dJ\u000e\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 J,\u0010!\u001a\u00020\u00142\"\u0010\"\u001a\u001e\u0012\u0014\u0012\u0012\u0012\b\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\f0\t\u0012\u0004\u0012\u00020$0#H\u0002J\u0006\u0010%\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\b\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\f0\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R!\u0010\b\u001a\u0012\u0012\b\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\f0\t8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006&"}, d2 = {"Lcom/superwall/sdk/config/Assignments;", "", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "network", "Lcom/superwall/sdk/network/SuperwallAPI;", "ioScope", "Lkotlinx/coroutines/CoroutineScope;", "unconfirmedAssignments", "", "", "Lcom/superwall/sdk/models/triggers/ExperimentID;", "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "<init>", "(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;)V", "_unconfirmedAssignments", "", "getUnconfirmedAssignments", "()Ljava/util/Map;", "choosePaywallVariants", "", "triggers", "", "Lcom/superwall/sdk/models/triggers/Trigger;", "getAssignments", "Lcom/superwall/sdk/misc/Either;", "", "Lcom/superwall/sdk/models/assignment/Assignment;", "Lcom/superwall/sdk/network/NetworkError;", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmAssignment", "assignment", "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;", "updateAssignments", "operation", "Lkotlin/Function1;", "Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;", "reset", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Assignments {
    private Map<String, Experiment.Variant> _unconfirmedAssignments;
    private final CoroutineScope ioScope;
    private final SuperwallAPI network;
    private final LocalStorage storage;

    /* JADX INFO: renamed from: com.superwall.sdk.config.Assignments$getAssignments$1, reason: invalid class name */
    /* JADX INFO: compiled from: Assignments.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.Assignments", f = "Assignments.kt", i = {0, 0}, l = {40, 41}, m = "getAssignments", n = {"this", "triggers"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Assignments.this.getAssignments(null, this);
        }
    }

    public Assignments(LocalStorage storage, SuperwallAPI network, CoroutineScope ioScope, Map<String, Experiment.Variant> unconfirmedAssignments) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(unconfirmedAssignments, "unconfirmedAssignments");
        this.storage = storage;
        this.network = network;
        this.ioScope = ioScope;
        this._unconfirmedAssignments = MapsKt.toMutableMap(unconfirmedAssignments);
    }

    public /* synthetic */ Assignments(LocalStorage localStorage, SuperwallAPI superwallAPI, CoroutineScope coroutineScope, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(localStorage, superwallAPI, coroutineScope, (i & 8) != 0 ? MapsKt.emptyMap() : map);
    }

    public final Map<String, Experiment.Variant> getUnconfirmedAssignments() {
        return this._unconfirmedAssignments;
    }

    public final void choosePaywallVariants(final Set<Trigger> triggers) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        updateAssignments(new Function1() { // from class: com.superwall.sdk.config.Assignments$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Assignments.choosePaywallVariants$lambda$0(triggers, (Map) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConfigLogic.AssignmentOutcome choosePaywallVariants$lambda$0(Set set, Map confirmedAssignments) {
        Intrinsics.checkNotNullParameter(confirmedAssignments, "confirmedAssignments");
        return ConfigLogic.INSTANCE.chooseAssignments(set, confirmedAssignments);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getAssignments(Set<Trigger> set, Continuation<? super Either<? extends List<Assignment>, NetworkError>> continuation) {
        AnonymousClass1 anonymousClass1;
        Assignments assignments;
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
        Object assignments2 = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(assignments2);
            SuperwallAPI superwallAPI = this.network;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = set;
            anonymousClass1.label = 1;
            assignments2 = superwallAPI.getAssignments(anonymousClass1);
            if (assignments2 != coroutine_suspended) {
                assignments = this;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(assignments2);
            return assignments2;
        }
        set = (Set) anonymousClass1.L$1;
        assignments = (Assignments) anonymousClass1.L$0;
        ResultKt.throwOnFailure(assignments2);
        AnonymousClass2 anonymousClass2 = assignments.new AnonymousClass2(set, null);
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.label = 2;
        Object objThen = EitherKt.then((Either) assignments2, anonymousClass2, anonymousClass1);
        return objThen == coroutine_suspended ? coroutine_suspended : objThen;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.Assignments$getAssignments$2, reason: invalid class name */
    /* JADX INFO: compiled from: Assignments.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "it", "", "Lcom/superwall/sdk/models/assignment/Assignment;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.Assignments$getAssignments$2", f = "Assignments.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<List<? extends Assignment>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Set<Trigger> $triggers;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Set<Trigger> set, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$triggers = set;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = Assignments.this.new AnonymousClass2(this.$triggers, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(List<? extends Assignment> list, Continuation<? super Unit> continuation) {
            return invoke2((List<Assignment>) list, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(List<Assignment> list, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final List list = (List) this.L$0;
            final Assignments assignments = Assignments.this;
            final Set<Trigger> set = this.$triggers;
            assignments.updateAssignments(new Function1() { // from class: com.superwall.sdk.config.Assignments$getAssignments$2$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Assignments.AnonymousClass2.invokeSuspend$lambda$0(list, set, assignments, (Map) obj2);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ConfigLogic.AssignmentOutcome invokeSuspend$lambda$0(List list, Set set, Assignments assignments, Map map) {
            return ConfigLogic.INSTANCE.transferAssignmentsFromServerToDisk(list, set, map, assignments.getUnconfirmedAssignments());
        }
    }

    public final void confirmAssignment(final ConfirmableAssignment assignment) {
        Intrinsics.checkNotNullParameter(assignment, "assignment");
        try {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new Assignments$confirmAssignment$1$1(this, AssignmentPostback.INSTANCE.create(assignment), null), 3, null);
            updateAssignments(new Function1() { // from class: com.superwall.sdk.config.Assignments$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Assignments.confirmAssignment$lambda$2$lambda$1(assignment, this, (Map) obj);
                }
            });
            new Either.Success(Unit.INSTANCE);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            new Either.Failure(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConfigLogic.AssignmentOutcome confirmAssignment$lambda$2$lambda$1(ConfirmableAssignment confirmableAssignment, Assignments assignments, Map confirmedAssignments) {
        Intrinsics.checkNotNullParameter(confirmedAssignments, "confirmedAssignments");
        return ConfigLogic.INSTANCE.move(confirmableAssignment, assignments.getUnconfirmedAssignments(), confirmedAssignments);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAssignments(Function1<? super Map<String, Experiment.Variant>, ConfigLogic.AssignmentOutcome> operation) {
        try {
            ConfigLogic.AssignmentOutcome assignmentOutcomeInvoke = operation.invoke(this.storage.getConfirmedAssignments());
            this._unconfirmedAssignments = MapsKt.toMutableMap(assignmentOutcomeInvoke.getUnconfirmed());
            this.storage.saveConfirmedAssignments(MapsKt.toMutableMap(assignmentOutcomeInvoke.getConfirmed()));
            new Either.Success(Unit.INSTANCE);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            new Either.Failure(th);
        }
    }

    public final void reset() {
        this._unconfirmedAssignments.clear();
    }
}
