package expo.modules.navigationbar;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.WindowInsets;
import androidx.tracing.Trace;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.functions.AsyncFunctionWithPromiseComponent;
import expo.modules.kotlin.functions.BoolAsyncFunctionComponent;
import expo.modules.kotlin.functions.DoubleAsyncFunctionComponent;
import expo.modules.kotlin.functions.FloatAsyncFunctionComponent;
import expo.modules.kotlin.functions.IntAsyncFunctionComponent;
import expo.modules.kotlin.functions.Queues;
import expo.modules.kotlin.functions.StringAsyncFunctionComponent;
import expo.modules.kotlin.functions.UntypedAsyncFunctionComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.TypeConverterProvider;
import expo.modules.navigationbar.singletons.NavigationBar;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: NavigationBarModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lexpo/modules/navigationbar/NavigationBarModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", "currentActivity", "Landroid/app/Activity;", "getCurrentActivity", "()Landroid/app/Activity;", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "Companion", "expo-navigation-bar_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavigationBarModule extends Module {
    private static final String VISIBILITY_EVENT_NAME = "ExpoNavigationBar.didChange";

    /* JADX INFO: Access modifiers changed from: private */
    public final Activity getCurrentActivity() {
        return getAppContext().getThrowingActivity();
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        NavigationBarModule navigationBarModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (navigationBarModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(navigationBarModule);
            moduleDefinitionBuilder.Name("ExpoNavigationBar");
            moduleDefinitionBuilder.Events(VISIBILITY_EVENT_NAME);
            moduleDefinitionBuilder.OnStartObserving(new Function0<Unit>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$1$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    final View decorView = this.this$0.getCurrentActivity().getWindow().getDecorView();
                    Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
                    final NavigationBarModule navigationBarModule2 = this.this$0;
                    decorView.post(new Runnable() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$1$1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            View view = decorView;
                            final NavigationBarModule navigationBarModule3 = navigationBarModule2;
                            view.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: expo.modules.navigationbar.NavigationBarModule.definition.1.1.1.1
                                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                                public final void onSystemUiVisibilityChange(int i) {
                                    String str = (i & 2) == 0 ? ViewProps.VISIBLE : ViewProps.HIDDEN;
                                    NavigationBarModule navigationBarModule4 = navigationBarModule3;
                                    Bundle bundle = new Bundle();
                                    bundle.putString("visibility", str);
                                    bundle.putInt("rawVisibility", i);
                                    Unit unit = Unit.INSTANCE;
                                    navigationBarModule4.sendEvent("ExpoNavigationBar.didChange", bundle);
                                }
                            });
                        }
                    });
                }
            });
            moduleDefinitionBuilder.OnStopObserving(new Function0<Unit>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$1$2
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    final View decorView = this.this$0.getCurrentActivity().getWindow().getDecorView();
                    Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
                    decorView.post(new Runnable() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$1$2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            decorView.setOnSystemUiVisibilityChangeListener(null);
                        }
                    });
                }
            });
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            TypeConverterProvider converters = moduleDefinitionBuilder2.getConverters();
            AnyType[] anyTypeArr = new AnyType[1];
            AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType == null) {
                anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters);
            }
            anyTypeArr[0] = anyType;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("setButtonStyleAsync", anyTypeArr, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, final Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    NavigationBar.INSTANCE.setButtonStyle(this.this$0.getCurrentActivity(), (String) objArr[0], new Function0<Unit>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$1$3$1
                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            promise.resolve((Object) null);
                        }
                    }, new Function1<String, Unit>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$1$3$2
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                            invoke2(str);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(String m) {
                            Intrinsics.checkNotNullParameter(m, "m");
                            promise.reject(new NavigationBarException(m));
                        }
                    });
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder2.getAsyncFunctions().put("setButtonStyleAsync", asyncFunctionWithPromiseComponent);
            asyncFunctionWithPromiseComponent.runOnQueue(Queues.MAIN);
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            TypeConverterProvider converters2 = moduleDefinitionBuilder3.getConverters();
            AnyType[] anyTypeArr2 = new AnyType[1];
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType2 == null) {
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters2);
            }
            anyTypeArr2[0] = anyType2;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent2 = new AsyncFunctionWithPromiseComponent("setVisibilityAsync", anyTypeArr2, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, final Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    NavigationBar.INSTANCE.setVisibility(this.this$0.getCurrentActivity(), (String) objArr[0], new Function0<Unit>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$1$4$1
                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            promise.resolve((Object) null);
                        }
                    }, new Function1<String, Unit>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$1$4$2
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                            invoke2(str);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(String m) {
                            Intrinsics.checkNotNullParameter(m, "m");
                            promise.reject(new NavigationBarException(m));
                        }
                    });
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder3.getAsyncFunctions().put("setVisibilityAsync", asyncFunctionWithPromiseComponent2);
            asyncFunctionWithPromiseComponent2.runOnQueue(Queues.MAIN);
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr3 = new AnyType[0];
            Function1<Object[], String> function1 = new Function1<Object[], String>() { // from class: expo.modules.navigationbar.NavigationBarModule$definition$lambda$3$$inlined$AsyncFunction$1
                @Override // kotlin.jvm.functions.Function1
                public final String invoke(Object[] it) {
                    boolean zIsVisible;
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (Build.VERSION.SDK_INT >= 30) {
                        zIsVisible = this.this$0.getCurrentActivity().getWindow().getDecorView().getRootWindowInsets().isVisible(WindowInsets.Type.navigationBars());
                    } else {
                        zIsVisible = (this.this$0.getCurrentActivity().getWindow().getDecorView().getSystemUiVisibility() & 2) == 0;
                    }
                    return zIsVisible ? ViewProps.VISIBLE : ViewProps.HIDDEN;
                }
            };
            if (!Intrinsics.areEqual(String.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(String.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(String.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(String.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(String.class, String.class)) {
                                untypedAsyncFunctionComponent = new StringAsyncFunctionComponent("getVisibilityAsync", anyTypeArr3, function1);
                            } else {
                                untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("getVisibilityAsync", anyTypeArr3, function1);
                            }
                        } else {
                            untypedAsyncFunctionComponent = new FloatAsyncFunctionComponent("getVisibilityAsync", anyTypeArr3, function1);
                        }
                    } else {
                        untypedAsyncFunctionComponent = new DoubleAsyncFunctionComponent("getVisibilityAsync", anyTypeArr3, function1);
                    }
                } else {
                    untypedAsyncFunctionComponent = new BoolAsyncFunctionComponent("getVisibilityAsync", anyTypeArr3, function1);
                }
            } else {
                untypedAsyncFunctionComponent = new IntAsyncFunctionComponent("getVisibilityAsync", anyTypeArr3, function1);
            }
            moduleDefinitionBuilder4.getAsyncFunctions().put("getVisibilityAsync", untypedAsyncFunctionComponent);
            untypedAsyncFunctionComponent.runOnQueue(Queues.MAIN);
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }
}
