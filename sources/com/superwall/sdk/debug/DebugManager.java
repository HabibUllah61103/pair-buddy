package com.superwall.sdk.debug;

import android.content.Context;
import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.extractor.ts.TsExtractor;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.dependencies.ViewFactory;
import com.superwall.sdk.storage.LocalStorage;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: DebugManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 #2\u00020\u0001:\u0002\"#B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018J\u001a\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0087@¢\u0006\u0002\u0010\u001dJ\u001a\u0010\u001e\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0087@¢\u0006\u0002\u0010\u001dJ\u0016\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u0012H\u0087@¢\u0006\u0002\u0010!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006$"}, d2 = {"Lcom/superwall/sdk/debug/DebugManager;", "", "context", "Landroid/content/Context;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "factory", "Lcom/superwall/sdk/dependencies/ViewFactory;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/ViewFactory;)V", RNConstants.ARG_VALUE, "Lcom/superwall/sdk/debug/DebugView;", "view", "getView", "()Lcom/superwall/sdk/debug/DebugView;", "setView", "(Lcom/superwall/sdk/debug/DebugView;)V", "isDebuggerLaunched", "", "()Z", "setDebuggerLaunched", "(Z)V", "handle", "deepLinkUrl", "Landroid/net/Uri;", "launchDebugger", "", "paywallDatabaseId", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "presentDebugger", "closeDebugger", "animated", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "DeepLinkOutcome", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DebugManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Context context;
    private final ViewFactory factory;
    private boolean isDebuggerLaunched;
    private final LocalStorage storage;
    private DebugView view;

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugManager$launchDebugger$1, reason: invalid class name */
    /* JADX INFO: compiled from: DebugManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugManager", f = "DebugManager.kt", i = {0, 0, 2, 2, 4, 4}, l = {MdtaMetadataEntry.TYPE_INDICATOR_INT32, 68, TsExtractor.TS_SYNC_BYTE, 72, 74, MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "launchDebugger", n = {"this", "paywallDatabaseId", "this", "paywallDatabaseId", "this", "paywallDatabaseId"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
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
            return DebugManager.this.launchDebugger(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugManager$presentDebugger$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DebugManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugManager", f = "DebugManager.kt", i = {0, 0}, l = {88}, m = "presentDebugger", n = {"this", "currentView"}, s = {"L$0", "L$1"})
    static final class C04661 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C04661(Continuation<? super C04661> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DebugManager.this.presentDebugger(null, this);
        }
    }

    public DebugManager(Context context, LocalStorage storage, ViewFactory factory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.context = context;
        this.storage = storage;
        this.factory = factory;
    }

    public final DebugView getView() {
        return this.view;
    }

    public final void setView(DebugView debugView) {
        this.view = debugView;
    }

    /* JADX INFO: renamed from: isDebuggerLaunched, reason: from getter */
    public final boolean getIsDebuggerLaunched() {
        return this.isDebuggerLaunched;
    }

    public final void setDebuggerLaunched(boolean z) {
        this.isDebuggerLaunched = z;
    }

    /* JADX INFO: compiled from: DebugManager.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;", "", "debugKey", "", "paywallId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getDebugKey", "()Ljava/lang/String;", "getPaywallId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class DeepLinkOutcome {
        private final String debugKey;
        private final String paywallId;

        public static /* synthetic */ DeepLinkOutcome copy$default(DeepLinkOutcome deepLinkOutcome, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = deepLinkOutcome.debugKey;
            }
            if ((i & 2) != 0) {
                str2 = deepLinkOutcome.paywallId;
            }
            return deepLinkOutcome.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDebugKey() {
            return this.debugKey;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPaywallId() {
            return this.paywallId;
        }

        public final DeepLinkOutcome copy(String debugKey, String paywallId) {
            Intrinsics.checkNotNullParameter(debugKey, "debugKey");
            return new DeepLinkOutcome(debugKey, paywallId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DeepLinkOutcome)) {
                return false;
            }
            DeepLinkOutcome deepLinkOutcome = (DeepLinkOutcome) other;
            return Intrinsics.areEqual(this.debugKey, deepLinkOutcome.debugKey) && Intrinsics.areEqual(this.paywallId, deepLinkOutcome.paywallId);
        }

        public int hashCode() {
            int iHashCode = this.debugKey.hashCode() * 31;
            String str = this.paywallId;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "DeepLinkOutcome(debugKey=" + this.debugKey + ", paywallId=" + this.paywallId + ")";
        }

        public DeepLinkOutcome(String debugKey, String str) {
            Intrinsics.checkNotNullParameter(debugKey, "debugKey");
            this.debugKey = debugKey;
            this.paywallId = str;
        }

        public final String getDebugKey() {
            return this.debugKey;
        }

        public final String getPaywallId() {
            return this.paywallId;
        }
    }

    /* JADX INFO: compiled from: DebugManager.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/debug/DebugManager$Companion;", "", "<init>", "()V", "outcomeForDeepLink", "Lkotlin/Result;", "Lcom/superwall/sdk/debug/DebugManager$DeepLinkOutcome;", "deepLinkUrl", "Landroid/net/Uri;", "outcomeForDeepLink-IoAF18A", "(Landroid/net/Uri;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: outcomeForDeepLink-IoAF18A, reason: not valid java name */
        public final Object m10593outcomeForDeepLinkIoAF18A(Uri deepLinkUrl) {
            Intrinsics.checkNotNullParameter(deepLinkUrl, "deepLinkUrl");
            String queryItemValue = SWDebugManagerLogic.INSTANCE.getQueryItemValue(deepLinkUrl, SWDebugManagerLogic.Parameter.SUPERWALL_DEBUG);
            if (queryItemValue == null) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m11241constructorimpl(ResultKt.createFailure(new IllegalArgumentException("Not debug link")));
            }
            if (!Boolean.parseBoolean(queryItemValue)) {
                Result.Companion companion2 = Result.INSTANCE;
                return Result.m11241constructorimpl(ResultKt.createFailure(new IllegalArgumentException("Not debug link")));
            }
            String queryItemValue2 = SWDebugManagerLogic.INSTANCE.getQueryItemValue(deepLinkUrl, SWDebugManagerLogic.Parameter.TOKEN);
            if (queryItemValue2 == null) {
                Result.Companion companion3 = Result.INSTANCE;
                return Result.m11241constructorimpl(ResultKt.createFailure(new IllegalArgumentException("Not debug link")));
            }
            String queryItemValue3 = SWDebugManagerLogic.INSTANCE.getQueryItemValue(deepLinkUrl, SWDebugManagerLogic.Parameter.PAYWALL_ID);
            Result.Companion companion4 = Result.INSTANCE;
            return Result.m11241constructorimpl(new DeepLinkOutcome(queryItemValue2, queryItemValue3));
        }
    }

    public final boolean handle(Uri deepLinkUrl) {
        Intrinsics.checkNotNullParameter(deepLinkUrl, "deepLinkUrl");
        Object objM10593outcomeForDeepLinkIoAF18A = INSTANCE.m10593outcomeForDeepLinkIoAF18A(deepLinkUrl);
        if (Result.m11248isSuccessimpl(objM10593outcomeForDeepLinkIoAF18A)) {
            this.storage.setDebugKey(((DeepLinkOutcome) objM10593outcomeForDeepLinkIoAF18A).getDebugKey());
        }
        if (Result.m11248isSuccessimpl(objM10593outcomeForDeepLinkIoAF18A)) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new DebugManager$handle$2$1(this, (DeepLinkOutcome) objM10593outcomeForDeepLinkIoAF18A, null), 3, null);
        }
        return Result.m11248isSuccessimpl(objM10593outcomeForDeepLinkIoAF18A);
    }

    public static /* synthetic */ Object launchDebugger$default(DebugManager debugManager, String str, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return debugManager.launchDebugger(str, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
    
        if (r2.launchDebugger(r7, r0) == r1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b5, code lost:
    
        if (r2.presentDebugger(r7, r0) == r1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d5, code lost:
    
        if (r2.launchDebugger(r7, r0) == r1) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object launchDebugger(java.lang.String r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.debug.DebugManager.launchDebugger(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object presentDebugger$default(DebugManager debugManager, String str, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return debugManager.presentDebugger(str, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object presentDebugger(String str, Continuation<? super Unit> continuation) {
        C04661 c04661;
        DebugManager debugManager;
        DebugView debugView;
        if (continuation instanceof C04661) {
            c04661 = (C04661) continuation;
            if ((c04661.label & Integer.MIN_VALUE) != 0) {
                c04661.label -= Integer.MIN_VALUE;
            } else {
                c04661 = new C04661(continuation);
            }
        } else {
            c04661 = new C04661(continuation);
        }
        Object obj = c04661.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c04661.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.isDebuggerLaunched = true;
            DebugView debugView2 = this.view;
            if (debugView2 != null) {
                if (debugView2.getIsActive()) {
                    return Unit.INSTANCE;
                }
                debugView2.setPaywallDatabaseId$superwall_release(str);
                c04661.L$0 = this;
                c04661.L$1 = debugView2;
                c04661.label = 1;
                if (debugView2.loadPreview(c04661) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                debugManager = this;
                debugView = debugView2;
            } else {
                DebugView debugViewMakeDebugView = this.factory.makeDebugView(str);
                DebugViewActivity.INSTANCE.startWithView(this.context, debugViewMakeDebugView);
                this.view = debugViewMakeDebugView;
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        debugView = (DebugView) c04661.L$1;
        debugManager = (DebugManager) c04661.L$0;
        ResultKt.throwOnFailure(obj);
        DebugViewActivity.INSTANCE.startWithView(debugManager.context, debugView);
        return Unit.INSTANCE;
    }

    public final Object closeDebugger(boolean z, Continuation<? super Unit> continuation) {
        AppCompatActivity encapsulatingActivity;
        DebugView debugView = this.view;
        if (debugView != null && (encapsulatingActivity = debugView.getEncapsulatingActivity()) != null) {
            encapsulatingActivity.finish();
        }
        this.view = null;
        this.isDebuggerLaunched = false;
        return Unit.INSTANCE;
    }
}
