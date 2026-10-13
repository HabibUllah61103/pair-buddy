package com.superwall.sdk.utilities;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.superwall.sdk.BuildConfig;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.storage.ErrorLog;
import com.superwall.sdk.storage.LocalStorage;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ErrorTracking.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\b\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012$\b\u0002\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007¢\u0006\u0004\b\f\u0010\rJ\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0010J#\u0010\u0011\u001a\u00020\u0012*\u00020\u00102\u0012\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0014\"\u00020\u0010¢\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/utilities/ErrorTracker;", "Lcom/superwall/sdk/utilities/ErrorTracking;", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "cache", "Lcom/superwall/sdk/storage/LocalStorage;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ErrorThrown;", "Lkotlin/coroutines/Continuation;", "", "", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "replaceNonSuperwallPackages", "", "containsAny", "", "strings", "", "(Ljava/lang/String;[Ljava/lang/String;)Z", "trackError", "throwable", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ErrorTracker implements ErrorTracking {
    private final LocalStorage cache;
    private final Function2<InternalSuperwallEvent.ErrorThrown, Continuation<? super Unit>, Object> track;

    /* JADX WARN: Multi-variable type inference failed */
    public ErrorTracker(CoroutineScope scope, LocalStorage cache, Function2<? super InternalSuperwallEvent.ErrorThrown, ? super Continuation<? super Unit>, ? extends Object> track) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(cache, "cache");
        Intrinsics.checkNotNullParameter(track, "track");
        this.cache = cache;
        this.track = track;
        ErrorTracking.ErrorOccurence errorOccurence = (ErrorTracking.ErrorOccurence) cache.read(ErrorLog.INSTANCE);
        if (errorOccurence != null) {
            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass2(errorOccurence, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.utilities.ErrorTracker$1, reason: invalid class name */
    /* JADX INFO: compiled from: ErrorTracking.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ErrorThrown;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.utilities.ErrorTracker$1", f = "ErrorTracking.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<InternalSuperwallEvent.ErrorThrown, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InternalSuperwallEvent.ErrorThrown errorThrown, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(errorThrown, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.ErrorThrown errorThrown = (InternalSuperwallEvent.ErrorThrown) this.L$0;
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), errorThrown, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ ErrorTracker(CoroutineScope coroutineScope, LocalStorage localStorage, AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineScope, localStorage, (i & 4) != 0 ? new AnonymousClass1(null) : anonymousClass1);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.utilities.ErrorTracker$2, reason: invalid class name */
    /* JADX INFO: compiled from: ErrorTracking.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.utilities.ErrorTracker$2", f = "ErrorTracking.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ErrorTracking.ErrorOccurence $exists;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ErrorTracking.ErrorOccurence errorOccurence, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$exists = errorOccurence;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ErrorTracker.this.new AnonymousClass2(this.$exists, continuation);
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
                Function2 function2 = ErrorTracker.this.track;
                InternalSuperwallEvent.ErrorThrown errorThrown = new InternalSuperwallEvent.ErrorThrown(this.$exists.getMessage(), this.$exists.getStacktrace(), this.$exists.getTimestamp(), this.$exists.getType(), this.$exists.isFatal());
                this.label = 1;
                if (function2.invoke(errorThrown, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ErrorTracker.this.cache.delete(ErrorLog.INSTANCE);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.superwall.sdk.utilities.ErrorTracker] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.util.List] */
    public final String replaceNonSuperwallPackages(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        List<String> listLines = StringsKt.lines(str);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listLines, 10));
        Iterator it = listLines.iterator();
        while (it.hasNext()) {
            ArrayList arrayList2 = (String) it.next();
            if (!containsAny(arrayList2, BuildConfig.LIBRARY_PACKAGE_NAME, "com.superwall.supercel", "java.lang", "net.java.dev.jna", "kotlin.", "kotlinx.", "android.os", "androidx.os", "com.android.", "com.google.", "org.threeten.", "com.revenuecat.purchases")) {
                CharSequence charSequence = (CharSequence) arrayList2;
                ArrayList arrayList3 = new ArrayList(charSequence.length());
                for (int i = 0; i < charSequence.length(); i++) {
                    char cCharAt = charSequence.charAt(i);
                    arrayList3.add(Character.isLetter(cCharAt) ? "*" : Character.valueOf(cCharAt));
                }
                arrayList2 = arrayList3;
            }
            arrayList.add(arrayList2);
        }
        return CollectionsKt.joinToString$default(arrayList, "\n", null, null, 0, null, null, 62, null);
    }

    @Override // com.superwall.sdk.utilities.ErrorTracking
    public void trackError(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        String message = throwable.getMessage();
        if (message == null) {
            message = "";
        }
        String strReplaceNonSuperwallPackages = replaceNonSuperwallPackages(ExceptionsKt.stackTraceToString(throwable));
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zIsFatal = ErrorTrackingKt.isFatal(throwable);
        String simpleName = throwable.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        this.cache.write(ErrorLog.INSTANCE, new ErrorTracking.ErrorOccurence(simpleName, message, strReplaceNonSuperwallPackages, jCurrentTimeMillis, zIsFatal));
    }

    public final boolean containsAny(String str, String... strings) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(strings, "strings");
        for (String str2 : strings) {
            if (StringsKt.contains$default((CharSequence) str, (CharSequence) str2, false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }
}
