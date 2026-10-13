package expo.modules.ui;

import android.view.View;
import androidx.compose.material3.SwitchDefaults;
import androidx.compose.material3.ToggleButtonDefaults;
import androidx.tracing.Trace;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.events.BasicEventListener;
import expo.modules.kotlin.events.EventName;
import expo.modules.kotlin.functions.AsyncFunctionBuilder;
import expo.modules.kotlin.functions.AsyncFunctionWithPromiseComponent;
import expo.modules.kotlin.functions.BoolAsyncFunctionComponent;
import expo.modules.kotlin.functions.DoubleAsyncFunctionComponent;
import expo.modules.kotlin.functions.FloatAsyncFunctionComponent;
import expo.modules.kotlin.functions.IntAsyncFunctionComponent;
import expo.modules.kotlin.functions.StringAsyncFunctionComponent;
import expo.modules.kotlin.functions.SuspendFunctionComponent;
import expo.modules.kotlin.functions.UntypedAsyncFunctionComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.objects.ConstantComponentBuilder;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.TypeConverterProvider;
import expo.modules.kotlin.views.AnyViewProp;
import expo.modules.kotlin.views.ComposeViewFunctionDefinitionBuilder;
import expo.modules.kotlin.views.ComposeViewProp;
import expo.modules.kotlin.views.ConcreteViewPropWithDefault;
import expo.modules.kotlin.views.ViewDefinitionBuilder;
import expo.modules.kotlin.views.decorators.CSSPropsKt;
import expo.modules.ui.button.ButtonProps;
import expo.modules.ui.button.FloatingActionButtonProps;
import expo.modules.ui.icon.IconProps;
import expo.modules.ui.icon.IconView;
import expo.modules.ui.menu.DropdownMenuItemProps;
import expo.modules.ui.menu.DropdownMenuProps;
import expo.modules.ui.menu.ExposedDropdownMenuBoxProps;
import expo.modules.ui.menu.ExposedDropdownMenuProps;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.full.KClasses;
import okhttp3.Cache;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: ExpoUIModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\nH\u0016R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lexpo/modules/ui/ExpoUIModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", RNConstants.ARG_VALUE, "Lokhttp3/OkHttpClient;", "okHttpClient", "getOkHttpClient", "()Lokhttp3/OkHttpClient;", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ExpoUIModule extends Module {
    public static final int $stable = 8;
    private OkHttpClient okHttpClient;

    public final OkHttpClient getOkHttpClient() {
        return this.okHttpClient;
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent2;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent3;
        String str = "onDateSelected";
        String str2 = "onNativeClick";
        String str3 = "onDismissRequest";
        ExpoUIModule expoUIModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (expoUIModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(expoUIModule);
            moduleDefinitionBuilder.Name("ExpoUI");
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_CREATE, new BasicEventListener(EventName.MODULE_CREATE, new Function0<Unit>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$OnCreate$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.okHttpClient = new OkHttpClient.Builder().build();
                }
            }));
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_DESTROY, new BasicEventListener(EventName.MODULE_DESTROY, new Function0<Unit>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$OnDestroy$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() throws IOException {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() throws IOException {
                    Cache cache;
                    ConnectionPool connectionPool;
                    Dispatcher dispatcher;
                    ExecutorService executorService;
                    OkHttpClient okHttpClient = this.this$0.getOkHttpClient();
                    if (okHttpClient != null && (dispatcher = okHttpClient.dispatcher()) != null && (executorService = dispatcher.executorService()) != null) {
                        executorService.shutdown();
                    }
                    OkHttpClient okHttpClient2 = this.this$0.getOkHttpClient();
                    if (okHttpClient2 != null && (connectionPool = okHttpClient2.connectionPool()) != null) {
                        connectionPool.evictAll();
                    }
                    OkHttpClient okHttpClient3 = this.this$0.getOkHttpClient();
                    if (okHttpClient3 != null && (cache = okHttpClient3.cache()) != null) {
                        cache.close();
                    }
                    this.this$0.okHttpClient = null;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            ViewDefinitionBuilder viewDefinitionBuilder = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(HostView.class), new LazyKType(Reflection.getOrCreateKotlinClass(HostView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$1
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(HostView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty1 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(HostProps.class))) {
                KType type = ((KTypeProjection) CollectionsKt.first((List) kProperty1.getReturnType().getArguments())).getType();
                if (type != null && viewDefinitionBuilder.getProps().get(kProperty1.getName()) == null) {
                    viewDefinitionBuilder.getProps().put(kProperty1.getName(), new ComposeViewProp(kProperty1.getName(), new AnyType(type, null, 2, null), kProperty1));
                }
                str = str;
                str2 = str2;
                str3 = str3;
            }
            String str4 = str;
            String str5 = str2;
            String str6 = str3;
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder);
            int i = 1;
            boolean z = false;
            viewDefinitionBuilder.Events("onLayoutContent");
            viewDefinitionBuilder.setOnViewDidUpdateProps(new Function1<View, Unit>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$3$$inlined$OnViewDidUpdateProps$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ((HostView) it).onViewDidUpdateProps$expo_ui_release();
                }
            });
            moduleDefinitionBuilder2.registerViewDefinition(viewDefinitionBuilder.build());
            ConstantComponentBuilder constantComponentBuilder = new ConstantComponentBuilder("SwitchDefaultIconSize");
            constantComponentBuilder.setGetter(new Function0<Float>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$Constant$1
                @Override // kotlin.jvm.functions.Function0
                public final Float invoke() {
                    return Float.valueOf(SwitchDefaults.INSTANCE.m3603getIconSizeD9Ej5fM());
                }
            });
            moduleDefinitionBuilder.getConstants().put("SwitchDefaultIconSize", constantComponentBuilder);
            ConstantComponentBuilder constantComponentBuilder2 = new ConstantComponentBuilder("ToggleButtonIconSpacing");
            constantComponentBuilder2.setGetter(new Function0<Float>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$Constant$2
                @Override // kotlin.jvm.functions.Function0
                public final Float invoke() {
                    return Float.valueOf(ToggleButtonDefaults.INSTANCE.m3851getIconSpacingD9Ej5fM());
                }
            });
            moduleDefinitionBuilder.getConstants().put("ToggleButtonIconSpacing", constantComponentBuilder2);
            ConstantComponentBuilder constantComponentBuilder3 = new ConstantComponentBuilder("ToggleButtonIconSize");
            constantComponentBuilder3.setGetter(new Function0<Float>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$Constant$3
                @Override // kotlin.jvm.functions.Function0
                public final Float invoke() {
                    return Float.valueOf(ToggleButtonDefaults.INSTANCE.m3850getIconSizeD9Ej5fM());
                }
            });
            moduleDefinitionBuilder.getConstants().put("ToggleButtonIconSize", constantComponentBuilder3);
            ViewDefinitionBuilder viewDefinitionBuilder2 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(RNHostView.class), new LazyKType(Reflection.getOrCreateKotlinClass(RNHostView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$default$1
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(RNHostView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty2 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(RNHostViewProps.class))) {
                KType type2 = ((KTypeProjection) CollectionsKt.first((List) kProperty2.getReturnType().getArguments())).getType();
                if (type2 != null && viewDefinitionBuilder2.getProps().get(kProperty2.getName()) == null) {
                    viewDefinitionBuilder2.getProps().put(kProperty2.getName(), new ComposeViewProp(kProperty2.getName(), new AnyType(type2, null, 2, null), kProperty2));
                }
                i = i;
            }
            int i2 = i;
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder2);
            Unit unit = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(viewDefinitionBuilder2.build());
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            ViewDefinitionBuilder viewDefinitionBuilder3 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(TextFieldView.class), new LazyKType(Reflection.getOrCreateKotlinClass(TextFieldView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$2
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(TextFieldView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty3 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(TextFieldProps.class))) {
                KType type3 = ((KTypeProjection) CollectionsKt.first((List) kProperty3.getReturnType().getArguments())).getType();
                if (type3 != null && viewDefinitionBuilder3.getProps().get(kProperty3.getName()) == null) {
                    viewDefinitionBuilder3.getProps().put(kProperty3.getName(), new ComposeViewProp(kProperty3.getName(), new AnyType(type3, null, 2, null), kProperty3));
                }
                z = z;
            }
            boolean z2 = z;
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder3);
            String[] strArr = new String[3];
            strArr[z2 ? 1 : 0] = "onValueChange";
            strArr[i2] = "onFocusChanged";
            strArr[2] = "onKeyboardAction";
            viewDefinitionBuilder3.Events(strArr);
            ExpoUIModule$definition$1$7$1 expoUIModule$definition$1$7$1 = new Function2<TextFieldView, String, Unit>() { // from class: expo.modules.ui.ExpoUIModule$definition$1$7$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextFieldView textFieldView, String str7) {
                    invoke2(textFieldView, str7);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TextFieldView view, String text) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(text, "text");
                    if (view.getText() == null) {
                        view.setText(text);
                    }
                }
            };
            Map<String, AnyViewProp> props = viewDefinitionBuilder3.getProps();
            AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), Boolean.valueOf(z2)));
            if (anyType == null) {
                anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), z2, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$PropGeneric$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), null);
            }
            props.put("defaultValue", new ConcreteViewPropWithDefault("defaultValue", anyType, expoUIModule$definition$1$7$1, ""));
            TypeConverterProvider converters = viewDefinitionBuilder3.getConverters();
            AnyType[] anyTypeArr = new AnyType[2];
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(TextFieldView.class), false));
            if (anyType2 == null) {
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(TextFieldView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(TextFieldView.class);
                    }
                }), converters);
            }
            anyTypeArr[0] = anyType2;
            AnyType anyType3 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType3 == null) {
                anyType3 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters);
            }
            anyTypeArr[i2] = anyType3;
            Function1<Object[], Unit> function1 = new Function1<Object[], Unit>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$3
                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    ((TextFieldView) objArr[0]).setText((String) objArr[1]);
                    return Unit.INSTANCE;
                }
            };
            if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(Unit.class, String.class)) {
                                untypedAsyncFunctionComponent = new StringAsyncFunctionComponent("setText", anyTypeArr, function1);
                            } else {
                                untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("setText", anyTypeArr, function1);
                            }
                        } else {
                            untypedAsyncFunctionComponent = new FloatAsyncFunctionComponent("setText", anyTypeArr, function1);
                        }
                    } else {
                        untypedAsyncFunctionComponent = new DoubleAsyncFunctionComponent("setText", anyTypeArr, function1);
                    }
                } else {
                    untypedAsyncFunctionComponent = new BoolAsyncFunctionComponent("setText", anyTypeArr, function1);
                }
            } else {
                untypedAsyncFunctionComponent = new IntAsyncFunctionComponent("setText", anyTypeArr, function1);
            }
            viewDefinitionBuilder3.getAsyncFunctions().put("setText", untypedAsyncFunctionComponent);
            if (TextFieldView.class == Promise.class) {
                asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("focus", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$4
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((TextFieldView) promise).focus();
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr2 = new AnyType[i2];
                AnyType anyType4 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(TextFieldView.class), false));
                if (anyType4 == null) {
                    anyType4 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(TextFieldView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$5
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(TextFieldView.class);
                        }
                    }), null);
                }
                anyTypeArr2[0] = anyType4;
                Function1<Object[], Boolean> function2 = new Function1<Object[], Boolean>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$6
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return Boolean.valueOf(((TextFieldView) objArr[0]).focus());
                    }
                };
                if (!Intrinsics.areEqual(Boolean.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Boolean.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Boolean.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Boolean.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Boolean.class, String.class)) {
                                    untypedAsyncFunctionComponent2 = new StringAsyncFunctionComponent("focus", anyTypeArr2, function2);
                                } else {
                                    untypedAsyncFunctionComponent2 = new UntypedAsyncFunctionComponent("focus", anyTypeArr2, function2);
                                }
                            } else {
                                untypedAsyncFunctionComponent2 = new FloatAsyncFunctionComponent("focus", anyTypeArr2, function2);
                            }
                        } else {
                            untypedAsyncFunctionComponent2 = new DoubleAsyncFunctionComponent("focus", anyTypeArr2, function2);
                        }
                    } else {
                        untypedAsyncFunctionComponent2 = new BoolAsyncFunctionComponent("focus", anyTypeArr2, function2);
                    }
                } else {
                    untypedAsyncFunctionComponent2 = new IntAsyncFunctionComponent("focus", anyTypeArr2, function2);
                }
                asyncFunctionWithPromiseComponent = untypedAsyncFunctionComponent2;
            }
            viewDefinitionBuilder3.getAsyncFunctions().put("focus", asyncFunctionWithPromiseComponent);
            if (TextFieldView.class == Promise.class) {
                untypedAsyncFunctionComponent3 = new AsyncFunctionWithPromiseComponent("blur", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$7
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((TextFieldView) promise).blur();
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr3 = new AnyType[1];
                AnyType anyType5 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(TextFieldView.class), false));
                if (anyType5 == null) {
                    anyType5 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(TextFieldView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$8
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(TextFieldView.class);
                        }
                    }), null);
                }
                anyTypeArr3[0] = anyType5;
                untypedAsyncFunctionComponent3 = new UntypedAsyncFunctionComponent("blur", anyTypeArr3, new Function1<Object[], Unit>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$10$$inlined$AsyncFunction$9
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return ((TextFieldView) objArr[0]).blur();
                    }
                });
            }
            viewDefinitionBuilder3.getAsyncFunctions().put("blur", untypedAsyncFunctionComponent3);
            moduleDefinitionBuilder3.registerViewDefinition(viewDefinitionBuilder3.build());
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            ViewDefinitionBuilder viewDefinitionBuilder4 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(SlotView.class), new LazyKType(Reflection.getOrCreateKotlinClass(SlotView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$3
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(SlotView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty4 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(SlotProps.class))) {
                KType type4 = ((KTypeProjection) CollectionsKt.first((List) kProperty4.getReturnType().getArguments())).getType();
                if (type4 != null && viewDefinitionBuilder4.getProps().get(kProperty4.getName()) == null) {
                    viewDefinitionBuilder4.getProps().put(kProperty4.getName(), new ComposeViewProp(kProperty4.getName(), new AnyType(type4, null, 2, null), kProperty4));
                }
            }
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder4);
            viewDefinitionBuilder4.Events("onSlotEvent");
            moduleDefinitionBuilder4.registerViewDefinition(viewDefinitionBuilder4.build());
            ViewDefinitionBuilder viewDefinitionBuilder5 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(IconView.class), new LazyKType(Reflection.getOrCreateKotlinClass(IconView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$default$2
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(IconView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty5 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(IconProps.class))) {
                KType type5 = ((KTypeProjection) CollectionsKt.first((List) kProperty5.getReturnType().getArguments())).getType();
                if (type5 != null && viewDefinitionBuilder5.getProps().get(kProperty5.getName()) == null) {
                    viewDefinitionBuilder5.getProps().put(kProperty5.getName(), new ComposeViewProp(kProperty5.getName(), new AnyType(type5, null, 2, null), kProperty5));
                }
            }
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder5);
            Unit unit2 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(viewDefinitionBuilder5.build());
            ViewDefinitionBuilder viewDefinitionBuilder6 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(LazyColumnView.class), new LazyKType(Reflection.getOrCreateKotlinClass(LazyColumnView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$default$3
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(LazyColumnView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty6 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(LazyColumnProps.class))) {
                KType type6 = ((KTypeProjection) CollectionsKt.first((List) kProperty6.getReturnType().getArguments())).getType();
                if (type6 != null && viewDefinitionBuilder6.getProps().get(kProperty6.getName()) == null) {
                    viewDefinitionBuilder6.getProps().put(kProperty6.getName(), new ComposeViewProp(kProperty6.getName(), new AnyType(type6, null, 2, null), kProperty6));
                }
            }
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder6);
            Unit unit3 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(viewDefinitionBuilder6.build());
            ModuleDefinitionBuilder moduleDefinitionBuilder5 = moduleDefinitionBuilder;
            ViewDefinitionBuilder viewDefinitionBuilder7 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(ModalBottomSheetView.class), new LazyKType(Reflection.getOrCreateKotlinClass(ModalBottomSheetView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$4
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(ModalBottomSheetView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty7 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(ModalBottomSheetViewProps.class))) {
                KType type7 = ((KTypeProjection) CollectionsKt.first((List) kProperty7.getReturnType().getArguments())).getType();
                if (type7 != null && viewDefinitionBuilder7.getProps().get(kProperty7.getName()) == null) {
                    viewDefinitionBuilder7.getProps().put(kProperty7.getName(), new ComposeViewProp(kProperty7.getName(), new AnyType(type7, null, 2, null), kProperty7));
                }
            }
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder7);
            viewDefinitionBuilder7.Events(str6);
            AsyncFunctionBuilder asyncFunctionBuilderAsyncFunction = viewDefinitionBuilder7.AsyncFunction("hide");
            String name = asyncFunctionBuilderAsyncFunction.getName();
            TypeConverterProvider converters2 = asyncFunctionBuilderAsyncFunction.getConverters();
            AnyType[] anyTypeArr4 = new AnyType[1];
            AnyType anyType6 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ModalBottomSheetView.class), false));
            if (anyType6 == null) {
                anyType6 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ModalBottomSheetView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$13$$inlined$Coroutine$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(ModalBottomSheetView.class);
                    }
                }), converters2);
            }
            anyTypeArr4[0] = anyType6;
            asyncFunctionBuilderAsyncFunction.setAsyncFunctionComponent(new SuspendFunctionComponent(name, anyTypeArr4, new ExpoUIModule$definition$lambda$54$lambda$13$$inlined$Coroutine$2(null)));
            moduleDefinitionBuilder5.registerViewDefinition(viewDefinitionBuilder7.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder = new ComposeViewFunctionDefinitionBuilder("SingleChoiceSegmentedButtonRowView", Reflection.getOrCreateKotlinClass(SingleChoiceSegmentedButtonRowProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$666608302$expo_ui_release());
            Unit unit4 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder2 = new ComposeViewFunctionDefinitionBuilder("MultiChoiceSegmentedButtonRowView", Reflection.getOrCreateKotlinClass(MultiChoiceSegmentedButtonRowProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$213348912$expo_ui_release());
            Unit unit5 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder2.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder3 = new ComposeViewFunctionDefinitionBuilder("SegmentedButtonView", Reflection.getOrCreateKotlinClass(SegmentedButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11108getLambda$2048044005$expo_ui_release());
            composeViewFunctionDefinitionBuilder3.Events("onButtonPressed", "onCheckedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder3.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder4 = new ComposeViewFunctionDefinitionBuilder("SwitchView", Reflection.getOrCreateKotlinClass(SwitchProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11111getLambda$22859264$expo_ui_release());
            composeViewFunctionDefinitionBuilder4.Events("onCheckedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder4.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder5 = new ComposeViewFunctionDefinitionBuilder("CheckboxView", Reflection.getOrCreateKotlinClass(CheckboxProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1847121008$expo_ui_release());
            composeViewFunctionDefinitionBuilder5.Events("onCheckedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder5.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder6 = new ComposeViewFunctionDefinitionBuilder("TriStateCheckboxView", Reflection.getOrCreateKotlinClass(TriStateCheckboxProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11115getLambda$870391607$expo_ui_release());
            composeViewFunctionDefinitionBuilder6.Events(str5);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder6.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder7 = new ComposeViewFunctionDefinitionBuilder("Button", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1959291615$expo_ui_release());
            composeViewFunctionDefinitionBuilder7.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder7.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder8 = new ComposeViewFunctionDefinitionBuilder("FilledTonalButton", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1275061310$expo_ui_release());
            composeViewFunctionDefinitionBuilder8.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder8.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder9 = new ComposeViewFunctionDefinitionBuilder("OutlinedButton", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$590831005$expo_ui_release());
            composeViewFunctionDefinitionBuilder9.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder9.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder10 = new ComposeViewFunctionDefinitionBuilder("ElevatedButton", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11117getLambda$93399300$expo_ui_release());
            composeViewFunctionDefinitionBuilder10.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder10.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder11 = new ComposeViewFunctionDefinitionBuilder("TextButton", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11118getLambda$972502632$expo_ui_release());
            composeViewFunctionDefinitionBuilder11.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder11.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder12 = new ComposeViewFunctionDefinitionBuilder("IconButton", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11103getLambda$1656732937$expo_ui_release());
            composeViewFunctionDefinitionBuilder12.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder12.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder13 = new ComposeViewFunctionDefinitionBuilder("FilledIconButton", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1954004054$expo_ui_release());
            composeViewFunctionDefinitionBuilder13.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder13.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder14 = new ComposeViewFunctionDefinitionBuilder("FilledTonalIconButton", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1269773749$expo_ui_release());
            composeViewFunctionDefinitionBuilder14.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder14.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder15 = new ComposeViewFunctionDefinitionBuilder("OutlinedIconButton", Reflection.getOrCreateKotlinClass(ButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$585543444$expo_ui_release());
            composeViewFunctionDefinitionBuilder15.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder15.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder16 = new ComposeViewFunctionDefinitionBuilder("SliderView", Reflection.getOrCreateKotlinClass(SliderProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11106getLambda$1749060638$expo_ui_release());
            composeViewFunctionDefinitionBuilder16.Events("onValueChange", "onValueChangeFinished");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder16.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder17 = new ComposeViewFunctionDefinitionBuilder("ShapeView", Reflection.getOrCreateKotlinClass(ShapeProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11098getLambda$1125543977$expo_ui_release());
            Unit unit6 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder17.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder18 = new ComposeViewFunctionDefinitionBuilder("HorizontalDividerView", Reflection.getOrCreateKotlinClass(DividerProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11110getLambda$2147115026$expo_ui_release());
            Unit unit7 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder18.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder19 = new ComposeViewFunctionDefinitionBuilder("VerticalDividerView", Reflection.getOrCreateKotlinClass(DividerProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1463621965$expo_ui_release());
            Unit unit8 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder19.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder20 = new ComposeViewFunctionDefinitionBuilder("DateTimePickerView", Reflection.getOrCreateKotlinClass(DateTimePickerProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$702065030$expo_ui_release());
            composeViewFunctionDefinitionBuilder20.Events(str4);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder20.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder21 = new ComposeViewFunctionDefinitionBuilder("DatePickerDialogView", Reflection.getOrCreateKotlinClass(DatePickerDialogProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1391962475$expo_ui_release());
            composeViewFunctionDefinitionBuilder21.Events(str4, str6);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder21.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder22 = new ComposeViewFunctionDefinitionBuilder("TimePickerDialogView", Reflection.getOrCreateKotlinClass(TimePickerDialogProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$674915625$expo_ui_release());
            composeViewFunctionDefinitionBuilder22.Events(str4, str6);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder22.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder23 = new ComposeViewFunctionDefinitionBuilder("DropdownMenuView", Reflection.getOrCreateKotlinClass(DropdownMenuProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$945131637$expo_ui_release());
            composeViewFunctionDefinitionBuilder23.Events(str6);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder23.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder24 = new ComposeViewFunctionDefinitionBuilder("DropdownMenuItemView", Reflection.getOrCreateKotlinClass(DropdownMenuItemProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$960104775$expo_ui_release());
            composeViewFunctionDefinitionBuilder24.Events("onItemPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder24.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder25 = new ComposeViewFunctionDefinitionBuilder("LinearProgressIndicatorView", Reflection.getOrCreateKotlinClass(LinearProgressIndicatorProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$909667318$expo_ui_release());
            Unit unit9 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder25.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder26 = new ComposeViewFunctionDefinitionBuilder("CircularProgressIndicatorView", Reflection.getOrCreateKotlinClass(CircularProgressIndicatorProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11112getLambda$298376229$expo_ui_release());
            Unit unit10 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder26.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder27 = new ComposeViewFunctionDefinitionBuilder("LinearWavyProgressIndicatorView", Reflection.getOrCreateKotlinClass(LinearWavyProgressIndicatorProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1472196327$expo_ui_release());
            Unit unit11 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder27.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder28 = new ComposeViewFunctionDefinitionBuilder("CircularWavyProgressIndicatorView", Reflection.getOrCreateKotlinClass(CircularWavyProgressIndicatorProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11119getLambda$984615988$expo_ui_release());
            Unit unit12 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder28.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder29 = new ComposeViewFunctionDefinitionBuilder("BoxView", Reflection.getOrCreateKotlinClass(LayoutProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11113getLambda$478967543$expo_ui_release());
            Unit unit13 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder29.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder30 = new ComposeViewFunctionDefinitionBuilder("RowView", Reflection.getOrCreateKotlinClass(LayoutProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11100getLambda$1163197848$expo_ui_release());
            Unit unit14 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder30.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder31 = new ComposeViewFunctionDefinitionBuilder("FlowRowView", Reflection.getOrCreateKotlinClass(LayoutProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$963604626$expo_ui_release());
            Unit unit15 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder31.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder32 = new ComposeViewFunctionDefinitionBuilder("ColumnView", Reflection.getOrCreateKotlinClass(LayoutProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$279374321$expo_ui_release());
            Unit unit16 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder32.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder33 = new ComposeViewFunctionDefinitionBuilder("TextView", Reflection.getOrCreateKotlinClass(TextProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11116getLambda$910306989$expo_ui_release());
            Unit unit17 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder33.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder34 = new ComposeViewFunctionDefinitionBuilder("SearchBarView", Reflection.getOrCreateKotlinClass(SearchBarProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11102getLambda$1483886746$expo_ui_release());
            composeViewFunctionDefinitionBuilder34.Events("onSearch");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder34.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder35 = new ComposeViewFunctionDefinitionBuilder("DockedSearchBarView", Reflection.getOrCreateKotlinClass(DockedSearchBarProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11107getLambda$1756934637$expo_ui_release());
            composeViewFunctionDefinitionBuilder35.Events("onQueryChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder35.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder36 = new ComposeViewFunctionDefinitionBuilder("HorizontalFloatingToolbarView", Reflection.getOrCreateKotlinClass(HorizontalFloatingToolbarProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$509461546$expo_ui_release());
            Unit unit18 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder36.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder37 = new ComposeViewFunctionDefinitionBuilder("PullToRefreshBoxView", Reflection.getOrCreateKotlinClass(PullToRefreshBoxProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11097getLambda$1118094958$expo_ui_release());
            composeViewFunctionDefinitionBuilder37.Events("onRefresh");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder37.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder38 = new ComposeViewFunctionDefinitionBuilder("HorizontalCenteredHeroCarouselView", Reflection.getOrCreateKotlinClass(HorizontalCenteredHeroCarouselProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$406335891$expo_ui_release());
            Unit unit19 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder38.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder39 = new ComposeViewFunctionDefinitionBuilder("HorizontalMultiBrowseCarouselView", Reflection.getOrCreateKotlinClass(HorizontalMultiBrowseCarouselProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11104getLambda$1700720811$expo_ui_release());
            Unit unit20 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder39.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder40 = new ComposeViewFunctionDefinitionBuilder("HorizontalUncontainedCarouselView", Reflection.getOrCreateKotlinClass(HorizontalUncontainedCarouselProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11095getLambda$1069787573$expo_ui_release());
            Unit unit21 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder40.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder41 = new ComposeViewFunctionDefinitionBuilder("AlertDialogView", Reflection.getOrCreateKotlinClass(AlertDialogProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1289444291$expo_ui_release());
            composeViewFunctionDefinitionBuilder41.Events(str6);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder41.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder42 = new ComposeViewFunctionDefinitionBuilder("AssistChipView", Reflection.getOrCreateKotlinClass(AssistChipProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11109getLambda$2068023843$expo_ui_release());
            composeViewFunctionDefinitionBuilder42.Events(str5);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder42.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder43 = new ComposeViewFunctionDefinitionBuilder("InputChipView", Reflection.getOrCreateKotlinClass(InputChipProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1842788147$expo_ui_release());
            composeViewFunctionDefinitionBuilder43.Events(str5);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder43.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder44 = new ComposeViewFunctionDefinitionBuilder("SuggestionChipView", Reflection.getOrCreateKotlinClass(SuggestionChipProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1838869750$expo_ui_release());
            composeViewFunctionDefinitionBuilder44.Events(str5);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder44.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder45 = new ComposeViewFunctionDefinitionBuilder("FilterChipView", Reflection.getOrCreateKotlinClass(FilterChipProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$99663177$expo_ui_release());
            composeViewFunctionDefinitionBuilder45.Events(str5);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder45.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder46 = new ComposeViewFunctionDefinitionBuilder("ToggleButton", Reflection.getOrCreateKotlinClass(ToggleButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11105getLambda$1724074582$expo_ui_release());
            composeViewFunctionDefinitionBuilder46.Events("onCheckedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder46.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder47 = new ComposeViewFunctionDefinitionBuilder("IconToggleButton", Reflection.getOrCreateKotlinClass(ToggleButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1886662409$expo_ui_release());
            composeViewFunctionDefinitionBuilder47.Events("onCheckedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder47.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder48 = new ComposeViewFunctionDefinitionBuilder("FilledIconToggleButton", Reflection.getOrCreateKotlinClass(ToggleButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1202432104$expo_ui_release());
            composeViewFunctionDefinitionBuilder48.Events("onCheckedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder48.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder49 = new ComposeViewFunctionDefinitionBuilder("OutlinedIconToggleButton", Reflection.getOrCreateKotlinClass(ToggleButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$518201799$expo_ui_release());
            composeViewFunctionDefinitionBuilder49.Events("onCheckedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder49.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder50 = new ComposeViewFunctionDefinitionBuilder("CardView", Reflection.getOrCreateKotlinClass(CardProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1734130192$expo_ui_release());
            Unit unit22 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder50.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder51 = new ComposeViewFunctionDefinitionBuilder("ElevatedCardView", Reflection.getOrCreateKotlinClass(ElevatedCardProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$421470340$expo_ui_release());
            Unit unit23 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder51.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder52 = new ComposeViewFunctionDefinitionBuilder("OutlinedCardView", Reflection.getOrCreateKotlinClass(OutlinedCardProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1295041691$expo_ui_release());
            Unit unit24 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder52.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder53 = new ComposeViewFunctionDefinitionBuilder("ListItemView", Reflection.getOrCreateKotlinClass(ListItemProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11096getLambda$1113032583$expo_ui_release());
            Unit unit25 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder53.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder54 = new ComposeViewFunctionDefinitionBuilder("BadgeView", Reflection.getOrCreateKotlinClass(BadgeProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11114getLambda$639508928$expo_ui_release());
            Unit unit26 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder54.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder55 = new ComposeViewFunctionDefinitionBuilder("BadgedBoxView", Reflection.getOrCreateKotlinClass(BadgedBoxProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$310743846$expo_ui_release());
            Unit unit27 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder55.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder56 = new ComposeViewFunctionDefinitionBuilder("SpacerView", Reflection.getOrCreateKotlinClass(SpacerProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$2076003825$expo_ui_release());
            Unit unit28 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder56.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder57 = new ComposeViewFunctionDefinitionBuilder("BasicAlertDialogView", Reflection.getOrCreateKotlinClass(BasicAlertDialogProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$671728666$expo_ui_release());
            composeViewFunctionDefinitionBuilder57.Events(str6);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder57.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder58 = new ComposeViewFunctionDefinitionBuilder("SurfaceView", Reflection.getOrCreateKotlinClass(SurfaceProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11101getLambda$1219489658$expo_ui_release());
            composeViewFunctionDefinitionBuilder58.Events("onSurfaceClick", "onCheckedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder58.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder59 = new ComposeViewFunctionDefinitionBuilder("AnimatedVisibilityView", Reflection.getOrCreateKotlinClass(AnimatedVisibilityProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1813471159$expo_ui_release());
            Unit unit29 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder59.build());
            ViewDefinitionBuilder viewDefinitionBuilder8 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(PlainTooltipView.class), new LazyKType(Reflection.getOrCreateKotlinClass(PlainTooltipView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$default$4
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(PlainTooltipView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty8 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(PlainTooltipViewProps.class))) {
                KType type8 = ((KTypeProjection) CollectionsKt.first((List) kProperty8.getReturnType().getArguments())).getType();
                if (type8 != null && viewDefinitionBuilder8.getProps().get(kProperty8.getName()) == null) {
                    viewDefinitionBuilder8.getProps().put(kProperty8.getName(), new ComposeViewProp(kProperty8.getName(), new AnyType(type8, null, 2, null), kProperty8));
                }
            }
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder8);
            Unit unit30 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(viewDefinitionBuilder8.build());
            ViewDefinitionBuilder viewDefinitionBuilder9 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(RichTooltipView.class), new LazyKType(Reflection.getOrCreateKotlinClass(RichTooltipView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$default$5
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(RichTooltipView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty9 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(RichTooltipViewProps.class))) {
                KType type9 = ((KTypeProjection) CollectionsKt.first((List) kProperty9.getReturnType().getArguments())).getType();
                if (type9 != null && viewDefinitionBuilder9.getProps().get(kProperty9.getName()) == null) {
                    viewDefinitionBuilder9.getProps().put(kProperty9.getName(), new ComposeViewProp(kProperty9.getName(), new AnyType(type9, null, 2, null), kProperty9));
                }
            }
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder9);
            Unit unit31 = Unit.INSTANCE;
            moduleDefinitionBuilder.registerViewDefinition(viewDefinitionBuilder9.build());
            ModuleDefinitionBuilder moduleDefinitionBuilder6 = moduleDefinitionBuilder;
            ViewDefinitionBuilder viewDefinitionBuilder10 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(TooltipBoxView.class), new LazyKType(Reflection.getOrCreateKotlinClass(TooltipBoxView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$$inlined$ComposeView$5
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(TooltipBoxView.class);
                }
            }, 2, null), null, 4, null);
            for (KProperty1 kProperty10 : KClasses.getMemberProperties(Reflection.getOrCreateKotlinClass(TooltipBoxViewProps.class))) {
                KType type10 = ((KTypeProjection) CollectionsKt.first((List) kProperty10.getReturnType().getArguments())).getType();
                if (type10 != null && viewDefinitionBuilder10.getProps().get(kProperty10.getName()) == null) {
                    viewDefinitionBuilder10.getProps().put(kProperty10.getName(), new ComposeViewProp(kProperty10.getName(), new AnyType(type10, null, 2, null), kProperty10));
                }
            }
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder10);
            AsyncFunctionBuilder asyncFunctionBuilderAsyncFunction2 = viewDefinitionBuilder10.AsyncFunction("show");
            String name2 = asyncFunctionBuilderAsyncFunction2.getName();
            TypeConverterProvider converters3 = asyncFunctionBuilderAsyncFunction2.getConverters();
            AnyType[] anyTypeArr5 = new AnyType[1];
            AnyType anyType7 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(TooltipBoxView.class), false));
            if (anyType7 == null) {
                anyType7 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(TooltipBoxView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$49$$inlined$Coroutine$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(TooltipBoxView.class);
                    }
                }), converters3);
            }
            anyTypeArr5[0] = anyType7;
            asyncFunctionBuilderAsyncFunction2.setAsyncFunctionComponent(new SuspendFunctionComponent(name2, anyTypeArr5, new ExpoUIModule$definition$lambda$54$lambda$49$$inlined$Coroutine$2(null)));
            AsyncFunctionBuilder asyncFunctionBuilderAsyncFunction3 = viewDefinitionBuilder10.AsyncFunction("dismiss");
            String name3 = asyncFunctionBuilderAsyncFunction3.getName();
            TypeConverterProvider converters4 = asyncFunctionBuilderAsyncFunction3.getConverters();
            AnyType[] anyTypeArr6 = new AnyType[1];
            AnyType anyType8 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(TooltipBoxView.class), false));
            if (anyType8 == null) {
                anyType8 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(TooltipBoxView.class), false, new Function0<KType>() { // from class: expo.modules.ui.ExpoUIModule$definition$lambda$54$lambda$49$$inlined$Coroutine$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(TooltipBoxView.class);
                    }
                }), converters4);
            }
            anyTypeArr6[0] = anyType8;
            asyncFunctionBuilderAsyncFunction3.setAsyncFunctionComponent(new SuspendFunctionComponent(name3, anyTypeArr6, new ExpoUIModule$definition$lambda$54$lambda$49$$inlined$Coroutine$4(null)));
            moduleDefinitionBuilder6.registerViewDefinition(viewDefinitionBuilder10.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder60 = new ComposeViewFunctionDefinitionBuilder("RadioButtonView", Reflection.getOrCreateKotlinClass(RadioButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.m11099getLambda$1156478940$expo_ui_release());
            composeViewFunctionDefinitionBuilder60.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder60.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder61 = new ComposeViewFunctionDefinitionBuilder("FloatingActionButtonView", Reflection.getOrCreateKotlinClass(FloatingActionButtonProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$567717209$expo_ui_release());
            composeViewFunctionDefinitionBuilder61.Events("onButtonPressed");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder61.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder62 = new ComposeViewFunctionDefinitionBuilder("ExposedDropdownMenuBoxView", Reflection.getOrCreateKotlinClass(ExposedDropdownMenuBoxProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$1535170533$expo_ui_release());
            composeViewFunctionDefinitionBuilder62.Events("onExpandedChange");
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder62.build());
            ComposeViewFunctionDefinitionBuilder composeViewFunctionDefinitionBuilder63 = new ComposeViewFunctionDefinitionBuilder("ExposedDropdownMenuView", Reflection.getOrCreateKotlinClass(ExposedDropdownMenuProps.class), ComposableSingletons$ExpoUIModuleKt.INSTANCE.getLambda$155421711$expo_ui_release());
            composeViewFunctionDefinitionBuilder63.Events(str6);
            moduleDefinitionBuilder.registerViewDefinition(composeViewFunctionDefinitionBuilder63.build());
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }
}
