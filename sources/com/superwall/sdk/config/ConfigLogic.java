package com.superwall.sdk.config;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.assignment.Assignment;
import com.superwall.sdk.models.assignment.ConfirmableAssignment;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.config.PreloadingDisabled;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.models.product.CrossplatformProduct;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.models.triggers.Trigger;
import com.superwall.sdk.models.triggers.TriggerRule;
import com.superwall.sdk.models.triggers.VariantOption;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ConfigLogic.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u000267B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nJ \u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00070\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u000eJ,\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u000e2\u0016\u0010\u0015\u001a\u0012\u0012\b\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u0016J>\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0016\u0010\u001c\u001a\u0012\u0012\b\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u00162\u0016\u0010\u0015\u001a\u0012\u0012\b\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u0016J\"\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00110\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u000e2\u0006\u0010\u001e\u001a\u00020\u001fJR\u0010 \u001a\u00020\u00132\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u000e2\u0016\u0010\u0015\u001a\u0012\u0012\b\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u00162\u0016\u0010\u001c\u001a\u0012\u0012\b\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u0016J$\u0010#\u001a\u0004\u0018\u00010$2\b\u0010%\u001a\u0004\u0018\u00010\u00172\b\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010(\u001a\u00020\u0017JR\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00170\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u000e2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050\u00162\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050\u00162\u0006\u0010*\u001a\u00020+H\u0086@¢\u0006\u0002\u0010,JJ\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00170\u000e2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00110\u000e2\u0016\u0010\u0015\u001a\u0012\u0012\b\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u00162\u0016\u0010\u001c\u001a\u0012\u0012\b\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u00050\u0016J \u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00110\u00162\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00110\u000eJ&\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u0002020\u000e0\u00162\f\u00100\u001a\b\u0012\u0004\u0012\u0002030\u0007J&\u00104\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u0002020\u000e0\u00162\f\u00100\u001a\b\u0012\u0004\u0012\u0002050\u0007¨\u00068"}, d2 = {"Lcom/superwall/sdk/config/ConfigLogic;", "", "<init>", "()V", "chooseVariant", "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "variants", "", "Lcom/superwall/sdk/models/triggers/VariantOption;", "randomiser", "Lkotlin/Function1;", "Lkotlin/ranges/IntRange;", "", "getRulesPerCampaign", "", "Lcom/superwall/sdk/models/triggers/TriggerRule;", "triggers", "Lcom/superwall/sdk/models/triggers/Trigger;", "chooseAssignments", "Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;", "fromTriggers", "confirmedAssignments", "", "", "Lcom/superwall/sdk/models/triggers/ExperimentID;", "move", "newAssignment", "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;", "unconfirmedAssignments", "filterTriggers", "preloadingDisabled", "Lcom/superwall/sdk/models/config/PreloadingDisabled;", "transferAssignmentsFromServerToDisk", "assignments", "Lcom/superwall/sdk/models/assignment/Assignment;", "getStaticPaywall", "Lcom/superwall/sdk/models/paywall/Paywall;", "withId", "config", "Lcom/superwall/sdk/models/config/Config;", "deviceLocale", "getAllActiveTreatmentPaywallIds", "expressionEvaluator", "Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;", "(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/rule_logic/expression_evaluator/ExpressionEvaluating;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getActiveTreatmentPaywallIds", "forTriggers", "getTriggersByEventName", Constants.MessagePayloadKeys.FROM, "extractEntitlementsByProductId", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "Lcom/superwall/sdk/models/product/ProductItem;", "extractEntitlementsByProductIdFromCrossplatform", "Lcom/superwall/sdk/models/product/CrossplatformProduct;", "TriggerRuleError", "AssignmentOutcome", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConfigLogic {
    public static final ConfigLogic INSTANCE = new ConfigLogic();

    /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigLogic$getAllActiveTreatmentPaywallIds$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConfigLogic.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.ConfigLogic", f = "ConfigLogic.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0}, l = {254}, m = "getAllActiveTreatmentPaywallIds", n = {"unconfirmedAssignments", "expressionEvaluator", "confirmedAssignments", "confirmedExperimentIds", "allExperimentIds", "skippedExperimentIds", "campaignRules", "ifTrueRules", "element$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$7", "L$8", "L$10"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$10;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigLogic.this.getAllActiveTreatmentPaywallIds(null, null, null, null, this);
        }
    }

    /* JADX INFO: compiled from: ConfigLogic.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0003\u0010\u0004\u0082\u0001\u0002\u0007\b¨\u0006\t"}, d2 = {"Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<init>", "()V", "NoVariantsFound", "InvalidState", "Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError$InvalidState;", "Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError$NoVariantsFound;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class TriggerRuleError extends Exception {
        public /* synthetic */ TriggerRuleError(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: ConfigLogic.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError$NoVariantsFound;", "Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class NoVariantsFound extends TriggerRuleError {
            public static final NoVariantsFound INSTANCE = new NoVariantsFound();

            private NoVariantsFound() {
                super(null);
            }
        }

        private TriggerRuleError() {
        }

        /* JADX INFO: compiled from: ConfigLogic.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError$InvalidState;", "Lcom/superwall/sdk/config/ConfigLogic$TriggerRuleError;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class InvalidState extends TriggerRuleError {
            public static final InvalidState INSTANCE = new InvalidState();

            private InvalidState() {
                super(null);
            }
        }
    }

    private ConfigLogic() {
    }

    /* JADX INFO: compiled from: ConfigLogic.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0016\u0010\u0002\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0016\u0010\u0007\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\r\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u0019\u0010\u000e\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J=\u0010\u000f\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u00032\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0004HÖ\u0001R!\u0010\u0002\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR!\u0010\u0007\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;", "", "confirmed", "", "", "Lcom/superwall/sdk/models/triggers/ExperimentID;", "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "unconfirmed", "<init>", "(Ljava/util/Map;Ljava/util/Map;)V", "getConfirmed", "()Ljava/util/Map;", "getUnconfirmed", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class AssignmentOutcome {
        private final Map<String, Experiment.Variant> confirmed;
        private final Map<String, Experiment.Variant> unconfirmed;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ AssignmentOutcome copy$default(AssignmentOutcome assignmentOutcome, Map map, Map map2, int i, Object obj) {
            if ((i & 1) != 0) {
                map = assignmentOutcome.confirmed;
            }
            if ((i & 2) != 0) {
                map2 = assignmentOutcome.unconfirmed;
            }
            return assignmentOutcome.copy(map, map2);
        }

        public final Map<String, Experiment.Variant> component1() {
            return this.confirmed;
        }

        public final Map<String, Experiment.Variant> component2() {
            return this.unconfirmed;
        }

        public final AssignmentOutcome copy(Map<String, Experiment.Variant> confirmed, Map<String, Experiment.Variant> unconfirmed) {
            Intrinsics.checkNotNullParameter(confirmed, "confirmed");
            Intrinsics.checkNotNullParameter(unconfirmed, "unconfirmed");
            return new AssignmentOutcome(confirmed, unconfirmed);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AssignmentOutcome)) {
                return false;
            }
            AssignmentOutcome assignmentOutcome = (AssignmentOutcome) other;
            return Intrinsics.areEqual(this.confirmed, assignmentOutcome.confirmed) && Intrinsics.areEqual(this.unconfirmed, assignmentOutcome.unconfirmed);
        }

        public int hashCode() {
            return (this.confirmed.hashCode() * 31) + this.unconfirmed.hashCode();
        }

        public String toString() {
            return "AssignmentOutcome(confirmed=" + this.confirmed + ", unconfirmed=" + this.unconfirmed + ")";
        }

        public AssignmentOutcome(Map<String, Experiment.Variant> confirmed, Map<String, Experiment.Variant> unconfirmed) {
            Intrinsics.checkNotNullParameter(confirmed, "confirmed");
            Intrinsics.checkNotNullParameter(unconfirmed, "unconfirmed");
            this.confirmed = confirmed;
            this.unconfirmed = unconfirmed;
        }

        public final Map<String, Experiment.Variant> getConfirmed() {
            return this.confirmed;
        }

        public final Map<String, Experiment.Variant> getUnconfirmed() {
            return this.unconfirmed;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Experiment.Variant chooseVariant$default(ConfigLogic configLogic, List list, Function1 function1, int i, Object obj) throws TriggerRuleError {
        if ((i & 2) != 0) {
            function1 = new Function1() { // from class: com.superwall.sdk.config.ConfigLogic$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Integer.valueOf(ConfigLogic.chooseVariant$lambda$0((IntRange) obj2));
                }
            };
        }
        return configLogic.chooseVariant(list, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int chooseVariant$lambda$0(IntRange it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return RangesKt.random(it, Random.INSTANCE);
    }

    public final Experiment.Variant chooseVariant(List<VariantOption> variants, Function1<? super IntRange, Integer> randomiser) throws TriggerRuleError {
        Intrinsics.checkNotNullParameter(variants, "variants");
        Intrinsics.checkNotNullParameter(randomiser, "randomiser");
        if (variants.isEmpty()) {
            throw TriggerRuleError.NoVariantsFound.INSTANCE;
        }
        if (variants.size() == 1) {
            VariantOption variantOption = (VariantOption) CollectionsKt.first((List) variants);
            return new Experiment.Variant(variantOption.getId(), variantOption.getType(), variantOption.getPaywallId());
        }
        Iterator<T> it = variants.iterator();
        int percentage = 0;
        int percentage2 = 0;
        while (it.hasNext()) {
            percentage2 += ((VariantOption) it.next()).getPercentage();
        }
        if (percentage2 == 0) {
            VariantOption variantOption2 = variants.get(randomiser.invoke(RangesKt.until(0, variants.size())).intValue());
            return new Experiment.Variant(variantOption2.getId(), variantOption2.getType(), variantOption2.getPaywallId());
        }
        int iIntValue = randomiser.invoke(RangesKt.until(0, percentage2)).intValue();
        for (VariantOption variantOption3 : variants) {
            percentage += variantOption3.getPercentage();
            if (iIntValue < percentage) {
                return new Experiment.Variant(variantOption3.getId(), variantOption3.getType(), variantOption3.getPaywallId());
            }
        }
        throw TriggerRuleError.InvalidState.INSTANCE;
    }

    public final Set<List<TriggerRule>> getRulesPerCampaign(Set<Trigger> triggers) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        for (Trigger trigger : triggers) {
            TriggerRule triggerRule = (TriggerRule) CollectionsKt.firstOrNull((List) trigger.getRules());
            if (triggerRule != null) {
                String groupId = triggerRule.getExperiment().getGroupId();
                if (!linkedHashSet.contains(groupId)) {
                    linkedHashSet.add(groupId);
                    linkedHashSet2.add(trigger.getRules());
                }
            }
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.configManager, "!!! groupedTriggerRules", null, null, 24, null);
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.configManager, linkedHashSet2.toString(), null, null, 24, null);
        return linkedHashSet2;
    }

    public final AssignmentOutcome chooseAssignments(Set<Trigger> fromTriggers, Map<String, Experiment.Variant> confirmedAssignments) {
        Intrinsics.checkNotNullParameter(fromTriggers, "fromTriggers");
        Intrinsics.checkNotNullParameter(confirmedAssignments, "confirmedAssignments");
        Map mutableMap = MapsKt.toMutableMap(confirmedAssignments);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<List<TriggerRule>> it = getRulesPerCampaign(fromTriggers).iterator();
        while (it.hasNext()) {
            for (TriggerRule triggerRule : it.next()) {
                List<VariantOption> variants = triggerRule.getExperiment().getVariants();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(variants, 10));
                Iterator<T> it2 = variants.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((VariantOption) it2.next()).getId());
                }
                Set set = CollectionsKt.toSet(arrayList);
                Experiment.Variant variant = (Experiment.Variant) mutableMap.get(triggerRule.getExperiment().getId());
                if (variant != null) {
                    if (!set.contains(variant.getId())) {
                        try {
                            linkedHashMap.put(triggerRule.getExperiment().getId(), chooseVariant$default(this, triggerRule.getExperiment().getVariants(), null, 2, null));
                            mutableMap.remove(triggerRule.getExperiment().getId());
                        } catch (TriggerRuleError unused) {
                            mutableMap.remove(triggerRule.getExperiment().getId());
                        }
                    }
                } else {
                    try {
                        linkedHashMap.put(triggerRule.getExperiment().getId(), chooseVariant$default(this, triggerRule.getExperiment().getVariants(), null, 2, null));
                    } catch (TriggerRuleError unused2) {
                    }
                }
            }
        }
        return new AssignmentOutcome(mutableMap, linkedHashMap);
    }

    public final AssignmentOutcome move(ConfirmableAssignment newAssignment, Map<String, Experiment.Variant> unconfirmedAssignments, Map<String, Experiment.Variant> confirmedAssignments) {
        Intrinsics.checkNotNullParameter(newAssignment, "newAssignment");
        Intrinsics.checkNotNullParameter(unconfirmedAssignments, "unconfirmedAssignments");
        Intrinsics.checkNotNullParameter(confirmedAssignments, "confirmedAssignments");
        Map mutableMap = MapsKt.toMutableMap(confirmedAssignments);
        mutableMap.put(newAssignment.getExperimentId(), newAssignment.getVariant());
        Map mutableMap2 = MapsKt.toMutableMap(unconfirmedAssignments);
        mutableMap2.remove(newAssignment.getExperimentId());
        return new AssignmentOutcome(mutableMap, mutableMap2);
    }

    public final Set<Trigger> filterTriggers(Set<Trigger> triggers, PreloadingDisabled preloadingDisabled) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        Intrinsics.checkNotNullParameter(preloadingDisabled, "preloadingDisabled");
        if (preloadingDisabled.getAll()) {
            return SetsKt.emptySet();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : triggers) {
            if (!preloadingDisabled.getTriggers().contains(((Trigger) obj).getEventName())) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.toSet(arrayList);
    }

    public final AssignmentOutcome transferAssignmentsFromServerToDisk(List<Assignment> assignments, Set<Trigger> triggers, Map<String, Experiment.Variant> confirmedAssignments, Map<String, Experiment.Variant> unconfirmedAssignments) {
        Object next;
        Intrinsics.checkNotNullParameter(assignments, "assignments");
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        Intrinsics.checkNotNullParameter(confirmedAssignments, "confirmedAssignments");
        Intrinsics.checkNotNullParameter(unconfirmedAssignments, "unconfirmedAssignments");
        Map mutableMap = MapsKt.toMutableMap(confirmedAssignments);
        Map mutableMap2 = MapsKt.toMutableMap(unconfirmedAssignments);
        for (Assignment assignment : assignments) {
            Iterator<T> it = triggers.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                List<TriggerRule> rules = ((Trigger) next).getRules();
                if (!(rules instanceof Collection) || !rules.isEmpty()) {
                    Iterator<T> it2 = rules.iterator();
                    while (it2.hasNext()) {
                        if (Intrinsics.areEqual(((TriggerRule) it2.next()).getExperiment().getId(), assignment.getExperimentId())) {
                            break;
                        }
                    }
                }
            }
            Trigger trigger = (Trigger) next;
            if (trigger != null) {
                List<TriggerRule> rules2 = trigger.getRules();
                ArrayList arrayList = new ArrayList();
                Iterator<T> it3 = rules2.iterator();
                while (it3.hasNext()) {
                    List<VariantOption> variants = ((TriggerRule) it3.next()).getExperiment().getVariants();
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : variants) {
                        if (Intrinsics.areEqual(((VariantOption) obj).getId(), assignment.getVariantId())) {
                            arrayList2.add(obj);
                        }
                    }
                    CollectionsKt.addAll(arrayList, arrayList2);
                }
                VariantOption variantOption = (VariantOption) CollectionsKt.firstOrNull((List) arrayList);
                if (variantOption != null) {
                    mutableMap.put(assignment.getExperimentId(), variantOption.toVariant());
                    mutableMap2.remove(assignment.getExperimentId());
                }
            }
        }
        return new AssignmentOutcome(mutableMap, mutableMap2);
    }

    public final Paywall getStaticPaywall(String withId, Config config, String deviceLocale) {
        String str;
        Intrinsics.checkNotNullParameter(deviceLocale, "deviceLocale");
        Object obj = null;
        if (withId == null || config == null || config.getLocales().contains(deviceLocale) || (str = (String) CollectionsKt.firstOrNull(StringsKt.split$default((CharSequence) deviceLocale, new String[]{"_"}, false, 0, 6, (Object) null))) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(str, "en") && config.getLocales().contains(str)) {
            return null;
        }
        for (Object obj2 : config.getPaywalls()) {
            if (Intrinsics.areEqual(((Paywall) obj2).getIdentifier(), withId)) {
                obj = obj2;
                break;
            }
        }
        return (Paywall) obj;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:20:0x00c8 A[LOOP:4: B:18:0x00c2->B:20:0x00c8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:26:0x0105  */
    /* JADX WARN: Code duplicated, block: B:31:0x0126  */
    /* JADX WARN: Code duplicated, block: B:33:0x014d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x015a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0178 A[LOOP:0: B:39:0x0172->B:41:0x0178, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:45:0x019f  */
    /* JADX WARN: Code duplicated, block: B:47:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:50:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:53:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:58:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:64:0x020f A[LOOP:3: B:62:0x0209->B:64:0x020f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code duplicated, block: B:86:0x01c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x01f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x01d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, java.util.Map] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x010b -> B:29:0x0120). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x014b -> B:34:0x014e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:53:0x01c0
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object getAllActiveTreatmentPaywallIds(java.util.Set<com.superwall.sdk.models.triggers.Trigger> r18, java.util.Map<java.lang.String, com.superwall.sdk.models.triggers.Experiment.Variant> r19, java.util.Map<java.lang.String, com.superwall.sdk.models.triggers.Experiment.Variant> r20, com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating r21, kotlin.coroutines.Continuation<? super java.util.Set<java.lang.String>> r22) {
        /*
            Method dump skipped, instruction units count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.ConfigLogic.getAllActiveTreatmentPaywallIds(java.util.Set, java.util.Map, java.util.Map, com.superwall.sdk.paywall.presentation.rule_logic.expression_evaluator.ExpressionEvaluating, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Set<String> getActiveTreatmentPaywallIds(Set<Trigger> forTriggers, Map<String, Experiment.Variant> confirmedAssignments, Map<String, Experiment.Variant> unconfirmedAssignments) {
        String paywallId;
        Intrinsics.checkNotNullParameter(forTriggers, "forTriggers");
        Intrinsics.checkNotNullParameter(confirmedAssignments, "confirmedAssignments");
        Intrinsics.checkNotNullParameter(unconfirmedAssignments, "unconfirmedAssignments");
        Map mapPlus = MapsKt.plus(confirmedAssignments, unconfirmedAssignments);
        Set<List<TriggerRule>> rulesPerCampaign = getRulesPerCampaign(forTriggers);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = rulesPerCampaign.iterator();
        while (it.hasNext()) {
            List list = (List) it.next();
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((TriggerRule) it2.next()).getExperiment().getId());
            }
            CollectionsKt.addAll(arrayList, arrayList2);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Experiment.Variant variant = (Experiment.Variant) mapPlus.get((String) it3.next());
            if (variant != null && variant.getType() == Experiment.Variant.VariantType.TREATMENT && (paywallId = variant.getPaywallId()) != null) {
                linkedHashSet.add(paywallId);
            }
        }
        return linkedHashSet;
    }

    public final Map<String, Trigger> getTriggersByEventName(Set<Trigger> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        Set<Trigger> set = from;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(set, 10)), 16));
        for (Object obj : set) {
            linkedHashMap.put(((Trigger) obj).getEventName(), obj);
        }
        return linkedHashMap;
    }

    public final Map<String, Set<Entitlement>> extractEntitlementsByProductId(List<ProductItem> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        List<ProductItem> list = from;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
        for (ProductItem productItem : list) {
            Pair pair = TuplesKt.to(productItem.getFullProductId(), productItem.getEntitlements());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    public final Map<String, Set<Entitlement>> extractEntitlementsByProductIdFromCrossplatform(List<CrossplatformProduct> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        List<CrossplatformProduct> list = from;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
        for (CrossplatformProduct crossplatformProduct : list) {
            Pair pair = TuplesKt.to(crossplatformProduct.getFullProductId(), CollectionsKt.toSet(crossplatformProduct.getEntitlements()));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }
}
