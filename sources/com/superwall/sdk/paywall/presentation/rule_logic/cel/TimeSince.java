package com.superwall.sdk.paywall.presentation.rule_logic.cel;

import androidx.compose.runtime.ComposerKt;
import androidx.core.app.NotificationCompat;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0096B¢\u0006\u0002\u0010\u000eR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0001\u0004\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/TimeSince;", "", NotificationCompat.CATEGORY_EVENT, "", "getEvent", "()Ljava/lang/String;", "propertyRequest", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "getPropertyRequest", "()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "invoke", "", "storage", "Lcom/superwall/sdk/storage/core_data/CoreDataManager;", "(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$DaysSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$HoursSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MinutesSince;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/SuperscriptExposedFunction$MonthsSince;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface TimeSince {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.rule_logic.cel.TimeSince$DefaultImpls", f = "SuperscriptExposedFunction.kt", i = {}, l = {ComposerKt.providerValuesKey}, m = "invoke", n = {}, s = {})
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
            return DefaultImpls.invoke(null, null, this);
        }
    }

    String getEvent();

    ComputedPropertyRequest.ComputedPropertyRequestType getPropertyRequest();

    Object invoke(CoreDataManager coreDataManager, Continuation<? super Integer> continuation);

    /* JADX INFO: compiled from: SuperscriptExposedFunction.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        public static Object invoke(TimeSince timeSince, CoreDataManager coreDataManager, Continuation<? super Integer> continuation) {
            AnonymousClass1 anonymousClass1;
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
            Object computedPropertySinceEvent = anonymousClass1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = anonymousClass1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(computedPropertySinceEvent);
                ComputedPropertyRequest computedPropertyRequest = new ComputedPropertyRequest(timeSince.getPropertyRequest(), timeSince.getEvent());
                anonymousClass1.label = 1;
                computedPropertySinceEvent = coreDataManager.getComputedPropertySinceEvent(null, computedPropertyRequest, anonymousClass1);
                if (computedPropertySinceEvent == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(computedPropertySinceEvent);
            }
            Integer num = (Integer) computedPropertySinceEvent;
            return Boxing.boxInt(num != null ? num.intValue() : 0);
        }
    }
}
