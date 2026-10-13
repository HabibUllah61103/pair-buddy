package com.superwall.sdk.analytics;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.firebase.messaging.ServiceStarter;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.attribution.AttributionProvider;
import com.superwall.sdk.models.internal.VendorId;
import com.superwall.sdk.storage.IntegrationAttributes;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: AttributionManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\f\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e0\u001cH\u0000¢\u0006\u0002\b)J\u001a\u0010*\u001a\u00020\b2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001cR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R/\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\f¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e0\u001c8F¢\u0006\u0006\u001a\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006,"}, d2 = {"Lcom/superwall/sdk/analytics/AttributionManager;", "", "storage", "Lcom/superwall/sdk/storage/Storage;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "redeemAfterSetting", "Lkotlin/Function0;", "vendorId", "Lcom/superwall/sdk/models/internal/VendorId;", "<init>", "(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "getStorage", "()Lcom/superwall/sdk/storage/Storage;", "getTrack", "()Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function2;", "getIoScope", "()Lcom/superwall/sdk/misc/IOScope;", "getRedeemAfterSetting", "()Lkotlin/jvm/functions/Function0;", "getVendorId", "_integrationAttributes", "", "Lcom/superwall/sdk/models/attribution/AttributionProvider;", "", "integrationAttributes", "getIntegrationAttributes", "()Ljava/util/Map;", "lastIntegrationJob", "Lkotlinx/coroutines/Job;", "getLastIntegrationJob", "()Lkotlinx/coroutines/Job;", "setLastIntegrationJob", "(Lkotlinx/coroutines/Job;)V", "getFullAttributionIds", "getFullAttributionIds$superwall_release", "setIntegrationAttributes", "attributes", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AttributionManager {
    private Map<AttributionProvider, String> _integrationAttributes;
    private final IOScope ioScope;
    private Job lastIntegrationJob;
    private final Function0<Unit> redeemAfterSetting;
    private final Storage storage;
    private final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> track;
    private final Function0<VendorId> vendorId;

    /* JADX WARN: Multi-variable type inference failed */
    public AttributionManager(Storage storage, Function2<? super TrackableSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track, IOScope ioScope, Function0<Unit> redeemAfterSetting, Function0<VendorId> vendorId) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(track, "track");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(redeemAfterSetting, "redeemAfterSetting");
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        this.storage = storage;
        this.track = track;
        this.ioScope = ioScope;
        this.redeemAfterSetting = redeemAfterSetting;
        this.vendorId = vendorId;
        this._integrationAttributes = MapsKt.emptyMap();
        Map<AttributionProvider, String> map = (Map) storage.read(IntegrationAttributes.INSTANCE);
        this._integrationAttributes = map == null ? MapsKt.emptyMap() : map;
    }

    public final Storage getStorage() {
        return this.storage;
    }

    public final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> getTrack() {
        return this.track;
    }

    public /* synthetic */ AttributionManager(Storage storage, Function2 function2, IOScope iOScope, Function0 function0, Function0 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storage, function2, (i & 4) != 0 ? new IOScope(null, 1, null) : iOScope, function0, function1);
    }

    public final IOScope getIoScope() {
        return this.ioScope;
    }

    public final Function0<Unit> getRedeemAfterSetting() {
        return this.redeemAfterSetting;
    }

    public final Function0<VendorId> getVendorId() {
        return this.vendorId;
    }

    public final Map<String, String> getIntegrationAttributes() {
        return getFullAttributionIds$superwall_release();
    }

    public final Job getLastIntegrationJob() {
        return this.lastIntegrationJob;
    }

    public final void setLastIntegrationJob(Job job) {
        this.lastIntegrationJob = job;
    }

    public final Map<String, String> getFullAttributionIds$superwall_release() {
        Map<AttributionProvider, String> map = this._integrationAttributes;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<AttributionProvider, String> entry : map.entrySet()) {
            arrayList.add(TuplesKt.to(entry.getKey().getRawName(), entry.getValue()));
        }
        return MapsKt.toMap(arrayList);
    }

    public final void setIntegrationAttributes(Map<AttributionProvider, String> attributes) {
        Unit unit;
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        if (this.lastIntegrationJob != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                AttributionManager attributionManager = this;
                Job job = this.lastIntegrationJob;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                Result.m11241constructorimpl(unit);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m11241constructorimpl(ResultKt.createFailure(th));
            }
        }
        this.lastIntegrationJob = BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass2(attributes, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.AttributionManager$setIntegrationAttributes$2, reason: invalid class name */
    /* JADX INFO: compiled from: AttributionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.AttributionManager$setIntegrationAttributes$2", f = "AttributionManager.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Map<AttributionProvider, String> $attributes;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Map<AttributionProvider, String> map, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$attributes = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AttributionManager.this.new AnonymousClass2(this.$attributes, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Duration.Companion companion = Duration.INSTANCE;
                this.label = 1;
                if (DelayKt.m12746delayVtjQ1oo(DurationKt.toDuration(ServiceStarter.ERROR_UNKNOWN, DurationUnit.MILLISECONDS), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            AttributionManager attributionManager = AttributionManager.this;
            try {
                attributionManager._integrationAttributes = this.$attributes;
                Map<String, String> fullAttributionIds$superwall_release = attributionManager.getFullAttributionIds$superwall_release();
                attributionManager.getStorage().write(IntegrationAttributes.INSTANCE, attributionManager._integrationAttributes);
                new Either.Success(BuildersKt__Builders_commonKt.launch$default(attributionManager.getIoScope(), null, null, new AttributionManager$setIntegrationAttributes$2$1$1(attributionManager, fullAttributionIds$superwall_release, null), 3, null));
            } catch (Throwable th) {
                if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                    ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
                }
                new Either.Failure(th);
            }
            return Unit.INSTANCE;
        }
    }
}
