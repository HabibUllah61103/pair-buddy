package com.superwall.sdk.debug;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.paywall.view.ActivityEncapsulatable;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: DebugView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\b\u0010\f\u001a\u00020\u0007H\u0014J\b\u0010\r\u001a\u00020\u0007H\u0014J\b\u0010\u000e\u001a\u00020\u0007H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/debug/DebugViewActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "contentView", "Landroid/view/View;", "setContentView", "", "view", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "onStop", "onDestroy", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DebugViewActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String VIEW_KEY = "debugViewKey";
    private View contentView;

    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/debug/DebugViewActivity$Companion;", "", "<init>", "()V", "VIEW_KEY", "", "startWithView", "", "context", "Landroid/content/Context;", "view", "Landroid/view/View;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void startWithView(Context context, View view) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(view, "view");
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().makeViewStore().storeView(string, view);
            Intent intent = new Intent(context, (Class<?>) DebugViewActivity.class);
            intent.putExtra(DebugViewActivity.VIEW_KEY, string);
            intent.setFlags(805306368);
            context.startActivity(intent);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.contentView = view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        int color = Color.parseColor("#181A1E");
        EdgeToEdge.enable(this, SystemBarStyle.INSTANCE.dark(color), SystemBarStyle.INSTANCE.dark(color));
        super.onCreate(savedInstanceState);
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
        String stringExtra = getIntent().getStringExtra(VIEW_KEY);
        if (stringExtra == null) {
            finish();
            return;
        }
        View viewRetrieveView = Superwall.INSTANCE.getInstance().getDependencyContainer$superwall_release().makeViewStore().retrieveView(stringExtra);
        if (viewRetrieveView == 0) {
            finish();
            return;
        }
        if (viewRetrieveView instanceof AppCompatActivityEncapsulatable) {
            ((AppCompatActivityEncapsulatable) viewRetrieveView).setEncapsulatingActivity(this);
        }
        requestWindowFeature(1);
        ViewCompat.setOnApplyWindowInsetsListener(viewRetrieveView, new OnApplyWindowInsetsListener() { // from class: com.superwall.sdk.debug.DebugViewActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return DebugViewActivity.onCreate$lambda$1(view, windowInsetsCompat);
            }
        });
        setContentView(viewRetrieveView);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat onCreate$lambda$1(View v, WindowInsetsCompat windowInsets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
        v.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return WindowInsetsCompat.CONSUMED;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        View view = this.contentView;
        DebugView debugView = view instanceof DebugView ? (DebugView) view : null;
        if (debugView == null) {
            return;
        }
        debugView.setActive$superwall_release(true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        View view = this.contentView;
        DebugView debugView = view instanceof DebugView ? (DebugView) view : null;
        if (debugView == null) {
            return;
        }
        debugView.setActive$superwall_release(false);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        View view = this.contentView;
        DebugView debugView = view instanceof DebugView ? (DebugView) view : null;
        if (debugView == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass1(debugView, null), 3, null);
        KeyEvent.Callback callback = this.contentView;
        ActivityEncapsulatable activityEncapsulatable = callback instanceof ActivityEncapsulatable ? (ActivityEncapsulatable) callback : null;
        if (activityEncapsulatable != null) {
            activityEncapsulatable.setEncapsulatingActivity(null);
        }
        this.contentView = null;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.debug.DebugViewActivity$onDestroy$1, reason: invalid class name */
    /* JADX INFO: compiled from: DebugView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.debug.DebugViewActivity$onDestroy$1", f = "DebugView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ DebugView $debugView;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DebugView debugView, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$debugView = debugView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$debugView, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$debugView.viewDestroyed();
            return Unit.INSTANCE;
        }
    }
}
