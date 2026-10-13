package com.superwall.sdk.paywall.presentation.rule_logic.cel;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.superwall.sdk.dependencies.RuleAttributesFactory;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.triggers.TriggerRule;
import com.superwall.sdk.models.triggers.TriggerRuleOutcome;
import com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: SuperscriptEvaluator.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0015B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096@¢\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;", "json", "Lkotlinx/serialization/json/Json;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "storage", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "factory", "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "hostContext", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;", "<init>", "(Lkotlinx/serialization/json/Json;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/dependencies/RuleAttributesFactory;Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptHostContext;)V", "evaluateExpression", "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;", "rule", "Lcom/superwall/sdk/models/triggers/TriggerRule;", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "(Lcom/superwall/sdk/models/triggers/TriggerRule;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "NotError", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SuperscriptEvaluator implements ExpressionEvaluating {
    private final RuleAttributesFactory factory;
    private final SuperscriptHostContext hostContext;
    private final IOScope ioScope;
    private final Json json;
    private final CoreDataManager storage;

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator$evaluateExpression$1, reason: invalid class name */
    /* JADX INFO: compiled from: SuperscriptEvaluator.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator", f = "SuperscriptEvaluator.kt", i = {1, 1, 2, 2}, l = {61, 65, 113}, m = "evaluateExpression", n = {"this", "rule", "this", "rule"}, s = {"L$0", "L$1", "L$0", "L$1"})
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
            return SuperscriptEvaluator.this.evaluateExpression(null, null, this);
        }
    }

    public SuperscriptEvaluator(Json json, IOScope ioScope, CoreDataManager storage, RuleAttributesFactory factory, SuperscriptHostContext hostContext) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(hostContext, "hostContext");
        this.json = json;
        this.ioScope = ioScope;
        this.storage = storage;
        this.factory = factory;
        this.hostContext = hostContext;
    }

    public /* synthetic */ SuperscriptEvaluator(Json json, IOScope iOScope, CoreDataManager coreDataManager, RuleAttributesFactory ruleAttributesFactory, SuperscriptHostContext superscriptHostContext, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, iOScope, coreDataManager, ruleAttributesFactory, (i & 16) != 0 ? new SuperscriptHostContext(json, coreDataManager) : superscriptHostContext);
    }

    /* JADX INFO: compiled from: SuperscriptEvaluator.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptEvaluator$NotError;", "", TypedValues.Custom.S_STRING, "", "<init>", "(Ljava/lang/String;)V", "getString", "()Ljava/lang/String;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class NotError extends Throwable {
        private final String string;

        public final String getString() {
            return this.string;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotError(String string) {
            super(string);
            Intrinsics.checkNotNullParameter(string, "string");
            this.string = string;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
    
        if (r9 == r1) goto L31;
     */
    @Override // com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object evaluateExpression(com.superwall.sdk.models.triggers.TriggerRule r7, com.superwall.sdk.models.events.EventData r8, kotlin.coroutines.Continuation<? super com.superwall.sdk.models.triggers.TriggerRuleOutcome> r9) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator.evaluateExpression(com.superwall.sdk.models.triggers.TriggerRule, com.superwall.sdk.models.events.EventData, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator$evaluateExpression$2, reason: invalid class name */
    /* JADX INFO: compiled from: SuperscriptEvaluator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/triggers/TriggerRuleOutcome;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator$evaluateExpression$2", f = "SuperscriptEvaluator.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT, 104}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TriggerRuleOutcome>, Object> {
        final /* synthetic */ EventData $eventData;
        final /* synthetic */ TriggerRule $rule;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(EventData eventData, TriggerRule triggerRule, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$eventData = eventData;
            this.$rule = triggerRule;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SuperscriptEvaluator.this.new AnonymousClass2(this.$eventData, this.$rule, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TriggerRuleOutcome> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: E */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0192, code lost:
        
            if (r14 == r0) goto L33;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) throws E, com.superwall.supercel.InternalException {
            /*
                Method dump skipped, instruction units count: 433
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.presentation.rule_logic.cel.SuperscriptEvaluator.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
