package com.superwall.sdk.models.paywall;

import android.graphics.Color;
import androidx.media3.common.C;
import com.google.android.gms.common.internal.ImagesContract;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.config.models.OnDeviceCaching;
import com.superwall.sdk.config.models.OnDeviceCachingSerializer;
import com.superwall.sdk.config.models.Survey;
import com.superwall.sdk.config.models.Survey$$serializer;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.SerializableEntity;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.config.ComputedPropertyRequest$$serializer;
import com.superwall.sdk.models.config.FeatureGatingBehavior;
import com.superwall.sdk.models.config.FeatureGatingBehaviorSerializer;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.product.CrossplatformProduct;
import com.superwall.sdk.models.product.CrossplatformProductSerializer;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.models.product.ProductItemSerializer;
import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.models.product.ProductVariableSerializer;
import com.superwall.sdk.models.serialization.DateSerializer;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.paywall.presentation.PaywallCloseReason;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import expo.modules.notifications.service.NotificationsService;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Paywall.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000å\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0003\b\u008a\u0001\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b4\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \u0091\u00022\u00020\u0001:\b\u0090\u0002\u0091\u0002\u0092\u0002\u0093\u0002BÕ\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0003j\u0002`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015\u0012\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001c\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001c\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001c\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u001c\u0012\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015\u0012\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010$\u001a\u00020%\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010'\u001a\u00020(\u0012\u000e\b\u0002\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u0015\u0012\u000e\b\u0002\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u0015\u0012\b\b\u0002\u0010-\u001a\u00020.\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u000100\u0012\b\b\u0002\u00101\u001a\u000202\u0012\u0014\b\u0002\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020504\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u000107\u0012\n\u00108\u001a\u00060\u0003j\u0002`9\u0012\u0006\u0010:\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010;\u001a\b\u0012\u0004\u0012\u00020<0\u0015\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010>\u001a\u0004\u0018\u00010?\u0012\b\b\u0002\u0010@\u001a\u00020A¢\u0006\u0004\bB\u0010CBã\u0002\b\u0010\u0012\u0006\u0010D\u001a\u00020E\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0015\u0012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015\u0012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015\u0012\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010$\u001a\u00020%\u0012\b\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010'\u001a\u0004\u0018\u00010(\u0012\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\u0015\u0012\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u0015\u0012\b\u0010-\u001a\u0004\u0018\u00010.\u0012\b\u00106\u001a\u0004\u0018\u000107\u0012\b\u00108\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010:\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010\u0015\u0012\b\u0010=\u001a\u0004\u0018\u00010%\u0012\b\u0010>\u001a\u0004\u0018\u00010?\u0012\b\u0010@\u001a\u0004\u0018\u00010A\u0012\b\u0010F\u001a\u0004\u0018\u00010G¢\u0006\u0004\bB\u0010HJ\u0011\u0010Ñ\u0001\u001a\u00030Ò\u00012\u0007\u0010Ó\u0001\u001a\u00020\u0000J\u0014\u0010Ô\u0001\u001a\u00030Õ\u00012\n\u0010Ö\u0001\u001a\u0005\u0018\u00010×\u0001J\n\u0010Ø\u0001\u001a\u00020\u0003HÆ\u0003J\u000e\u0010Ù\u0001\u001a\u00060\u0003j\u0002`\u0005HÆ\u0003J\n\u0010Ú\u0001\u001a\u00020\u0003HÆ\u0003J\u0012\u0010Û\u0001\u001a\u00020\bHÆ\u0003¢\u0006\u0005\bÜ\u0001\u0010LJ\n\u0010Ý\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010Þ\u0001\u001a\u0004\u0018\u00010\u0003HÂ\u0003J\f\u0010ß\u0001\u001a\u0004\u0018\u00010\fHÂ\u0003J\n\u0010à\u0001\u001a\u00020\u000eHÂ\u0003J\n\u0010á\u0001\u001a\u00020\u0003HÂ\u0003J\n\u0010â\u0001\u001a\u00020\u0011HÆ\u0003J\n\u0010ã\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010ä\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010å\u0001\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015HÂ\u0003J\u0016\u0010æ\u0001\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015HÀ\u0003¢\u0006\u0003\bç\u0001J\u0016\u0010è\u0001\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015HÀ\u0003¢\u0006\u0003\bé\u0001J\u0010\u0010ê\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015HÆ\u0003J\n\u0010ë\u0001\u001a\u00020\u001cHÆ\u0003J\n\u0010ì\u0001\u001a\u00020\u001cHÆ\u0003J\n\u0010í\u0001\u001a\u00020\u001cHÆ\u0003J\n\u0010î\u0001\u001a\u00020\u001cHÆ\u0003J\u0012\u0010ï\u0001\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015HÆ\u0003J\u0012\u0010ð\u0001\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015HÆ\u0003J\f\u0010ñ\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\n\u0010ò\u0001\u001a\u00020%HÆ\u0003J\f\u0010ó\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\n\u0010ô\u0001\u001a\u00020(HÆ\u0003J\u0010\u0010õ\u0001\u001a\b\u0012\u0004\u0012\u00020*0\u0015HÆ\u0003J\u0010\u0010ö\u0001\u001a\b\u0012\u0004\u0012\u00020,0\u0015HÆ\u0003J\n\u0010÷\u0001\u001a\u00020.HÆ\u0003J\f\u0010ø\u0001\u001a\u0004\u0018\u000100HÆ\u0003J\n\u0010ù\u0001\u001a\u000202HÆ\u0003J\u0016\u0010ú\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020504HÆ\u0003J\f\u0010û\u0001\u001a\u0004\u0018\u000107HÆ\u0003J\u000e\u0010ü\u0001\u001a\u00060\u0003j\u0002`9HÆ\u0003J\n\u0010ý\u0001\u001a\u00020\u0003HÆ\u0003J\u0010\u0010þ\u0001\u001a\b\u0012\u0004\u0012\u00020<0\u0015HÆ\u0003J\u0012\u0010ÿ\u0001\u001a\u0004\u0018\u00010%HÆ\u0003¢\u0006\u0003\u0010´\u0001J\f\u0010\u0080\u0002\u001a\u0004\u0018\u00010?HÆ\u0003J\n\u0010\u0081\u0002\u001a\u00020AHÆ\u0003Jù\u0003\u0010\u0082\u0002\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\f\b\u0002\u0010\u0004\u001a\u00060\u0003j\u0002`\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00152\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00152\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u001c2\b\b\u0002\u0010\u001f\u001a\u00020\u001c2\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u00152\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u00152\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010$\u001a\u00020%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010'\u001a\u00020(2\u000e\b\u0002\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u00152\u000e\b\u0002\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u00152\b\b\u0002\u0010-\u001a\u00020.2\n\b\u0002\u0010/\u001a\u0004\u0018\u0001002\b\b\u0002\u00101\u001a\u0002022\u0014\b\u0002\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u000205042\n\b\u0002\u00106\u001a\u0004\u0018\u0001072\f\b\u0002\u00108\u001a\u00060\u0003j\u0002`92\b\b\u0002\u0010:\u001a\u00020\u00032\u000e\b\u0002\u0010;\u001a\b\u0012\u0004\u0012\u00020<0\u00152\n\b\u0002\u0010=\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010?2\b\b\u0002\u0010@\u001a\u00020AHÆ\u0001¢\u0006\u0006\b\u0083\u0002\u0010\u0084\u0002J\u0015\u0010\u0085\u0002\u001a\u00020%2\t\u0010\u0086\u0002\u001a\u0004\u0018\u000105HÖ\u0003J\n\u0010\u0087\u0002\u001a\u00020EHÖ\u0001J\n\u0010\u0088\u0002\u001a\u00020\u0003HÖ\u0001J-\u0010\u0089\u0002\u001a\u00030Ò\u00012\u0007\u0010\u008a\u0002\u001a\u00020\u00002\b\u0010\u008b\u0002\u001a\u00030\u008c\u00022\b\u0010\u008d\u0002\u001a\u00030\u008e\u0002H\u0001¢\u0006\u0003\b\u008f\u0002R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bI\u0010J\u001a\u0004\bK\u0010LR(\u0010\u0004\u001a\u00060\u0003j\u0002`\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bM\u0010J\u001a\u0004\bN\u0010L\"\u0004\bO\u0010PR\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bQ\u0010J\u001a\u0004\bR\u0010LR\u001e\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010U\u0012\u0004\bS\u0010J\u001a\u0004\bT\u0010LR\u001c\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bV\u0010J\u001a\u0004\bW\u0010LR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\bX\u0010JR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\bY\u0010JR\u0016\u0010\r\u001a\u00020\u000e8\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\bZ\u0010JR\u0016\u0010\u000f\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b[\u0010JR$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\\\u0010J\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u001c\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\ba\u0010J\u001a\u0004\bb\u0010LR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bc\u0010J\u001a\u0004\bd\u0010LR\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\be\u0010JR*\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00158\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bf\u0010J\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR*\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bk\u0010J\u001a\u0004\bl\u0010h\"\u0004\bm\u0010jR*\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bn\u0010J\u001a\u0004\bo\u0010h\"\u0004\bp\u0010jR$\u0010\u001b\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bq\u0010J\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR$\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bv\u0010J\u001a\u0004\bw\u0010s\"\u0004\bx\u0010uR$\u0010\u001e\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\by\u0010J\u001a\u0004\bz\u0010s\"\u0004\b{\u0010uR$\u0010\u001f\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b|\u0010J\u001a\u0004\b}\u0010s\"\u0004\b~\u0010uR#\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000f\n\u0000\u001a\u0004\b\u007f\u0010h\"\u0005\b\u0080\u0001\u0010jR$\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0081\u0001\u0010h\"\u0005\b\u0082\u0001\u0010jR\u001e\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0083\u0001\u0010L\"\u0005\b\u0084\u0001\u0010PR\u001d\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u0011\n\u0000\u001a\u0005\b$\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001e\u0010&\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0088\u0001\u0010L\"\u0005\b\u0089\u0001\u0010PR)\u0010'\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0019\n\u0000\u0012\u0005\b\u008a\u0001\u0010J\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R-\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0000\u0012\u0005\b\u008f\u0001\u0010J\u001a\u0005\b\u0090\u0001\u0010h\"\u0005\b\u0091\u0001\u0010jR-\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0000\u0012\u0005\b\u0092\u0001\u0010J\u001a\u0005\b\u0093\u0001\u0010h\"\u0005\b\u0094\u0001\u0010jR)\u0010-\u001a\u00020.8\u0006@\u0006X\u0087\u000e¢\u0006\u0019\n\u0000\u0012\u0005\b\u0095\u0001\u0010J\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001\"\u0006\b\u0098\u0001\u0010\u0099\u0001R+\u0010/\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e¢\u0006\u0019\n\u0000\u0012\u0005\b\u009a\u0001\u0010J\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R)\u00101\u001a\u0002028\u0006@\u0006X\u0087\u000e¢\u0006\u0019\n\u0000\u0012\u0005\b\u009f\u0001\u0010J\u001a\u0006\b \u0001\u0010¡\u0001\"\u0006\b¢\u0001\u0010£\u0001R5\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u000205048\u0006@\u0006X\u0087\u000e¢\u0006\u0019\n\u0000\u0012\u0005\b¤\u0001\u0010J\u001a\u0006\b¥\u0001\u0010¦\u0001\"\u0006\b§\u0001\u0010¨\u0001R!\u00106\u001a\u0004\u0018\u0001078\u0006X\u0087\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b©\u0001\u0010J\u001a\u0006\bª\u0001\u0010«\u0001R\"\u00108\u001a\u00060\u0003j\u0002`98\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b¬\u0001\u0010J\u001a\u0005\b\u00ad\u0001\u0010LR\u001e\u0010:\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b®\u0001\u0010J\u001a\u0005\b¯\u0001\u0010LR-\u0010;\u001a\b\u0012\u0004\u0012\u00020<0\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0000\u0012\u0005\b°\u0001\u0010J\u001a\u0005\b±\u0001\u0010h\"\u0005\b²\u0001\u0010jR#\u0010=\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004¢\u0006\u0013\n\u0003\u0010µ\u0001\u0012\u0005\b³\u0001\u0010J\u001a\u0005\b=\u0010´\u0001R!\u0010>\u001a\u0004\u0018\u00010?8\u0006X\u0087\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b¶\u0001\u0010J\u001a\u0006\b·\u0001\u0010¸\u0001R\u001f\u0010@\u001a\u00020A8\u0006X\u0087\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b¹\u0001\u0010J\u001a\u0006\bº\u0001\u0010»\u0001R\u0019\u0010¼\u0001\u001a\b\u0012\u0004\u0012\u00020\u00180\u00158F¢\u0006\u0007\u001a\u0005\b½\u0001\u0010hR\u0019\u0010¾\u0001\u001a\b\u0012\u0004\u0012\u00020\u00180\u00158F¢\u0006\u0007\u001a\u0005\b¿\u0001\u0010hR\u0019\u0010À\u0001\u001a\b\u0012\u0004\u0012\u00020\u00180\u00158F¢\u0006\u0007\u001a\u0005\bÁ\u0001\u0010hR4\u0010Ã\u0001\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\r\u0010Â\u0001\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\bÄ\u0001\u0010h\"\u0005\bÅ\u0001\u0010jR\u0019\u0010Æ\u0001\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158F¢\u0006\u0007\u001a\u0005\bÇ\u0001\u0010hR \u0010È\u0001\u001a\u00020E8FX\u0086\u0084\u0002¢\u0006\u0010\n\u0006\bË\u0001\u0010Ì\u0001\u001a\u0006\bÉ\u0001\u0010Ê\u0001R\"\u0010Í\u0001\u001a\u0004\u0018\u00010E8FX\u0086\u0084\u0002¢\u0006\u0010\n\u0006\bÐ\u0001\u0010Ì\u0001\u001a\u0006\bÎ\u0001\u0010Ï\u0001¨\u0006\u0094\u0002"}, d2 = {"Lcom/superwall/sdk/models/paywall/Paywall;", "Lcom/superwall/sdk/models/SerializableEntity;", "databaseId", "", NotificationsService.IDENTIFIER_KEY, "Lcom/superwall/sdk/models/paywall/PaywallIdentifier;", "name", ImagesContract.URL, "Lcom/superwall/sdk/models/paywall/PaywallURL;", "htmlSubstitutions", "presentationStyle", "expandedPresentationStyle", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "presentationDelay", "", "presentationCondition", "presentation", "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;", "backgroundColorHex", "darkBackgroundColorHex", "_products", "", "Lcom/superwall/sdk/models/product/ProductItem;", "_productItemsV3", "Lcom/superwall/sdk/models/product/CrossplatformProduct;", "_productItems", "productIds", "responseLoadingInfo", "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;", "webviewLoadingInfo", "productsLoadingInfo", "shimmerLoadingInfo", "productVariables", "Lcom/superwall/sdk/models/product/ProductVariable;", "swProductVariablesTemplate", "paywalljsVersion", "isFreeTrialAvailable", "", "presentationSourceType", "featureGating", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "computedPropertyRequests", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "localNotifications", "Lcom/superwall/sdk/models/paywall/LocalNotification;", "onDeviceCache", "Lcom/superwall/sdk/config/models/OnDeviceCaching;", "experiment", "Lcom/superwall/sdk/models/triggers/Experiment;", "closeReason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "state", "", "", "urlConfig", "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;", "cacheKey", "Lcom/superwall/sdk/models/paywall/CacheKey;", "buildId", "surveys", "Lcom/superwall/sdk/config/models/Survey;", "isScrollEnabled", "rerouteBackButton", "Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;", "introOfferEligibility", "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getDatabaseId$annotations", "()V", "getDatabaseId", "()Ljava/lang/String;", "getIdentifier$annotations", "getIdentifier", "setIdentifier", "(Ljava/lang/String;)V", "getName$annotations", "getName", "getUrl-24UBhI0$annotations", "getUrl-24UBhI0", "Ljava/lang/String;", "getHtmlSubstitutions$annotations", "getHtmlSubstitutions", "getPresentationStyle$annotations", "getExpandedPresentationStyle$annotations", "getPresentationDelay$annotations", "getPresentationCondition$annotations", "getPresentation$annotations", "getPresentation", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;", "setPresentation", "(Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;)V", "getBackgroundColorHex$annotations", "getBackgroundColorHex", "getDarkBackgroundColorHex$annotations", "getDarkBackgroundColorHex", "get_products$annotations", "get_productItemsV3$superwall_release$annotations", "get_productItemsV3$superwall_release", "()Ljava/util/List;", "set_productItemsV3$superwall_release", "(Ljava/util/List;)V", "get_productItems$superwall_release$annotations", "get_productItems$superwall_release", "set_productItems$superwall_release", "getProductIds$annotations", "getProductIds", "setProductIds", "getResponseLoadingInfo$annotations", "getResponseLoadingInfo", "()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;", "setResponseLoadingInfo", "(Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;)V", "getWebviewLoadingInfo$annotations", "getWebviewLoadingInfo", "setWebviewLoadingInfo", "getProductsLoadingInfo$annotations", "getProductsLoadingInfo", "setProductsLoadingInfo", "getShimmerLoadingInfo$annotations", "getShimmerLoadingInfo", "setShimmerLoadingInfo", "getProductVariables", "setProductVariables", "getSwProductVariablesTemplate", "setSwProductVariablesTemplate", "getPaywalljsVersion", "setPaywalljsVersion", "()Z", "setFreeTrialAvailable", "(Z)V", "getPresentationSourceType", "setPresentationSourceType", "getFeatureGating$annotations", "getFeatureGating", "()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "setFeatureGating", "(Lcom/superwall/sdk/models/config/FeatureGatingBehavior;)V", "getComputedPropertyRequests$annotations", "getComputedPropertyRequests", "setComputedPropertyRequests", "getLocalNotifications$annotations", "getLocalNotifications", "setLocalNotifications", "getOnDeviceCache$annotations", "getOnDeviceCache", "()Lcom/superwall/sdk/config/models/OnDeviceCaching;", "setOnDeviceCache", "(Lcom/superwall/sdk/config/models/OnDeviceCaching;)V", "getExperiment$annotations", "getExperiment", "()Lcom/superwall/sdk/models/triggers/Experiment;", "setExperiment", "(Lcom/superwall/sdk/models/triggers/Experiment;)V", "getCloseReason$annotations", "getCloseReason", "()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "setCloseReason", "(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;)V", "getState$annotations", "getState", "()Ljava/util/Map;", "setState", "(Ljava/util/Map;)V", "getUrlConfig$annotations", "getUrlConfig", "()Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;", "getCacheKey$annotations", "getCacheKey", "getBuildId$annotations", "getBuildId", "getSurveys$annotations", "getSurveys", "setSurveys", "isScrollEnabled$annotations", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getRerouteBackButton$annotations", "getRerouteBackButton", "()Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;", "getIntroOfferEligibility$annotations", "getIntroOfferEligibility", "()Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;", "playStoreProducts", "getPlayStoreProducts", "stripeProducts", "getStripeProducts", "paddleProducts", "getPaddleProducts", RNConstants.ARG_VALUE, "productItems", "getProductItems", "setProductItems", "products", "getProducts", "backgroundColor", "getBackgroundColor", "()I", "backgroundColor$delegate", "Lkotlin/Lazy;", "darkBackgroundColor", "getDarkBackgroundColor", "()Ljava/lang/Integer;", "darkBackgroundColor$delegate", "update", "", "paywall", "getInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "fromEvent", "Lcom/superwall/sdk/models/events/EventData;", "component1", "component2", "component3", "component4", "component4-24UBhI0", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component14$superwall_release", "component15", "component15$superwall_release", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "copy", "copy-zhR-ERg", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/models/paywall/Paywall;", "equals", "other", "hashCode", "toString", "write$Self", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "LoadingInfo", "Companion", "ToggleMode", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class Paywall implements SerializableEntity {
    private List<ProductItem> _productItems;
    private List<CrossplatformProduct> _productItemsV3;
    private List<ProductItem> _products;

    /* JADX INFO: renamed from: backgroundColor$delegate, reason: from kotlin metadata */
    private final Lazy backgroundColor;
    private final String backgroundColorHex;
    private final String buildId;
    private final String cacheKey;
    private PaywallCloseReason closeReason;
    private List<ComputedPropertyRequest> computedPropertyRequests;

    /* JADX INFO: renamed from: darkBackgroundColor$delegate, reason: from kotlin metadata */
    private final Lazy darkBackgroundColor;
    private final String darkBackgroundColorHex;
    private final String databaseId;
    private final PaywallPresentationStyle expandedPresentationStyle;
    private Experiment experiment;
    private FeatureGatingBehavior featureGating;
    private final String htmlSubstitutions;
    private String identifier;
    private final IntroOfferEligibility introOfferEligibility;
    private boolean isFreeTrialAvailable;
    private final Boolean isScrollEnabled;
    private List<LocalNotification> localNotifications;
    private final String name;
    private OnDeviceCaching onDeviceCache;
    private String paywalljsVersion;
    private PaywallPresentationInfo presentation;
    private final String presentationCondition;
    private final long presentationDelay;
    private String presentationSourceType;
    private final String presentationStyle;
    private List<String> productIds;
    private List<ProductVariable> productVariables;
    private LoadingInfo productsLoadingInfo;
    private final ToggleMode rerouteBackButton;
    private LoadingInfo responseLoadingInfo;
    private LoadingInfo shimmerLoadingInfo;
    private Map<String, ? extends Object> state;
    private List<Survey> surveys;
    private List<ProductVariable> swProductVariablesTemplate;
    private final String url;
    private final PaywallWebviewUrl.Config urlConfig;
    private LoadingInfo webviewLoadingInfo;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, PaywallPresentationStyle.INSTANCE.serializer(), null, null, null, null, new ArrayListSerializer(CrossplatformProductSerializer.INSTANCE), new ArrayListSerializer(ProductItemSerializer.INSTANCE), new ArrayListSerializer(ProductVariableSerializer.INSTANCE), new ArrayListSerializer(ProductVariableSerializer.INSTANCE), null, null, null, null, new ArrayListSerializer(ComputedPropertyRequest$$serializer.INSTANCE), new ArrayListSerializer(LocalNotification$$serializer.INSTANCE), null, null, null, null, new ArrayListSerializer(Survey$$serializer.INSTANCE), null, ToggleMode.INSTANCE.serializer(), IntroOfferEligibility.INSTANCE.serializer()};

    public /* synthetic */ Paywall(int i, String str, String str2, String str3, String str4, String str5, String str6, PaywallPresentationStyle paywallPresentationStyle, long j, String str7, String str8, String str9, List list, List list2, List list3, List list4, String str10, boolean z, String str11, FeatureGatingBehavior featureGatingBehavior, List list5, List list6, OnDeviceCaching onDeviceCaching, PaywallWebviewUrl.Config config, String str12, String str13, List list7, Boolean bool, ToggleMode toggleMode, IntroOfferEligibility introOfferEligibility, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, str3, str4, str5, str6, paywallPresentationStyle, j, str7, str8, str9, list, list2, list3, list4, str10, z, str11, featureGatingBehavior, list5, list6, onDeviceCaching, config, str12, str13, list7, bool, toggleMode, introOfferEligibility, serializationConstructorMarker);
    }

    public /* synthetic */ Paywall(String str, String str2, String str3, String str4, String str5, String str6, PaywallPresentationStyle paywallPresentationStyle, long j, String str7, PaywallPresentationInfo paywallPresentationInfo, String str8, String str9, List list, List list2, List list3, List list4, LoadingInfo loadingInfo, LoadingInfo loadingInfo2, LoadingInfo loadingInfo3, LoadingInfo loadingInfo4, List list5, List list6, String str10, boolean z, String str11, FeatureGatingBehavior featureGatingBehavior, List list7, List list8, OnDeviceCaching onDeviceCaching, Experiment experiment, PaywallCloseReason paywallCloseReason, Map map, PaywallWebviewUrl.Config config, String str12, String str13, List list9, Boolean bool, ToggleMode toggleMode, IntroOfferEligibility introOfferEligibility, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, paywallPresentationStyle, j, str7, paywallPresentationInfo, str8, str9, list, list2, list3, list4, loadingInfo, loadingInfo2, loadingInfo3, loadingInfo4, list5, list6, str10, z, str11, featureGatingBehavior, list7, list8, onDeviceCaching, experiment, paywallCloseReason, map, config, str12, str13, list9, bool, toggleMode, introOfferEligibility);
    }

    private final List<ProductItem> component13() {
        return this._products;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    private final String getPresentationStyle() {
        return this.presentationStyle;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    private final PaywallPresentationStyle getExpandedPresentationStyle() {
        return this.expandedPresentationStyle;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    private final long getPresentationDelay() {
        return this.presentationDelay;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    private final String getPresentationCondition() {
        return this.presentationCondition;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-zhR-ERg$default, reason: not valid java name */
    public static /* synthetic */ Paywall m10657copyzhRERg$default(Paywall paywall, String str, String str2, String str3, String str4, String str5, String str6, PaywallPresentationStyle paywallPresentationStyle, long j, String str7, PaywallPresentationInfo paywallPresentationInfo, String str8, String str9, List list, List list2, List list3, List list4, LoadingInfo loadingInfo, LoadingInfo loadingInfo2, LoadingInfo loadingInfo3, LoadingInfo loadingInfo4, List list5, List list6, String str10, boolean z, String str11, FeatureGatingBehavior featureGatingBehavior, List list7, List list8, OnDeviceCaching onDeviceCaching, Experiment experiment, PaywallCloseReason paywallCloseReason, Map map, PaywallWebviewUrl.Config config, String str12, String str13, List list9, Boolean bool, ToggleMode toggleMode, IntroOfferEligibility introOfferEligibility, int i, int i2, Object obj) {
        IntroOfferEligibility introOfferEligibility2;
        ToggleMode toggleMode2;
        String str14 = (i & 1) != 0 ? paywall.databaseId : str;
        String str15 = (i & 2) != 0 ? paywall.identifier : str2;
        String str16 = (i & 4) != 0 ? paywall.name : str3;
        String str17 = (i & 8) != 0 ? paywall.url : str4;
        String str18 = (i & 16) != 0 ? paywall.htmlSubstitutions : str5;
        String str19 = (i & 32) != 0 ? paywall.presentationStyle : str6;
        PaywallPresentationStyle paywallPresentationStyle2 = (i & 64) != 0 ? paywall.expandedPresentationStyle : paywallPresentationStyle;
        long j2 = (i & 128) != 0 ? paywall.presentationDelay : j;
        String str20 = (i & 256) != 0 ? paywall.presentationCondition : str7;
        PaywallPresentationInfo paywallPresentationInfo2 = (i & 512) != 0 ? paywall.presentation : paywallPresentationInfo;
        String str21 = (i & 1024) != 0 ? paywall.backgroundColorHex : str8;
        String str22 = (i & 2048) != 0 ? paywall.darkBackgroundColorHex : str9;
        List list10 = (i & 4096) != 0 ? paywall._products : list;
        String str23 = str14;
        List list11 = (i & 8192) != 0 ? paywall._productItemsV3 : list2;
        List list12 = (i & 16384) != 0 ? paywall._productItems : list3;
        List list13 = (i & 32768) != 0 ? paywall.productIds : list4;
        LoadingInfo loadingInfo5 = (i & 65536) != 0 ? paywall.responseLoadingInfo : loadingInfo;
        LoadingInfo loadingInfo6 = (i & 131072) != 0 ? paywall.webviewLoadingInfo : loadingInfo2;
        LoadingInfo loadingInfo7 = (i & 262144) != 0 ? paywall.productsLoadingInfo : loadingInfo3;
        LoadingInfo loadingInfo8 = (i & 524288) != 0 ? paywall.shimmerLoadingInfo : loadingInfo4;
        List list14 = (i & 1048576) != 0 ? paywall.productVariables : list5;
        List list15 = (i & 2097152) != 0 ? paywall.swProductVariablesTemplate : list6;
        String str24 = (i & 4194304) != 0 ? paywall.paywalljsVersion : str10;
        boolean z2 = (i & 8388608) != 0 ? paywall.isFreeTrialAvailable : z;
        String str25 = (i & 16777216) != 0 ? paywall.presentationSourceType : str11;
        FeatureGatingBehavior featureGatingBehavior2 = (i & 33554432) != 0 ? paywall.featureGating : featureGatingBehavior;
        List list16 = (i & 67108864) != 0 ? paywall.computedPropertyRequests : list7;
        List list17 = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? paywall.localNotifications : list8;
        OnDeviceCaching onDeviceCaching2 = (i & 268435456) != 0 ? paywall.onDeviceCache : onDeviceCaching;
        Experiment experiment2 = (i & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? paywall.experiment : experiment;
        PaywallCloseReason paywallCloseReason2 = (i & 1073741824) != 0 ? paywall.closeReason : paywallCloseReason;
        Map map2 = (i & Integer.MIN_VALUE) != 0 ? paywall.state : map;
        PaywallWebviewUrl.Config config2 = (i2 & 1) != 0 ? paywall.urlConfig : config;
        String str26 = (i2 & 2) != 0 ? paywall.cacheKey : str12;
        String str27 = (i2 & 4) != 0 ? paywall.buildId : str13;
        List list18 = (i2 & 8) != 0 ? paywall.surveys : list9;
        Boolean bool2 = (i2 & 16) != 0 ? paywall.isScrollEnabled : bool;
        ToggleMode toggleMode3 = (i2 & 32) != 0 ? paywall.rerouteBackButton : toggleMode;
        if ((i2 & 64) != 0) {
            toggleMode2 = toggleMode3;
            introOfferEligibility2 = paywall.introOfferEligibility;
        } else {
            introOfferEligibility2 = introOfferEligibility;
            toggleMode2 = toggleMode3;
        }
        return paywall.m10660copyzhRERg(str23, str15, str16, str17, str18, str19, paywallPresentationStyle2, j2, str20, paywallPresentationInfo2, str21, str22, list10, list11, list12, list13, loadingInfo5, loadingInfo6, loadingInfo7, loadingInfo8, list14, list15, str24, z2, str25, featureGatingBehavior2, list16, list17, onDeviceCaching2, experiment2, paywallCloseReason2, map2, config2, str26, str27, list18, bool2, toggleMode2, introOfferEligibility2);
    }

    @SerialName("background_color_hex")
    public static /* synthetic */ void getBackgroundColorHex$annotations() {
    }

    @SerialName("build_id")
    @Serializable
    public static /* synthetic */ void getBuildId$annotations() {
    }

    @SerialName("cache_key")
    @Serializable
    public static /* synthetic */ void getCacheKey$annotations() {
    }

    @Transient
    public static /* synthetic */ void getCloseReason$annotations() {
    }

    @SerialName("computed_properties")
    public static /* synthetic */ void getComputedPropertyRequests$annotations() {
    }

    @SerialName("dark_background_color_hex")
    public static /* synthetic */ void getDarkBackgroundColorHex$annotations() {
    }

    @SerialName("id")
    public static /* synthetic */ void getDatabaseId$annotations() {
    }

    @SerialName("presentation_style_v3")
    private static /* synthetic */ void getExpandedPresentationStyle$annotations() {
    }

    @Transient
    public static /* synthetic */ void getExperiment$annotations() {
    }

    @SerialName("feature_gating")
    public static /* synthetic */ void getFeatureGating$annotations() {
    }

    @SerialName("paywalljs_event")
    public static /* synthetic */ void getHtmlSubstitutions$annotations() {
    }

    @SerialName(NotificationsService.IDENTIFIER_KEY)
    public static /* synthetic */ void getIdentifier$annotations() {
    }

    @SerialName("intro_offer_eligibility")
    public static /* synthetic */ void getIntroOfferEligibility$annotations() {
    }

    @SerialName("local_notifications")
    public static /* synthetic */ void getLocalNotifications$annotations() {
    }

    @SerialName("name")
    public static /* synthetic */ void getName$annotations() {
    }

    @SerialName("on_device_cache")
    public static /* synthetic */ void getOnDeviceCache$annotations() {
    }

    @Transient
    public static /* synthetic */ void getPresentation$annotations() {
    }

    @SerialName("presentation_condition")
    private static /* synthetic */ void getPresentationCondition$annotations() {
    }

    @SerialName("presentation_delay")
    private static /* synthetic */ void getPresentationDelay$annotations() {
    }

    @SerialName("presentation_style_v2")
    private static /* synthetic */ void getPresentationStyle$annotations() {
    }

    @Transient
    public static /* synthetic */ void getProductIds$annotations() {
    }

    @Transient
    public static /* synthetic */ void getProductsLoadingInfo$annotations() {
    }

    @SerialName("reroute_back_button")
    public static /* synthetic */ void getRerouteBackButton$annotations() {
    }

    @Transient
    public static /* synthetic */ void getResponseLoadingInfo$annotations() {
    }

    @Transient
    public static /* synthetic */ void getShimmerLoadingInfo$annotations() {
    }

    @Transient
    public static /* synthetic */ void getState$annotations() {
    }

    @SerialName("surveys")
    public static /* synthetic */ void getSurveys$annotations() {
    }

    @SerialName(ImagesContract.URL)
    /* JADX INFO: renamed from: getUrl-24UBhI0$annotations, reason: not valid java name */
    public static /* synthetic */ void m10658getUrl24UBhI0$annotations() {
    }

    @SerialName("url_config")
    public static /* synthetic */ void getUrlConfig$annotations() {
    }

    @Transient
    public static /* synthetic */ void getWebviewLoadingInfo$annotations() {
    }

    @SerialName("products_v2")
    public static /* synthetic */ void get_productItems$superwall_release$annotations() {
    }

    @SerialName("products_v3")
    public static /* synthetic */ void get_productItemsV3$superwall_release$annotations() {
    }

    @Transient
    private static /* synthetic */ void get_products$annotations() {
    }

    @SerialName("is_scroll_enabled")
    public static /* synthetic */ void isScrollEnabled$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDatabaseId() {
        return this.databaseId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final PaywallPresentationInfo getPresentation() {
        return this.presentation;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getBackgroundColorHex() {
        return this.backgroundColorHex;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getDarkBackgroundColorHex() {
        return this.darkBackgroundColorHex;
    }

    public final List<CrossplatformProduct> component14$superwall_release() {
        return this._productItemsV3;
    }

    public final List<ProductItem> component15$superwall_release() {
        return this._productItems;
    }

    public final List<String> component16() {
        return this.productIds;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final LoadingInfo getResponseLoadingInfo() {
        return this.responseLoadingInfo;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final LoadingInfo getWebviewLoadingInfo() {
        return this.webviewLoadingInfo;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final LoadingInfo getProductsLoadingInfo() {
        return this.productsLoadingInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIdentifier() {
        return this.identifier;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final LoadingInfo getShimmerLoadingInfo() {
        return this.shimmerLoadingInfo;
    }

    public final List<ProductVariable> component21() {
        return this.productVariables;
    }

    public final List<ProductVariable> component22() {
        return this.swProductVariablesTemplate;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getPaywalljsVersion() {
        return this.paywalljsVersion;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final boolean getIsFreeTrialAvailable() {
        return this.isFreeTrialAvailable;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getPresentationSourceType() {
        return this.presentationSourceType;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final FeatureGatingBehavior getFeatureGating() {
        return this.featureGating;
    }

    public final List<ComputedPropertyRequest> component27() {
        return this.computedPropertyRequests;
    }

    public final List<LocalNotification> component28() {
        return this.localNotifications;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final OnDeviceCaching getOnDeviceCache() {
        return this.onDeviceCache;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final Experiment getExperiment() {
        return this.experiment;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final PaywallCloseReason getCloseReason() {
        return this.closeReason;
    }

    public final Map<String, Object> component32() {
        return this.state;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final PaywallWebviewUrl.Config getUrlConfig() {
        return this.urlConfig;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final String getCacheKey() {
        return this.cacheKey;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final String getBuildId() {
        return this.buildId;
    }

    public final List<Survey> component36() {
        return this.surveys;
    }

    /* JADX INFO: renamed from: component37, reason: from getter */
    public final Boolean getIsScrollEnabled() {
        return this.isScrollEnabled;
    }

    /* JADX INFO: renamed from: component38, reason: from getter */
    public final ToggleMode getRerouteBackButton() {
        return this.rerouteBackButton;
    }

    /* JADX INFO: renamed from: component39, reason: from getter */
    public final IntroOfferEligibility getIntroOfferEligibility() {
        return this.introOfferEligibility;
    }

    /* JADX INFO: renamed from: component4-24UBhI0, reason: not valid java name and from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getHtmlSubstitutions() {
        return this.htmlSubstitutions;
    }

    /* JADX INFO: renamed from: copy-zhR-ERg, reason: not valid java name */
    public final Paywall m10660copyzhRERg(String databaseId, String identifier, String name, String url, String htmlSubstitutions, String presentationStyle, PaywallPresentationStyle expandedPresentationStyle, long presentationDelay, String presentationCondition, PaywallPresentationInfo presentation, String backgroundColorHex, String darkBackgroundColorHex, List<ProductItem> _products, List<CrossplatformProduct> _productItemsV3, List<ProductItem> _productItems, List<String> productIds, LoadingInfo responseLoadingInfo, LoadingInfo webviewLoadingInfo, LoadingInfo productsLoadingInfo, LoadingInfo shimmerLoadingInfo, List<ProductVariable> productVariables, List<ProductVariable> swProductVariablesTemplate, String paywalljsVersion, boolean isFreeTrialAvailable, String presentationSourceType, FeatureGatingBehavior featureGating, List<ComputedPropertyRequest> computedPropertyRequests, List<LocalNotification> localNotifications, OnDeviceCaching onDeviceCache, Experiment experiment, PaywallCloseReason closeReason, Map<String, ? extends Object> state, PaywallWebviewUrl.Config urlConfig, String cacheKey, String buildId, List<Survey> surveys, Boolean isScrollEnabled, ToggleMode rerouteBackButton, IntroOfferEligibility introOfferEligibility) {
        Intrinsics.checkNotNullParameter(databaseId, "databaseId");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(htmlSubstitutions, "htmlSubstitutions");
        Intrinsics.checkNotNullParameter(presentationCondition, "presentationCondition");
        Intrinsics.checkNotNullParameter(presentation, "presentation");
        Intrinsics.checkNotNullParameter(backgroundColorHex, "backgroundColorHex");
        Intrinsics.checkNotNullParameter(_products, "_products");
        Intrinsics.checkNotNullParameter(_productItemsV3, "_productItemsV3");
        Intrinsics.checkNotNullParameter(_productItems, "_productItems");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        Intrinsics.checkNotNullParameter(responseLoadingInfo, "responseLoadingInfo");
        Intrinsics.checkNotNullParameter(webviewLoadingInfo, "webviewLoadingInfo");
        Intrinsics.checkNotNullParameter(productsLoadingInfo, "productsLoadingInfo");
        Intrinsics.checkNotNullParameter(shimmerLoadingInfo, "shimmerLoadingInfo");
        Intrinsics.checkNotNullParameter(featureGating, "featureGating");
        Intrinsics.checkNotNullParameter(computedPropertyRequests, "computedPropertyRequests");
        Intrinsics.checkNotNullParameter(localNotifications, "localNotifications");
        Intrinsics.checkNotNullParameter(onDeviceCache, "onDeviceCache");
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        Intrinsics.checkNotNullParameter(buildId, "buildId");
        Intrinsics.checkNotNullParameter(surveys, "surveys");
        Intrinsics.checkNotNullParameter(introOfferEligibility, "introOfferEligibility");
        return new Paywall(databaseId, identifier, name, url, htmlSubstitutions, presentationStyle, expandedPresentationStyle, presentationDelay, presentationCondition, presentation, backgroundColorHex, darkBackgroundColorHex, _products, _productItemsV3, _productItems, productIds, responseLoadingInfo, webviewLoadingInfo, productsLoadingInfo, shimmerLoadingInfo, productVariables, swProductVariablesTemplate, paywalljsVersion, isFreeTrialAvailable, presentationSourceType, featureGating, computedPropertyRequests, localNotifications, onDeviceCache, experiment, closeReason, state, urlConfig, cacheKey, buildId, surveys, isScrollEnabled, rerouteBackButton, introOfferEligibility, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Paywall)) {
            return false;
        }
        Paywall paywall = (Paywall) other;
        return Intrinsics.areEqual(this.databaseId, paywall.databaseId) && Intrinsics.areEqual(this.identifier, paywall.identifier) && Intrinsics.areEqual(this.name, paywall.name) && PaywallURL.m10665equalsimpl0(this.url, paywall.url) && Intrinsics.areEqual(this.htmlSubstitutions, paywall.htmlSubstitutions) && Intrinsics.areEqual(this.presentationStyle, paywall.presentationStyle) && Intrinsics.areEqual(this.expandedPresentationStyle, paywall.expandedPresentationStyle) && this.presentationDelay == paywall.presentationDelay && Intrinsics.areEqual(this.presentationCondition, paywall.presentationCondition) && Intrinsics.areEqual(this.presentation, paywall.presentation) && Intrinsics.areEqual(this.backgroundColorHex, paywall.backgroundColorHex) && Intrinsics.areEqual(this.darkBackgroundColorHex, paywall.darkBackgroundColorHex) && Intrinsics.areEqual(this._products, paywall._products) && Intrinsics.areEqual(this._productItemsV3, paywall._productItemsV3) && Intrinsics.areEqual(this._productItems, paywall._productItems) && Intrinsics.areEqual(this.productIds, paywall.productIds) && Intrinsics.areEqual(this.responseLoadingInfo, paywall.responseLoadingInfo) && Intrinsics.areEqual(this.webviewLoadingInfo, paywall.webviewLoadingInfo) && Intrinsics.areEqual(this.productsLoadingInfo, paywall.productsLoadingInfo) && Intrinsics.areEqual(this.shimmerLoadingInfo, paywall.shimmerLoadingInfo) && Intrinsics.areEqual(this.productVariables, paywall.productVariables) && Intrinsics.areEqual(this.swProductVariablesTemplate, paywall.swProductVariablesTemplate) && Intrinsics.areEqual(this.paywalljsVersion, paywall.paywalljsVersion) && this.isFreeTrialAvailable == paywall.isFreeTrialAvailable && Intrinsics.areEqual(this.presentationSourceType, paywall.presentationSourceType) && Intrinsics.areEqual(this.featureGating, paywall.featureGating) && Intrinsics.areEqual(this.computedPropertyRequests, paywall.computedPropertyRequests) && Intrinsics.areEqual(this.localNotifications, paywall.localNotifications) && Intrinsics.areEqual(this.onDeviceCache, paywall.onDeviceCache) && Intrinsics.areEqual(this.experiment, paywall.experiment) && Intrinsics.areEqual(this.closeReason, paywall.closeReason) && Intrinsics.areEqual(this.state, paywall.state) && Intrinsics.areEqual(this.urlConfig, paywall.urlConfig) && Intrinsics.areEqual(this.cacheKey, paywall.cacheKey) && Intrinsics.areEqual(this.buildId, paywall.buildId) && Intrinsics.areEqual(this.surveys, paywall.surveys) && Intrinsics.areEqual(this.isScrollEnabled, paywall.isScrollEnabled) && this.rerouteBackButton == paywall.rerouteBackButton && this.introOfferEligibility == paywall.introOfferEligibility;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.databaseId.hashCode() * 31) + this.identifier.hashCode()) * 31) + this.name.hashCode()) * 31) + PaywallURL.m10666hashCodeimpl(this.url)) * 31) + this.htmlSubstitutions.hashCode()) * 31;
        String str = this.presentationStyle;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        PaywallPresentationStyle paywallPresentationStyle = this.expandedPresentationStyle;
        int iHashCode3 = (((((((((iHashCode2 + (paywallPresentationStyle == null ? 0 : paywallPresentationStyle.hashCode())) * 31) + Long.hashCode(this.presentationDelay)) * 31) + this.presentationCondition.hashCode()) * 31) + this.presentation.hashCode()) * 31) + this.backgroundColorHex.hashCode()) * 31;
        String str2 = this.darkBackgroundColorHex;
        int iHashCode4 = (((((((((((((((((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this._products.hashCode()) * 31) + this._productItemsV3.hashCode()) * 31) + this._productItems.hashCode()) * 31) + this.productIds.hashCode()) * 31) + this.responseLoadingInfo.hashCode()) * 31) + this.webviewLoadingInfo.hashCode()) * 31) + this.productsLoadingInfo.hashCode()) * 31) + this.shimmerLoadingInfo.hashCode()) * 31;
        List<ProductVariable> list = this.productVariables;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        List<ProductVariable> list2 = this.swProductVariablesTemplate;
        int iHashCode6 = (iHashCode5 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str3 = this.paywalljsVersion;
        int iHashCode7 = (((iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31) + Boolean.hashCode(this.isFreeTrialAvailable)) * 31;
        String str4 = this.presentationSourceType;
        int iHashCode8 = (((((((((iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.featureGating.hashCode()) * 31) + this.computedPropertyRequests.hashCode()) * 31) + this.localNotifications.hashCode()) * 31) + this.onDeviceCache.hashCode()) * 31;
        Experiment experiment = this.experiment;
        int iHashCode9 = (((((iHashCode8 + (experiment == null ? 0 : experiment.hashCode())) * 31) + this.closeReason.hashCode()) * 31) + this.state.hashCode()) * 31;
        PaywallWebviewUrl.Config config = this.urlConfig;
        int iHashCode10 = (((((((iHashCode9 + (config == null ? 0 : config.hashCode())) * 31) + this.cacheKey.hashCode()) * 31) + this.buildId.hashCode()) * 31) + this.surveys.hashCode()) * 31;
        Boolean bool = this.isScrollEnabled;
        int iHashCode11 = (iHashCode10 + (bool == null ? 0 : bool.hashCode())) * 31;
        ToggleMode toggleMode = this.rerouteBackButton;
        return ((iHashCode11 + (toggleMode != null ? toggleMode.hashCode() : 0)) * 31) + this.introOfferEligibility.hashCode();
    }

    public String toString() {
        return "Paywall(databaseId=" + this.databaseId + ", identifier=" + this.identifier + ", name=" + this.name + ", url=" + PaywallURL.m10667toStringimpl(this.url) + ", htmlSubstitutions=" + this.htmlSubstitutions + ", presentationStyle=" + this.presentationStyle + ", expandedPresentationStyle=" + this.expandedPresentationStyle + ", presentationDelay=" + this.presentationDelay + ", presentationCondition=" + this.presentationCondition + ", presentation=" + this.presentation + ", backgroundColorHex=" + this.backgroundColorHex + ", darkBackgroundColorHex=" + this.darkBackgroundColorHex + ", _products=" + this._products + ", _productItemsV3=" + this._productItemsV3 + ", _productItems=" + this._productItems + ", productIds=" + this.productIds + ", responseLoadingInfo=" + this.responseLoadingInfo + ", webviewLoadingInfo=" + this.webviewLoadingInfo + ", productsLoadingInfo=" + this.productsLoadingInfo + ", shimmerLoadingInfo=" + this.shimmerLoadingInfo + ", productVariables=" + this.productVariables + ", swProductVariablesTemplate=" + this.swProductVariablesTemplate + ", paywalljsVersion=" + this.paywalljsVersion + ", isFreeTrialAvailable=" + this.isFreeTrialAvailable + ", presentationSourceType=" + this.presentationSourceType + ", featureGating=" + this.featureGating + ", computedPropertyRequests=" + this.computedPropertyRequests + ", localNotifications=" + this.localNotifications + ", onDeviceCache=" + this.onDeviceCache + ", experiment=" + this.experiment + ", closeReason=" + this.closeReason + ", state=" + this.state + ", urlConfig=" + this.urlConfig + ", cacheKey=" + this.cacheKey + ", buildId=" + this.buildId + ", surveys=" + this.surveys + ", isScrollEnabled=" + this.isScrollEnabled + ", rerouteBackButton=" + this.rerouteBackButton + ", introOfferEligibility=" + this.introOfferEligibility + ")";
    }

    private /* synthetic */ Paywall(int i, String str, String str2, String str3, String str4, String str5, String str6, PaywallPresentationStyle paywallPresentationStyle, long j, String str7, String str8, String str9, List list, List list2, List list3, List list4, String str10, boolean z, String str11, FeatureGatingBehavior featureGatingBehavior, List list5, List list6, OnDeviceCaching onDeviceCaching, PaywallWebviewUrl.Config config, String str12, String str13, List list7, Boolean bool, ToggleMode toggleMode, IntroOfferEligibility introOfferEligibility, SerializationConstructorMarker serializationConstructorMarker) {
        PaywallPresentationStyle paywallPresentationStyle2 = paywallPresentationStyle;
        if (25166847 != (i & 25166847)) {
            PluginExceptionsKt.throwMissingFieldException(i, 25166847, Paywall$$serializer.INSTANCE.getDescriptor());
        }
        this.databaseId = str;
        this.identifier = str2;
        this.name = str3;
        this.url = str4;
        this.htmlSubstitutions = str5;
        this.presentationStyle = str6;
        this.expandedPresentationStyle = paywallPresentationStyle2;
        this.presentationDelay = j;
        this.presentationCondition = str7;
        if (paywallPresentationStyle2 == null) {
            PaywallPresentationStyle.None none = PaywallPresentationStyle.None.INSTANCE;
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallPresentation, "Unknown or unsupported presentation style: " + str6, null, null, 24, null);
            paywallPresentationStyle2 = none;
        }
        this.presentation = new PaywallPresentationInfo(paywallPresentationStyle2, j);
        this.backgroundColorHex = str8;
        if ((i & 1024) == 0) {
            this.darkBackgroundColorHex = null;
        } else {
            this.darkBackgroundColorHex = str9;
        }
        this._products = CollectionsKt.emptyList();
        this._productItemsV3 = (i & 2048) == 0 ? CollectionsKt.emptyList() : list;
        this._productItems = (i & 4096) == 0 ? CollectionsKt.emptyList() : list2;
        List<ProductItem> list8 = this._productItems;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list8, 10));
        Iterator<T> it = list8.iterator();
        while (it.hasNext()) {
            arrayList.add(((ProductItem) it.next()).getCompositeId());
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            List<CrossplatformProduct> list9 = this._productItemsV3;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list9, 10));
            Iterator<T> it2 = list9.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((CrossplatformProduct) it2.next()).getFullProductId());
            }
            arrayList2 = arrayList3;
        }
        this.productIds = arrayList2;
        int i2 = 7;
        DefaultConstructorMarker defaultConstructorMarker = null;
        Date date = null;
        Date date2 = null;
        Date date3 = null;
        this.responseLoadingInfo = new LoadingInfo(date, date2, date3, i2, defaultConstructorMarker);
        this.webviewLoadingInfo = new LoadingInfo(date, date2, date3, i2, defaultConstructorMarker);
        this.productsLoadingInfo = new LoadingInfo(date, date2, date3, i2, defaultConstructorMarker);
        this.shimmerLoadingInfo = new LoadingInfo(date, date2, date3, i2, defaultConstructorMarker);
        if ((i & 8192) == 0) {
            this.productVariables = null;
        } else {
            this.productVariables = list3;
        }
        if ((i & 16384) == 0) {
            this.swProductVariablesTemplate = null;
        } else {
            this.swProductVariablesTemplate = list4;
        }
        if ((32768 & i) == 0) {
            this.paywalljsVersion = null;
        } else {
            this.paywalljsVersion = str10;
        }
        this.isFreeTrialAvailable = (65536 & i) == 0 ? false : z;
        if ((131072 & i) == 0) {
            this.presentationSourceType = null;
        } else {
            this.presentationSourceType = str11;
        }
        this.featureGating = (262144 & i) == 0 ? FeatureGatingBehavior.NonGated.INSTANCE : featureGatingBehavior;
        this.computedPropertyRequests = (524288 & i) == 0 ? CollectionsKt.emptyList() : list5;
        this.localNotifications = (1048576 & i) == 0 ? CollectionsKt.emptyList() : list6;
        this.onDeviceCache = (2097152 & i) == 0 ? OnDeviceCaching.Disabled.INSTANCE : onDeviceCaching;
        this.experiment = null;
        this.closeReason = PaywallCloseReason.None.INSTANCE;
        this.state = MapsKt.emptyMap();
        if ((4194304 & i) == 0) {
            this.urlConfig = null;
        } else {
            this.urlConfig = config;
        }
        this.cacheKey = str12;
        this.buildId = str13;
        this.surveys = (33554432 & i) == 0 ? CollectionsKt.emptyList() : list7;
        this.isScrollEnabled = (67108864 & i) == 0 ? true : bool;
        if ((134217728 & i) == 0) {
            this.rerouteBackButton = null;
        } else {
            this.rerouteBackButton = toggleMode;
        }
        this.introOfferEligibility = (i & 268435456) == 0 ? IntroOfferEligibility.AUTOMATIC : introOfferEligibility;
        this.backgroundColor = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.models.paywall.Paywall$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(Paywall._init_$lambda$18(this.f$0));
            }
        });
        this.darkBackgroundColor = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.models.paywall.Paywall$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Paywall._init_$lambda$19(this.f$0);
            }
        });
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(Paywall self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.databaseId);
        output.encodeStringElement(serialDesc, 1, self.identifier);
        output.encodeStringElement(serialDesc, 2, self.name);
        output.encodeSerializableElement(serialDesc, 3, PaywallURL$$serializer.INSTANCE, PaywallURL.m10662boximpl(self.url));
        output.encodeStringElement(serialDesc, 4, self.htmlSubstitutions);
        output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.presentationStyle);
        output.encodeNullableSerializableElement(serialDesc, 6, kSerializerArr[6], self.expandedPresentationStyle);
        output.encodeLongElement(serialDesc, 7, self.presentationDelay);
        output.encodeStringElement(serialDesc, 8, self.presentationCondition);
        output.encodeStringElement(serialDesc, 9, self.backgroundColorHex);
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.darkBackgroundColorHex != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, StringSerializer.INSTANCE, self.darkBackgroundColorHex);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || !Intrinsics.areEqual(self._productItemsV3, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 11, kSerializerArr[11], self._productItemsV3);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 12) || !Intrinsics.areEqual(self._productItems, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 12, kSerializerArr[12], self._productItems);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 13) || self.productVariables != null) {
            output.encodeNullableSerializableElement(serialDesc, 13, kSerializerArr[13], self.productVariables);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 14) || self.swProductVariablesTemplate != null) {
            output.encodeNullableSerializableElement(serialDesc, 14, kSerializerArr[14], self.swProductVariablesTemplate);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 15) || self.paywalljsVersion != null) {
            output.encodeNullableSerializableElement(serialDesc, 15, StringSerializer.INSTANCE, self.paywalljsVersion);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 16) || self.isFreeTrialAvailable) {
            output.encodeBooleanElement(serialDesc, 16, self.isFreeTrialAvailable);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 17) || self.presentationSourceType != null) {
            output.encodeNullableSerializableElement(serialDesc, 17, StringSerializer.INSTANCE, self.presentationSourceType);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 18) || !Intrinsics.areEqual(self.featureGating, FeatureGatingBehavior.NonGated.INSTANCE)) {
            output.encodeSerializableElement(serialDesc, 18, FeatureGatingBehaviorSerializer.INSTANCE, self.featureGating);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 19) || !Intrinsics.areEqual(self.computedPropertyRequests, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 19, kSerializerArr[19], self.computedPropertyRequests);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 20) || !Intrinsics.areEqual(self.localNotifications, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 20, kSerializerArr[20], self.localNotifications);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 21) || !Intrinsics.areEqual(self.onDeviceCache, OnDeviceCaching.Disabled.INSTANCE)) {
            output.encodeSerializableElement(serialDesc, 21, OnDeviceCachingSerializer.INSTANCE, self.onDeviceCache);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 22) || self.urlConfig != null) {
            output.encodeNullableSerializableElement(serialDesc, 22, PaywallWebviewUrl$Config$$serializer.INSTANCE, self.urlConfig);
        }
        output.encodeStringElement(serialDesc, 23, self.cacheKey);
        output.encodeStringElement(serialDesc, 24, self.buildId);
        if (output.shouldEncodeElementDefault(serialDesc, 25) || !Intrinsics.areEqual(self.surveys, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 25, kSerializerArr[25], self.surveys);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 26) || !Intrinsics.areEqual((Object) self.isScrollEnabled, (Object) true)) {
            output.encodeNullableSerializableElement(serialDesc, 26, BooleanSerializer.INSTANCE, self.isScrollEnabled);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 27) || self.rerouteBackButton != null) {
            output.encodeNullableSerializableElement(serialDesc, 27, kSerializerArr[27], self.rerouteBackButton);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 28) && self.introOfferEligibility == IntroOfferEligibility.AUTOMATIC) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 28, kSerializerArr[28], self.introOfferEligibility);
    }

    private Paywall(String databaseId, String identifier, String name, String url, String htmlSubstitutions, String str, PaywallPresentationStyle paywallPresentationStyle, long j, String presentationCondition, PaywallPresentationInfo presentation, String backgroundColorHex, String str2, List<ProductItem> _products, List<CrossplatformProduct> _productItemsV3, List<ProductItem> _productItems, List<String> productIds, LoadingInfo responseLoadingInfo, LoadingInfo webviewLoadingInfo, LoadingInfo productsLoadingInfo, LoadingInfo shimmerLoadingInfo, List<ProductVariable> list, List<ProductVariable> list2, String str3, boolean z, String str4, FeatureGatingBehavior featureGating, List<ComputedPropertyRequest> computedPropertyRequests, List<LocalNotification> localNotifications, OnDeviceCaching onDeviceCache, Experiment experiment, PaywallCloseReason closeReason, Map<String, ? extends Object> state, PaywallWebviewUrl.Config config, String cacheKey, String buildId, List<Survey> surveys, Boolean bool, ToggleMode toggleMode, IntroOfferEligibility introOfferEligibility) {
        Intrinsics.checkNotNullParameter(databaseId, "databaseId");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(htmlSubstitutions, "htmlSubstitutions");
        Intrinsics.checkNotNullParameter(presentationCondition, "presentationCondition");
        Intrinsics.checkNotNullParameter(presentation, "presentation");
        Intrinsics.checkNotNullParameter(backgroundColorHex, "backgroundColorHex");
        Intrinsics.checkNotNullParameter(_products, "_products");
        Intrinsics.checkNotNullParameter(_productItemsV3, "_productItemsV3");
        Intrinsics.checkNotNullParameter(_productItems, "_productItems");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        Intrinsics.checkNotNullParameter(responseLoadingInfo, "responseLoadingInfo");
        Intrinsics.checkNotNullParameter(webviewLoadingInfo, "webviewLoadingInfo");
        Intrinsics.checkNotNullParameter(productsLoadingInfo, "productsLoadingInfo");
        Intrinsics.checkNotNullParameter(shimmerLoadingInfo, "shimmerLoadingInfo");
        Intrinsics.checkNotNullParameter(featureGating, "featureGating");
        Intrinsics.checkNotNullParameter(computedPropertyRequests, "computedPropertyRequests");
        Intrinsics.checkNotNullParameter(localNotifications, "localNotifications");
        Intrinsics.checkNotNullParameter(onDeviceCache, "onDeviceCache");
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        Intrinsics.checkNotNullParameter(buildId, "buildId");
        Intrinsics.checkNotNullParameter(surveys, "surveys");
        Intrinsics.checkNotNullParameter(introOfferEligibility, "introOfferEligibility");
        this.databaseId = databaseId;
        this.identifier = identifier;
        this.name = name;
        this.url = url;
        this.htmlSubstitutions = htmlSubstitutions;
        this.presentationStyle = str;
        this.expandedPresentationStyle = paywallPresentationStyle;
        this.presentationDelay = j;
        this.presentationCondition = presentationCondition;
        this.presentation = presentation;
        this.backgroundColorHex = backgroundColorHex;
        this.darkBackgroundColorHex = str2;
        this._products = _products;
        this._productItemsV3 = _productItemsV3;
        this._productItems = _productItems;
        this.productIds = productIds;
        this.responseLoadingInfo = responseLoadingInfo;
        this.webviewLoadingInfo = webviewLoadingInfo;
        this.productsLoadingInfo = productsLoadingInfo;
        this.shimmerLoadingInfo = shimmerLoadingInfo;
        this.productVariables = list;
        this.swProductVariablesTemplate = list2;
        this.paywalljsVersion = str3;
        this.isFreeTrialAvailable = z;
        this.presentationSourceType = str4;
        this.featureGating = featureGating;
        this.computedPropertyRequests = computedPropertyRequests;
        this.localNotifications = localNotifications;
        this.onDeviceCache = onDeviceCache;
        this.experiment = experiment;
        this.closeReason = closeReason;
        this.state = state;
        this.urlConfig = config;
        this.cacheKey = cacheKey;
        this.buildId = buildId;
        this.surveys = surveys;
        this.isScrollEnabled = bool;
        this.rerouteBackButton = toggleMode;
        this.introOfferEligibility = introOfferEligibility;
        this.backgroundColor = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.models.paywall.Paywall$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(Paywall.backgroundColor_delegate$lambda$12(this.f$0));
            }
        });
        this.darkBackgroundColor = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.models.paywall.Paywall$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Paywall.darkBackgroundColor_delegate$lambda$13(this.f$0);
            }
        });
    }

    public final String getDatabaseId() {
        return this.databaseId;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final void setIdentifier(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.identifier = str;
    }

    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: getUrl-24UBhI0, reason: not valid java name */
    public final String m10661getUrl24UBhI0() {
        return this.url;
    }

    public final String getHtmlSubstitutions() {
        return this.htmlSubstitutions;
    }

    public final PaywallPresentationInfo getPresentation() {
        return this.presentation;
    }

    public final void setPresentation(PaywallPresentationInfo paywallPresentationInfo) {
        Intrinsics.checkNotNullParameter(paywallPresentationInfo, "<set-?>");
        this.presentation = paywallPresentationInfo;
    }

    public /* synthetic */ Paywall(String str, String str2, String str3, String str4, String str5, String str6, PaywallPresentationStyle paywallPresentationStyle, long j, String str7, PaywallPresentationInfo paywallPresentationInfo, String str8, String str9, List list, List list2, List list3, List list4, LoadingInfo loadingInfo, LoadingInfo loadingInfo2, LoadingInfo loadingInfo3, LoadingInfo loadingInfo4, List list5, List list6, String str10, boolean z, String str11, FeatureGatingBehavior featureGatingBehavior, List list7, List list8, OnDeviceCaching onDeviceCaching, Experiment experiment, PaywallCloseReason paywallCloseReason, Map map, PaywallWebviewUrl.Config config, String str12, String str13, List list9, Boolean bool, ToggleMode toggleMode, IntroOfferEligibility introOfferEligibility, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str14;
        long j2;
        PaywallPresentationInfo paywallPresentationInfo2;
        List list10;
        PaywallPresentationStyle.None none;
        if ((i & 512) != 0) {
            if (paywallPresentationStyle == null) {
                PaywallPresentationStyle.None none2 = PaywallPresentationStyle.None.INSTANCE;
                str14 = str6;
                Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallPresentation, "Unknown or unsupported presentation style: " + str14, null, null, 24, null);
                none = none2;
            } else {
                str14 = str6;
                none = paywallPresentationStyle;
            }
            j2 = j;
            paywallPresentationInfo2 = new PaywallPresentationInfo(none, j2);
        } else {
            str14 = str6;
            j2 = j;
            paywallPresentationInfo2 = paywallPresentationInfo;
        }
        String str15 = (i & 2048) != 0 ? null : str9;
        List listEmptyList = (i & 4096) != 0 ? CollectionsKt.emptyList() : list;
        List listEmptyList2 = (i & 8192) != 0 ? CollectionsKt.emptyList() : list2;
        List listEmptyList3 = (i & 16384) != 0 ? CollectionsKt.emptyList() : list3;
        if ((32768 & i) != 0) {
            List list11 = listEmptyList3;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list11, 10));
            Iterator it = list11.iterator();
            while (it.hasNext()) {
                arrayList.add(((ProductItem) it.next()).getCompositeId());
            }
            ArrayList arrayList2 = arrayList;
            if (arrayList2.isEmpty()) {
                List list12 = listEmptyList2;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list12, 10));
                Iterator it2 = list12.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((CrossplatformProduct) it2.next()).getFullProductId());
                }
                arrayList2 = arrayList3;
            }
            list10 = arrayList2;
        } else {
            list10 = list4;
        }
        this(str, str2, str3, str4, str5, str14, paywallPresentationStyle, j2, str7, paywallPresentationInfo2, str8, str15, listEmptyList, listEmptyList2, listEmptyList3, list10, (65536 & i) != 0 ? new LoadingInfo((Date) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null) : loadingInfo, (131072 & i) != 0 ? new LoadingInfo((Date) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null) : loadingInfo2, (262144 & i) != 0 ? new LoadingInfo((Date) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null) : loadingInfo3, (524288 & i) != 0 ? new LoadingInfo((Date) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null) : loadingInfo4, (1048576 & i) != 0 ? null : list5, (2097152 & i) != 0 ? null : list6, (4194304 & i) != 0 ? null : str10, (8388608 & i) != 0 ? false : z, (16777216 & i) != 0 ? null : str11, (33554432 & i) != 0 ? FeatureGatingBehavior.NonGated.INSTANCE : featureGatingBehavior, (67108864 & i) != 0 ? CollectionsKt.emptyList() : list7, (134217728 & i) != 0 ? CollectionsKt.emptyList() : list8, (268435456 & i) != 0 ? OnDeviceCaching.Disabled.INSTANCE : onDeviceCaching, (536870912 & i) != 0 ? null : experiment, (1073741824 & i) != 0 ? PaywallCloseReason.None.INSTANCE : paywallCloseReason, (i & Integer.MIN_VALUE) != 0 ? MapsKt.emptyMap() : map, (i2 & 1) != 0 ? null : config, str12, str13, (i2 & 8) != 0 ? CollectionsKt.emptyList() : list9, (i2 & 16) != 0 ? true : bool, (i2 & 32) != 0 ? null : toggleMode, (i2 & 64) != 0 ? IntroOfferEligibility.AUTOMATIC : introOfferEligibility, null);
    }

    public final String getBackgroundColorHex() {
        return this.backgroundColorHex;
    }

    public final String getDarkBackgroundColorHex() {
        return this.darkBackgroundColorHex;
    }

    public final List<CrossplatformProduct> get_productItemsV3$superwall_release() {
        return this._productItemsV3;
    }

    public final void set_productItemsV3$superwall_release(List<CrossplatformProduct> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this._productItemsV3 = list;
    }

    public final List<ProductItem> get_productItems$superwall_release() {
        return this._productItems;
    }

    public final void set_productItems$superwall_release(List<ProductItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this._productItems = list;
    }

    public final List<String> getProductIds() {
        return this.productIds;
    }

    public final void setProductIds(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.productIds = list;
    }

    public final LoadingInfo getResponseLoadingInfo() {
        return this.responseLoadingInfo;
    }

    public final void setResponseLoadingInfo(LoadingInfo loadingInfo) {
        Intrinsics.checkNotNullParameter(loadingInfo, "<set-?>");
        this.responseLoadingInfo = loadingInfo;
    }

    public final LoadingInfo getWebviewLoadingInfo() {
        return this.webviewLoadingInfo;
    }

    public final void setWebviewLoadingInfo(LoadingInfo loadingInfo) {
        Intrinsics.checkNotNullParameter(loadingInfo, "<set-?>");
        this.webviewLoadingInfo = loadingInfo;
    }

    public final LoadingInfo getProductsLoadingInfo() {
        return this.productsLoadingInfo;
    }

    public final void setProductsLoadingInfo(LoadingInfo loadingInfo) {
        Intrinsics.checkNotNullParameter(loadingInfo, "<set-?>");
        this.productsLoadingInfo = loadingInfo;
    }

    public final LoadingInfo getShimmerLoadingInfo() {
        return this.shimmerLoadingInfo;
    }

    public final void setShimmerLoadingInfo(LoadingInfo loadingInfo) {
        Intrinsics.checkNotNullParameter(loadingInfo, "<set-?>");
        this.shimmerLoadingInfo = loadingInfo;
    }

    public final List<ProductVariable> getProductVariables() {
        return this.productVariables;
    }

    public final void setProductVariables(List<ProductVariable> list) {
        this.productVariables = list;
    }

    public final List<ProductVariable> getSwProductVariablesTemplate() {
        return this.swProductVariablesTemplate;
    }

    public final void setSwProductVariablesTemplate(List<ProductVariable> list) {
        this.swProductVariablesTemplate = list;
    }

    public final String getPaywalljsVersion() {
        return this.paywalljsVersion;
    }

    public final void setPaywalljsVersion(String str) {
        this.paywalljsVersion = str;
    }

    public final boolean isFreeTrialAvailable() {
        return this.isFreeTrialAvailable;
    }

    public final void setFreeTrialAvailable(boolean z) {
        this.isFreeTrialAvailable = z;
    }

    public final String getPresentationSourceType() {
        return this.presentationSourceType;
    }

    public final void setPresentationSourceType(String str) {
        this.presentationSourceType = str;
    }

    public final FeatureGatingBehavior getFeatureGating() {
        return this.featureGating;
    }

    public final void setFeatureGating(FeatureGatingBehavior featureGatingBehavior) {
        Intrinsics.checkNotNullParameter(featureGatingBehavior, "<set-?>");
        this.featureGating = featureGatingBehavior;
    }

    public final List<ComputedPropertyRequest> getComputedPropertyRequests() {
        return this.computedPropertyRequests;
    }

    public final void setComputedPropertyRequests(List<ComputedPropertyRequest> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.computedPropertyRequests = list;
    }

    public final List<LocalNotification> getLocalNotifications() {
        return this.localNotifications;
    }

    public final void setLocalNotifications(List<LocalNotification> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.localNotifications = list;
    }

    public final OnDeviceCaching getOnDeviceCache() {
        return this.onDeviceCache;
    }

    public final void setOnDeviceCache(OnDeviceCaching onDeviceCaching) {
        Intrinsics.checkNotNullParameter(onDeviceCaching, "<set-?>");
        this.onDeviceCache = onDeviceCaching;
    }

    public final Experiment getExperiment() {
        return this.experiment;
    }

    public final void setExperiment(Experiment experiment) {
        this.experiment = experiment;
    }

    public final PaywallCloseReason getCloseReason() {
        return this.closeReason;
    }

    public final void setCloseReason(PaywallCloseReason paywallCloseReason) {
        Intrinsics.checkNotNullParameter(paywallCloseReason, "<set-?>");
        this.closeReason = paywallCloseReason;
    }

    public final Map<String, Object> getState() {
        return this.state;
    }

    public final void setState(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.state = map;
    }

    public final PaywallWebviewUrl.Config getUrlConfig() {
        return this.urlConfig;
    }

    public final String getCacheKey() {
        return this.cacheKey;
    }

    public final String getBuildId() {
        return this.buildId;
    }

    public final List<Survey> getSurveys() {
        return this.surveys;
    }

    public final void setSurveys(List<Survey> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.surveys = list;
    }

    public final Boolean isScrollEnabled() {
        return this.isScrollEnabled;
    }

    public final ToggleMode getRerouteBackButton() {
        return this.rerouteBackButton;
    }

    public final IntroOfferEligibility getIntroOfferEligibility() {
        return this.introOfferEligibility;
    }

    public final List<CrossplatformProduct> getPlayStoreProducts() {
        if (this._productItemsV3.isEmpty() && !getProductItems().isEmpty()) {
            List<ProductItem> productItems = getProductItems();
            ArrayList arrayList = new ArrayList();
            for (Object obj : productItems) {
                if (((ProductItem) obj).getType() instanceof ProductItem.StoreProductType.PlayStore) {
                    arrayList.add(obj);
                }
            }
            ArrayList<ProductItem> arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
            for (ProductItem productItem : arrayList2) {
                ProductItem.StoreProductType type = productItem.getType();
                Intrinsics.checkNotNull(type, "null cannot be cast to non-null type com.superwall.sdk.models.product.ProductItem.StoreProductType.PlayStore");
                ProductItem.StoreProductType.PlayStore playStore = (ProductItem.StoreProductType.PlayStore) type;
                arrayList3.add(new CrossplatformProduct(productItem.getCompositeId(), new CrossplatformProduct.StoreProduct.PlayStore(playStore.getProduct().getProductIdentifier(), playStore.getProduct().getBasePlanIdentifier(), playStore.getProduct().getOffer()), CollectionsKt.toList(productItem.getEntitlements()), productItem.getName()));
            }
            return arrayList3;
        }
        List<CrossplatformProduct> list = this._productItemsV3;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list) {
            if (((CrossplatformProduct) obj2).getStoreProduct() instanceof CrossplatformProduct.StoreProduct.PlayStore) {
                arrayList4.add(obj2);
            }
        }
        return arrayList4;
    }

    public final List<CrossplatformProduct> getStripeProducts() {
        List<CrossplatformProduct> list = this._productItemsV3;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((CrossplatformProduct) obj).getStoreProduct() instanceof CrossplatformProduct.StoreProduct.Stripe) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<CrossplatformProduct> getPaddleProducts() {
        List<CrossplatformProduct> list = this._productItemsV3;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((CrossplatformProduct) obj).getStoreProduct() instanceof CrossplatformProduct.StoreProduct.Paddle) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<ProductItem> getProductItems() {
        ArrayList arrayList = this._productItems;
        if (arrayList.isEmpty()) {
            List<CrossplatformProduct> list = this._productItemsV3;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(CrossplatformProduct.INSTANCE.toProductItem((CrossplatformProduct) it.next()));
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    public final void setProductItems(List<ProductItem> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._productItems = value;
        this._products = value;
        List<ProductItem> list = value;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ProductItem) it.next()).getFullProductId());
        }
        this.productIds = arrayList;
    }

    public final List<ProductItem> getProducts() {
        return this._products;
    }

    public final int getBackgroundColor() {
        return ((Number) this.backgroundColor.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int _init_$lambda$18(Paywall paywall) {
        try {
            return Color.parseColor(paywall.backgroundColorHex);
        } catch (Throwable unused) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallView, "Invalid paywall background color: " + paywall.backgroundColorHex + ". Defaulting to white.", null, null, 24, null);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int backgroundColor_delegate$lambda$12(Paywall paywall) {
        try {
            return Color.parseColor(paywall.backgroundColorHex);
        } catch (Throwable unused) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallView, "Invalid paywall background color: " + paywall.backgroundColorHex + ". Defaulting to white.", null, null, 24, null);
            return -1;
        }
    }

    public final Integer getDarkBackgroundColor() {
        return (Integer) this.darkBackgroundColor.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer _init_$lambda$19(Paywall paywall) {
        try {
            return Integer.valueOf(Color.parseColor(paywall.darkBackgroundColorHex));
        } catch (Throwable unused) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallView, "Invalid paywall background color: " + paywall.darkBackgroundColorHex + ". Defaulting to white.", null, null, 24, null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer darkBackgroundColor_delegate$lambda$13(Paywall paywall) {
        try {
            return Integer.valueOf(Color.parseColor(paywall.darkBackgroundColorHex));
        } catch (Throwable unused) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallView, "Invalid paywall background color: " + paywall.darkBackgroundColorHex + ". Defaulting to white.", null, null, 24, null);
            return null;
        }
    }

    /* JADX INFO: compiled from: Paywall.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ,2\u00020\u0001:\u0002+,B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\tHÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001J%\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0001¢\u0006\u0002\b*R&\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R&\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R&\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0016\u0010\u000e\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012¨\u0006-"}, d2 = {"Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;", "", "startAt", "Ljava/util/Date;", "endAt", "failAt", "<init>", "(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/Date;Ljava/util/Date;Ljava/util/Date;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getStartAt$annotations", "()V", "getStartAt", "()Ljava/util/Date;", "setStartAt", "(Ljava/util/Date;)V", "getEndAt$annotations", "getEndAt", "setEndAt", "getFailAt$annotations", "getFailAt", "setFailAt", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final /* data */ class LoadingInfo {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private Date endAt;
        private Date failAt;
        private Date startAt;

        public LoadingInfo() {
            this((Date) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ LoadingInfo copy$default(LoadingInfo loadingInfo, Date date, Date date2, Date date3, int i, Object obj) {
            if ((i & 1) != 0) {
                date = loadingInfo.startAt;
            }
            if ((i & 2) != 0) {
                date2 = loadingInfo.endAt;
            }
            if ((i & 4) != 0) {
                date3 = loadingInfo.failAt;
            }
            return loadingInfo.copy(date, date2, date3);
        }

        @Serializable(with = DateSerializer.class)
        public static /* synthetic */ void getEndAt$annotations() {
        }

        @Serializable(with = DateSerializer.class)
        public static /* synthetic */ void getFailAt$annotations() {
        }

        @Serializable(with = DateSerializer.class)
        public static /* synthetic */ void getStartAt$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Date getStartAt() {
            return this.startAt;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Date getEndAt() {
            return this.endAt;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Date getFailAt() {
            return this.failAt;
        }

        public final LoadingInfo copy(Date startAt, Date endAt, Date failAt) {
            return new LoadingInfo(startAt, endAt, failAt);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LoadingInfo)) {
                return false;
            }
            LoadingInfo loadingInfo = (LoadingInfo) other;
            return Intrinsics.areEqual(this.startAt, loadingInfo.startAt) && Intrinsics.areEqual(this.endAt, loadingInfo.endAt) && Intrinsics.areEqual(this.failAt, loadingInfo.failAt);
        }

        public int hashCode() {
            Date date = this.startAt;
            int iHashCode = (date == null ? 0 : date.hashCode()) * 31;
            Date date2 = this.endAt;
            int iHashCode2 = (iHashCode + (date2 == null ? 0 : date2.hashCode())) * 31;
            Date date3 = this.failAt;
            return iHashCode2 + (date3 != null ? date3.hashCode() : 0);
        }

        public String toString() {
            return "LoadingInfo(startAt=" + this.startAt + ", endAt=" + this.endAt + ", failAt=" + this.failAt + ")";
        }

        /* JADX INFO: compiled from: Paywall.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<LoadingInfo> serializer() {
                return Paywall$LoadingInfo$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ LoadingInfo(int i, Date date, Date date2, Date date3, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 1) == 0) {
                this.startAt = null;
            } else {
                this.startAt = date;
            }
            if ((i & 2) == 0) {
                this.endAt = null;
            } else {
                this.endAt = date2;
            }
            if ((i & 4) == 0) {
                this.failAt = null;
            } else {
                this.failAt = date3;
            }
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$superwall_release(LoadingInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.startAt != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, DateSerializer.INSTANCE, self.startAt);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.endAt != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, DateSerializer.INSTANCE, self.endAt);
            }
            if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.failAt == null) {
                return;
            }
            output.encodeNullableSerializableElement(serialDesc, 2, DateSerializer.INSTANCE, self.failAt);
        }

        public LoadingInfo(Date date, Date date2, Date date3) {
            this.startAt = date;
            this.endAt = date2;
            this.failAt = date3;
        }

        public /* synthetic */ LoadingInfo(Date date, Date date2, Date date3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : date, (i & 2) != 0 ? null : date2, (i & 4) != 0 ? null : date3);
        }

        public final Date getStartAt() {
            return this.startAt;
        }

        public final void setStartAt(Date date) {
            this.startAt = date;
        }

        public final Date getEndAt() {
            return this.endAt;
        }

        public final void setEndAt(Date date) {
            this.endAt = date;
        }

        public final Date getFailAt() {
            return this.failAt;
        }

        public final void setFailAt(Date date) {
            this.failAt = date;
        }
    }

    public final void update(Paywall paywall) {
        Intrinsics.checkNotNullParameter(paywall, "paywall");
        setProductItems(paywall.getProductItems());
        this.productVariables = paywall.productVariables;
        this.swProductVariablesTemplate = paywall.swProductVariablesTemplate;
        this.isFreeTrialAvailable = paywall.isFreeTrialAvailable;
        this.productsLoadingInfo = paywall.productsLoadingInfo;
        this.presentationSourceType = paywall.presentationSourceType;
        this.experiment = paywall.experiment;
    }

    public final PaywallInfo getInfo(EventData fromEvent) {
        String str = this.databaseId;
        String str2 = this.identifier;
        String str3 = this.name;
        String str4 = this.url;
        List<ProductItem> products = getProducts();
        List<String> list = this.productIds;
        Date startAt = this.responseLoadingInfo.getStartAt();
        Date endAt = this.responseLoadingInfo.getEndAt();
        Date failAt = this.responseLoadingInfo.getFailAt();
        Date startAt2 = this.webviewLoadingInfo.getStartAt();
        Date endAt2 = this.webviewLoadingInfo.getEndAt();
        Date failAt2 = this.webviewLoadingInfo.getFailAt();
        Date startAt3 = this.productsLoadingInfo.getStartAt();
        Date failAt3 = this.productsLoadingInfo.getFailAt();
        Date endAt3 = this.productsLoadingInfo.getEndAt();
        Date startAt4 = this.shimmerLoadingInfo.getStartAt();
        Date endAt4 = this.shimmerLoadingInfo.getEndAt();
        Experiment experiment = this.experiment;
        String str5 = this.paywalljsVersion;
        boolean z = this.isFreeTrialAvailable;
        String str6 = this.presentationSourceType;
        FeatureGatingBehavior featureGatingBehavior = this.featureGating;
        PaywallCloseReason paywallCloseReason = this.closeReason;
        List<LocalNotification> list2 = this.localNotifications;
        List<ComputedPropertyRequest> list3 = this.computedPropertyRequests;
        List<Survey> list4 = this.surveys;
        PaywallPresentationInfo paywallPresentationInfo = this.presentation;
        String str7 = this.cacheKey;
        String str8 = this.buildId;
        Boolean bool = this.isScrollEnabled;
        return new PaywallInfo(str, str2, str3, str4, products, list, fromEvent, startAt, endAt, failAt, startAt2, endAt2, failAt2, startAt3, failAt3, endAt3, startAt4, endAt4, experiment, str5, z, str6, featureGatingBehavior, list2, list3, paywallCloseReason, list4, paywallPresentationInfo, str8, str7, bool != null ? bool.booleanValue() : true, this.state, null, 0, 1, null);
    }

    /* JADX INFO: compiled from: Paywall.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/paywall/Paywall$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/paywall/Paywall;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Paywall> serializer() {
            return Paywall$$serializer.INSTANCE;
        }

        public final Paywall stub() {
            String strM10663constructorimpl = PaywallURL.m10663constructorimpl("https://google.com");
            PaywallPresentationInfo paywallPresentationInfo = new PaywallPresentationInfo(PaywallPresentationStyle.Modal.INSTANCE, 300L);
            PaywallPresentationStyle.Modal modal = PaywallPresentationStyle.Modal.INSTANCE;
            ArrayList arrayList = new ArrayList();
            List listEmptyList = CollectionsKt.emptyList();
            int i = 7;
            DefaultConstructorMarker defaultConstructorMarker = null;
            Date date = null;
            Date date2 = null;
            Date date3 = null;
            LoadingInfo loadingInfo = new LoadingInfo(date, date2, date3, i, defaultConstructorMarker);
            LoadingInfo loadingInfo2 = new LoadingInfo(date, date2, date3, i, defaultConstructorMarker);
            LoadingInfo loadingInfo3 = new LoadingInfo(date, date2, date3, i, defaultConstructorMarker);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            FeatureGatingBehavior.NonGated nonGated = FeatureGatingBehavior.NonGated.INSTANCE;
            ArrayList arrayList4 = new ArrayList();
            PaywallWebviewUrl.Config config = new PaywallWebviewUrl.Config(3, CollectionsKt.listOf(new PaywallWebviewUrl("https://google.com", 1000L, 1)));
            ToggleMode toggleMode = ToggleMode.DISABLED;
            PaywallPresentationStyle.Modal modal2 = modal;
            return new Paywall("id", NotificationsService.IDENTIFIER_KEY, "abac", strM10663constructorimpl, "", "MODAL", modal2, 300L, "CHECK_USER_SUBSCRIPTION", paywallPresentationInfo, "000000", null, listEmptyList, CollectionsKt.emptyList(), null, arrayList, loadingInfo, loadingInfo2, loadingInfo3, null, arrayList2, arrayList3, "", false, null, nonGated, null, arrayList4, null, null, null, null, config, "123", "test", null, true, toggleMode, null, -184008704, 72, null);
        }
    }

    /* JADX INFO: compiled from: Paywall.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;", "", "<init>", "(Ljava/lang/String;I)V", "ENABLED", "DISABLED", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public enum ToggleMode {
        ENABLED,
        DISABLED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.paywall.Paywall$ToggleMode$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Paywall.ToggleMode._init_$_anonymous_();
            }
        });

        public static EnumEntries<ToggleMode> getEntries() {
            return $ENTRIES;
        }

        /* JADX INFO: compiled from: Paywall.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final /* synthetic */ KSerializer get$cachedSerializer() {
                return (KSerializer) ToggleMode.$cachedSerializer$delegate.getValue();
            }

            public final KSerializer<ToggleMode> serializer() {
                return get$cachedSerializer();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return EnumsKt.createAnnotatedEnumSerializer("com.superwall.sdk.models.paywall.Paywall.ToggleMode", values(), new String[]{"ENABLED", "DISABLED"}, new Annotation[][]{null, null}, null);
        }
    }
}
