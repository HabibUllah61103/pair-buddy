package expo.modules.taskManager;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.tracing.Trace;
import expo.modules.interfaces.taskManager.TaskManagerInterface;
import expo.modules.interfaces.taskManager.TaskServiceInterface;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.events.BasicEventListener;
import expo.modules.kotlin.events.EventName;
import expo.modules.kotlin.exception.Exceptions;
import expo.modules.kotlin.functions.AsyncFunctionWithPromiseComponent;
import expo.modules.kotlin.functions.BoolAsyncFunctionComponent;
import expo.modules.kotlin.functions.DoubleAsyncFunctionComponent;
import expo.modules.kotlin.functions.FloatAsyncFunctionComponent;
import expo.modules.kotlin.functions.IntAsyncFunctionComponent;
import expo.modules.kotlin.functions.StringAsyncFunctionComponent;
import expo.modules.kotlin.functions.UntypedAsyncFunctionComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.objects.ConstantComponentBuilder;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.TypeConverterProvider;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;

/* JADX INFO: compiled from: TaskManagerModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0007R\u001d\u0010\f\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lexpo/modules/taskManager/TaskManagerModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", "_taskService", "Lexpo/modules/interfaces/taskManager/TaskServiceInterface;", "get_taskService", "()Lexpo/modules/interfaces/taskManager/TaskServiceInterface;", "_taskService$delegate", "Lkotlin/Lazy;", "taskService", "getTaskService", "taskManagerInternal", "Lexpo/modules/interfaces/taskManager/TaskManagerInterface;", "getTaskManagerInternal", "()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;", "taskManagerInternal$delegate", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "appScopeKey", "", "getAppScopeKey", "()Ljava/lang/String;", "expo-task-manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TaskManagerModule extends Module {

    /* JADX INFO: renamed from: _taskService$delegate, reason: from kotlin metadata */
    private final Lazy _taskService = LazyKt.lazy(new Function0() { // from class: expo.modules.taskManager.TaskManagerModule$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TaskManagerModule._taskService_delegate$lambda$0(this.f$0);
        }
    });

    /* JADX INFO: renamed from: taskManagerInternal$delegate, reason: from kotlin metadata */
    private final Lazy taskManagerInternal = LazyKt.lazy(new Function0() { // from class: expo.modules.taskManager.TaskManagerModule$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TaskManagerModule.taskManagerInternal_delegate$lambda$1(this.f$0);
        }
    });

    private final TaskServiceInterface get_taskService() {
        return (TaskServiceInterface) this._taskService.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TaskServiceInterface _taskService_delegate$lambda$0(TaskManagerModule taskManagerModule) {
        return (TaskServiceInterface) taskManagerModule.getAppContext().getLegacyModuleRegistry().getSingletonModule("TaskService", TaskServiceInterface.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TaskServiceInterface getTaskService() throws Exceptions.ModuleNotFound {
        TaskServiceInterface taskServiceInterface = get_taskService();
        if (taskServiceInterface != null) {
            return taskServiceInterface;
        }
        throw new Exceptions.ModuleNotFound(Reflection.getOrCreateKotlinClass(TaskManagerInterface.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TaskManagerInterface getTaskManagerInternal() {
        return (TaskManagerInterface) this.taskManagerInternal.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TaskManagerInterface taskManagerInternal_delegate$lambda$1(TaskManagerModule taskManagerModule) {
        Object module;
        try {
            module = taskManagerModule.getAppContext().getLegacyModuleRegistry().getModule(TaskManagerInterface.class);
        } catch (Exception unused) {
            module = null;
        }
        return (TaskManagerInterface) module;
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent2;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent3;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent4;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent5;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent6;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent2;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent7;
        TaskManagerModule taskManagerModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (taskManagerModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(taskManagerModule);
            moduleDefinitionBuilder.Name("ExpoTaskManager");
            moduleDefinitionBuilder.Events(TaskManagerInterface.EVENT_NAME);
            ConstantComponentBuilder constantComponentBuilder = new ConstantComponentBuilder("EVENT_NAME");
            constantComponentBuilder.setGetter(new Function0<String>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$Constant$1
                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return TaskManagerInterface.EVENT_NAME;
                }
            });
            moduleDefinitionBuilder.getConstants().put("EVENT_NAME", constantComponentBuilder);
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_CREATE, new BasicEventListener(EventName.MODULE_CREATE, new Function0<Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$OnCreate$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Object module;
                    final WeakReference weakReference = new WeakReference(this.this$0);
                    final Function2<String, Bundle, Unit> function2 = new Function2<String, Bundle, Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$1$2$emitEvent$1
                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(String str, Bundle bundle) {
                            invoke2(str, bundle);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(String name, Bundle body) {
                            Intrinsics.checkNotNullParameter(name, "name");
                            Intrinsics.checkNotNullParameter(body, "body");
                            try {
                                TaskManagerModule taskManagerModule2 = weakReference.get();
                                if (taskManagerModule2 != null) {
                                    taskManagerModule2.sendEvent(name, body);
                                }
                            } catch (Throwable th) {
                                Log.e("ExpoTaskManager", "Failed to emit event " + name + " using the module's event emitter: " + th.getMessage());
                            }
                        }
                    };
                    try {
                        module = this.this$0.getAppContext().getLegacyModuleRegistry().getModule(TaskManagerInterface.class);
                    } catch (Exception unused) {
                        module = null;
                    }
                    TaskManagerInternalModule taskManagerInternalModule = module instanceof TaskManagerInternalModule ? (TaskManagerInternalModule) module : null;
                    if (taskManagerInternalModule != null) {
                        taskManagerInternalModule.setEmitEventWrapper(new EmitEventWrapper(function2) { // from class: expo.modules.taskManager.TaskManagerModule$sam$expo_modules_taskManager_EmitEventWrapper$0
                            private final /* synthetic */ Function2 function;

                            {
                                Intrinsics.checkNotNullParameter(function2, "function");
                                this.function = function2;
                            }

                            @Override // expo.modules.taskManager.EmitEventWrapper
                            public final /* synthetic */ void emit(String str, Bundle bundle) {
                                this.function.invoke(str, bundle);
                            }
                        });
                    }
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr = new AnyType[0];
            Function1<Object[], Boolean> function1 = new Function1<Object[], Boolean>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return true;
                }
            };
            if (!Intrinsics.areEqual(Boolean.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(Boolean.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(Boolean.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(Boolean.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(Boolean.class, String.class)) {
                                untypedAsyncFunctionComponent = new StringAsyncFunctionComponent("isAvailableAsync", anyTypeArr, function1);
                            } else {
                                untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("isAvailableAsync", anyTypeArr, function1);
                            }
                        } else {
                            untypedAsyncFunctionComponent = new FloatAsyncFunctionComponent("isAvailableAsync", anyTypeArr, function1);
                        }
                    } else {
                        untypedAsyncFunctionComponent = new DoubleAsyncFunctionComponent("isAvailableAsync", anyTypeArr, function1);
                    }
                } else {
                    untypedAsyncFunctionComponent = new BoolAsyncFunctionComponent("isAvailableAsync", anyTypeArr, function1);
                }
            } else {
                untypedAsyncFunctionComponent = new IntAsyncFunctionComponent("isAvailableAsync", anyTypeArr, function1);
            }
            moduleDefinitionBuilder2.getAsyncFunctions().put("isAvailableAsync", untypedAsyncFunctionComponent);
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            TypeConverterProvider converters = moduleDefinitionBuilder3.getConverters();
            AnyType[] anyTypeArr2 = new AnyType[2];
            AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType == null) {
                anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters);
            }
            anyTypeArr2[0] = anyType;
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), false));
            if (anyType2 == null) {
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), false, new Function0<KType>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.nullableTypeOf(Object.class)));
                    }
                }), converters);
            }
            anyTypeArr2[1] = anyType2;
            Function1<Object[], Unit> function2 = new Function1<Object[], Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$4
                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Object[] objArr) throws Exceptions.ModuleNotFound {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Object obj = objArr[0];
                    Map<String, Object> map = (Map) objArr[1];
                    this.this$0.getTaskService().notifyTaskFinished((String) obj, this.this$0.getAppScopeKey(), map);
                    return Unit.INSTANCE;
                }
            };
            if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(Unit.class, String.class)) {
                                untypedAsyncFunctionComponent2 = new StringAsyncFunctionComponent("notifyTaskFinishedAsync", anyTypeArr2, function2);
                            } else {
                                untypedAsyncFunctionComponent2 = new UntypedAsyncFunctionComponent("notifyTaskFinishedAsync", anyTypeArr2, function2);
                            }
                        } else {
                            untypedAsyncFunctionComponent2 = new FloatAsyncFunctionComponent("notifyTaskFinishedAsync", anyTypeArr2, function2);
                        }
                    } else {
                        untypedAsyncFunctionComponent2 = new DoubleAsyncFunctionComponent("notifyTaskFinishedAsync", anyTypeArr2, function2);
                    }
                } else {
                    untypedAsyncFunctionComponent2 = new BoolAsyncFunctionComponent("notifyTaskFinishedAsync", anyTypeArr2, function2);
                }
            } else {
                untypedAsyncFunctionComponent2 = new IntAsyncFunctionComponent("notifyTaskFinishedAsync", anyTypeArr2, function2);
            }
            moduleDefinitionBuilder3.getAsyncFunctions().put("notifyTaskFinishedAsync", untypedAsyncFunctionComponent2);
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(String.class, Promise.class)) {
                asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("isTaskRegisteredAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$5
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) throws Exceptions.ModuleNotFound {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        this.this$0.getTaskService().hasRegisteredTask((String) promise, this.this$0.getAppScopeKey());
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) throws Exceptions.ModuleNotFound {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                TypeConverterProvider converters2 = moduleDefinitionBuilder4.getConverters();
                AnyType[] anyTypeArr3 = new AnyType[1];
                AnyType anyType3 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
                if (anyType3 == null) {
                    anyType3 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$6
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(String.class);
                        }
                    }), converters2);
                }
                anyTypeArr3[0] = anyType3;
                Function1<Object[], Boolean> function3 = new Function1<Object[], Boolean>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$7
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return Boolean.valueOf(this.this$0.getTaskService().hasRegisteredTask((String) objArr[0], this.this$0.getAppScopeKey()));
                    }
                };
                if (!Intrinsics.areEqual(Boolean.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Boolean.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Boolean.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Boolean.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Boolean.class, String.class)) {
                                    untypedAsyncFunctionComponent3 = new StringAsyncFunctionComponent("isTaskRegisteredAsync", anyTypeArr3, function3);
                                } else {
                                    untypedAsyncFunctionComponent3 = new UntypedAsyncFunctionComponent("isTaskRegisteredAsync", anyTypeArr3, function3);
                                }
                            } else {
                                untypedAsyncFunctionComponent3 = new FloatAsyncFunctionComponent("isTaskRegisteredAsync", anyTypeArr3, function3);
                            }
                        } else {
                            untypedAsyncFunctionComponent3 = new DoubleAsyncFunctionComponent("isTaskRegisteredAsync", anyTypeArr3, function3);
                        }
                    } else {
                        untypedAsyncFunctionComponent3 = new BoolAsyncFunctionComponent("isTaskRegisteredAsync", anyTypeArr3, function3);
                    }
                } else {
                    untypedAsyncFunctionComponent3 = new IntAsyncFunctionComponent("isTaskRegisteredAsync", anyTypeArr3, function3);
                }
                asyncFunctionWithPromiseComponent = untypedAsyncFunctionComponent3;
            }
            moduleDefinitionBuilder4.getAsyncFunctions().put("isTaskRegisteredAsync", asyncFunctionWithPromiseComponent);
            ModuleDefinitionBuilder moduleDefinitionBuilder5 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(String.class, Promise.class)) {
                untypedAsyncFunctionComponent4 = new AsyncFunctionWithPromiseComponent("getTaskOptionsAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$8
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) throws Exceptions.ModuleNotFound {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        this.this$0.getTaskService().getTaskOptions((String) promise, this.this$0.getAppScopeKey());
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) throws Exceptions.ModuleNotFound {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                TypeConverterProvider converters3 = moduleDefinitionBuilder5.getConverters();
                AnyType[] anyTypeArr4 = new AnyType[1];
                AnyType anyType4 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
                if (anyType4 == null) {
                    anyType4 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$9
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(String.class);
                        }
                    }), converters3);
                }
                anyTypeArr4[0] = anyType4;
                untypedAsyncFunctionComponent4 = new UntypedAsyncFunctionComponent("getTaskOptionsAsync", anyTypeArr4, new Function1<Object[], Bundle>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$10
                    @Override // kotlin.jvm.functions.Function1
                    public final Bundle invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return this.this$0.getTaskService().getTaskOptions((String) objArr[0], this.this$0.getAppScopeKey());
                    }
                });
            }
            moduleDefinitionBuilder5.getAsyncFunctions().put("getTaskOptionsAsync", untypedAsyncFunctionComponent4);
            ModuleDefinitionBuilder moduleDefinitionBuilder6 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr5 = new AnyType[0];
            Function1<Object[], List<? extends Bundle>> function4 = new Function1<Object[], List<? extends Bundle>>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$11
                @Override // kotlin.jvm.functions.Function1
                public final List<? extends Bundle> invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    List<Bundle> tasksForAppScopeKey = this.this$0.getTaskService().getTasksForAppScopeKey(this.this$0.getAppScopeKey());
                    Intrinsics.checkNotNullExpressionValue(tasksForAppScopeKey, "getTasksForAppScopeKey(...)");
                    return tasksForAppScopeKey;
                }
            };
            if (!Intrinsics.areEqual(List.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(List.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(List.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(List.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(List.class, String.class)) {
                                untypedAsyncFunctionComponent5 = new StringAsyncFunctionComponent("getRegisteredTasksAsync", anyTypeArr5, function4);
                            } else {
                                untypedAsyncFunctionComponent5 = new UntypedAsyncFunctionComponent("getRegisteredTasksAsync", anyTypeArr5, function4);
                            }
                        } else {
                            untypedAsyncFunctionComponent5 = new FloatAsyncFunctionComponent("getRegisteredTasksAsync", anyTypeArr5, function4);
                        }
                    } else {
                        untypedAsyncFunctionComponent5 = new DoubleAsyncFunctionComponent("getRegisteredTasksAsync", anyTypeArr5, function4);
                    }
                } else {
                    untypedAsyncFunctionComponent5 = new BoolAsyncFunctionComponent("getRegisteredTasksAsync", anyTypeArr5, function4);
                }
            } else {
                untypedAsyncFunctionComponent5 = new IntAsyncFunctionComponent("getRegisteredTasksAsync", anyTypeArr5, function4);
            }
            moduleDefinitionBuilder6.getAsyncFunctions().put("getRegisteredTasksAsync", untypedAsyncFunctionComponent5);
            ModuleDefinitionBuilder moduleDefinitionBuilder7 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(String.class, Promise.class)) {
                asyncFunctionWithPromiseComponent2 = new AsyncFunctionWithPromiseComponent("unregisterTaskAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$12
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) throws Exception {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        this.this$0.getTaskService().unregisterTask((String) promise, this.this$0.getAppScopeKey(), null);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) throws Exception {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                TypeConverterProvider converters4 = moduleDefinitionBuilder7.getConverters();
                AnyType[] anyTypeArr6 = new AnyType[1];
                AnyType anyType5 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
                if (anyType5 == null) {
                    anyType5 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$13
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(String.class);
                        }
                    }), converters4);
                }
                anyTypeArr6[0] = anyType5;
                Function1<Object[], Unit> function5 = new Function1<Object[], Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$14
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) throws Exception {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        this.this$0.getTaskService().unregisterTask((String) objArr[0], this.this$0.getAppScopeKey(), null);
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent6 = new StringAsyncFunctionComponent("unregisterTaskAsync", anyTypeArr6, function5);
                                } else {
                                    untypedAsyncFunctionComponent6 = new UntypedAsyncFunctionComponent("unregisterTaskAsync", anyTypeArr6, function5);
                                }
                            } else {
                                untypedAsyncFunctionComponent6 = new FloatAsyncFunctionComponent("unregisterTaskAsync", anyTypeArr6, function5);
                            }
                        } else {
                            untypedAsyncFunctionComponent6 = new DoubleAsyncFunctionComponent("unregisterTaskAsync", anyTypeArr6, function5);
                        }
                    } else {
                        untypedAsyncFunctionComponent6 = new BoolAsyncFunctionComponent("unregisterTaskAsync", anyTypeArr6, function5);
                    }
                } else {
                    untypedAsyncFunctionComponent6 = new IntAsyncFunctionComponent("unregisterTaskAsync", anyTypeArr6, function5);
                }
                asyncFunctionWithPromiseComponent2 = untypedAsyncFunctionComponent6;
            }
            moduleDefinitionBuilder7.getAsyncFunctions().put("unregisterTaskAsync", asyncFunctionWithPromiseComponent2);
            ModuleDefinitionBuilder moduleDefinitionBuilder8 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr7 = new AnyType[0];
            Function1<Object[], Unit> function6 = new Function1<Object[], Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$lambda$11$$inlined$AsyncFunction$15
                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    this.this$0.getTaskService().unregisterAllTasksForAppScopeKey(this.this$0.getAppScopeKey());
                    return Unit.INSTANCE;
                }
            };
            if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(Unit.class, String.class)) {
                                untypedAsyncFunctionComponent7 = new StringAsyncFunctionComponent("unregisterAllTasksAsync", anyTypeArr7, function6);
                            } else {
                                untypedAsyncFunctionComponent7 = new UntypedAsyncFunctionComponent("unregisterAllTasksAsync", anyTypeArr7, function6);
                            }
                        } else {
                            untypedAsyncFunctionComponent7 = new FloatAsyncFunctionComponent("unregisterAllTasksAsync", anyTypeArr7, function6);
                        }
                    } else {
                        untypedAsyncFunctionComponent7 = new DoubleAsyncFunctionComponent("unregisterAllTasksAsync", anyTypeArr7, function6);
                    }
                } else {
                    untypedAsyncFunctionComponent7 = new BoolAsyncFunctionComponent("unregisterAllTasksAsync", anyTypeArr7, function6);
                }
            } else {
                untypedAsyncFunctionComponent7 = new IntAsyncFunctionComponent("unregisterAllTasksAsync", anyTypeArr7, function6);
            }
            moduleDefinitionBuilder8.getAsyncFunctions().put("unregisterAllTasksAsync", untypedAsyncFunctionComponent7);
            moduleDefinitionBuilder.OnStartObserving(new Function0<Unit>() { // from class: expo.modules.taskManager.TaskManagerModule$definition$1$10
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Handler handler = new Handler(Looper.getMainLooper());
                    final TaskManagerModule taskManagerModule2 = this.this$0;
                    handler.postDelayed(new Runnable() { // from class: expo.modules.taskManager.TaskManagerModule$definition$1$10.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            TaskManagerInterface taskManagerInternal = taskManagerModule2.getTaskManagerInternal();
                            if (taskManagerInternal != null) {
                                taskManagerInternal.flushQueuedEvents();
                            }
                        }
                    }, 1000L);
                }
            });
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getAppScopeKey() throws Exceptions.ModuleNotFound {
        TaskManagerInterface taskManagerInternal = getTaskManagerInternal();
        if (taskManagerInternal == null) {
            throw new Exceptions.ModuleNotFound(Reflection.getOrCreateKotlinClass(TaskManagerInterface.class));
        }
        String appScopeKey = taskManagerInternal.getAppScopeKey();
        Intrinsics.checkNotNullExpressionValue(appScopeKey, "getAppScopeKey(...)");
        return appScopeKey;
    }
}
