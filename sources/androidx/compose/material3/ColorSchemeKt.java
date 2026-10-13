package androidx.compose.material3;

import androidx.compose.material3.tokens.ColorDarkTokens;
import androidx.compose.material3.tokens.ColorLightTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.PaletteTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import androidx.media3.common.C;
import com.facebook.react.modules.appstate.AppStateModule;
import com.google.firebase.messaging.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: ColorScheme.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b;\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\u001aí\u0003\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u00032\b\b\u0002\u0010'\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u00032\b\b\u0002\u0010)\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\u00032\b\b\u0002\u0010+\u001a\u00020\u00032\b\b\u0002\u0010,\u001a\u00020\u00032\b\b\u0002\u0010-\u001a\u00020\u00032\b\b\u0002\u0010.\u001a\u00020\u00032\b\b\u0002\u0010/\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u00020\u00032\b\b\u0002\u00101\u001a\u00020\u00032\b\b\u0002\u00102\u001a\u00020\u0003¢\u0006\u0004\b3\u00104\u001aí\u0003\u00105\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u00032\b\b\u0002\u0010'\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u00032\b\b\u0002\u0010)\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\u00032\b\b\u0002\u0010+\u001a\u00020\u00032\b\b\u0002\u0010,\u001a\u00020\u00032\b\b\u0002\u0010-\u001a\u00020\u00032\b\b\u0002\u0010.\u001a\u00020\u00032\b\b\u0002\u0010/\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u00020\u00032\b\b\u0002\u00101\u001a\u00020\u00032\b\b\u0002\u00102\u001a\u00020\u0003¢\u0006\u0004\b6\u00104\u001a\u001b\u00107\u001a\u00020\u0003*\u00020\u00012\u0006\u00108\u001a\u00020\u0003H\u0007¢\u0006\u0004\b9\u0010:\u001a\u0017\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u0003H\u0007¢\u0006\u0004\b;\u0010<\u001a\u001b\u0010=\u001a\u00020\u0003*\u00020\u00012\u0006\u0010>\u001a\u00020?H\u0007¢\u0006\u0004\b@\u0010A\u001a\b\u0010B\u001a\u00020\u0001H\u0007\u001a÷\u0002\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u0003H\u0007¢\u0006\u0004\bC\u0010D\u001a±\u0002\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u0003H\u0007¢\u0006\u0004\bE\u0010F\u001a÷\u0002\u00105\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u0003H\u0007¢\u0006\u0004\bG\u0010D\u001a±\u0002\u00105\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u0003H\u0007¢\u0006\u0004\bH\u0010F\u001a\u0019\u0010I\u001a\u00020\u0003*\u00020\u00012\u0006\u0010J\u001a\u00020KH\u0001¢\u0006\u0002\u0010L\u001a#\u0010U\u001a\u00020\u0003*\u00020\u00012\u0006\u00108\u001a\u00020\u00032\u0006\u0010>\u001a\u00020?H\u0001¢\u0006\u0004\bV\u0010W\"\u001a\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00010NX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010P\"\u000e\u0010Q\u001a\u00020RX\u0080T¢\u0006\u0002\n\u0000\"\u0018\u0010J\u001a\u00020\u0003*\u00020K8AX\u0080\u0004¢\u0006\u0006\u001a\u0004\bS\u0010T\"\u0017\u0010X\u001a\b\u0012\u0004\u0012\u00020Y0N¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010P¨\u0006["}, d2 = {"lightColorScheme", "Landroidx/compose/material3/ColorScheme;", "primary", "Landroidx/compose/ui/graphics/Color;", "onPrimary", "primaryContainer", "onPrimaryContainer", "inversePrimary", "secondary", "onSecondary", "secondaryContainer", "onSecondaryContainer", "tertiary", "onTertiary", "tertiaryContainer", "onTertiaryContainer", AppStateModule.APP_STATE_BACKGROUND, "onBackground", "surface", "onSurface", "surfaceVariant", "onSurfaceVariant", "surfaceTint", "inverseSurface", "inverseOnSurface", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "onError", "errorContainer", "onErrorContainer", "outline", "outlineVariant", "scrim", "surfaceBright", "surfaceContainer", "surfaceContainerHigh", "surfaceContainerHighest", "surfaceContainerLow", "surfaceContainerLowest", "surfaceDim", "primaryFixed", "primaryFixedDim", "onPrimaryFixed", "onPrimaryFixedVariant", "secondaryFixed", "secondaryFixedDim", "onSecondaryFixed", "onSecondaryFixedVariant", "tertiaryFixed", "tertiaryFixedDim", "onTertiaryFixed", "onTertiaryFixedVariant", "lightColorScheme-_VG5OTI", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;", "darkColorScheme", "darkColorScheme-_VG5OTI", "contentColorFor", "backgroundColor", "contentColorFor-4WTKRHQ", "(Landroidx/compose/material3/ColorScheme;J)J", "contentColorFor-ek8zF_U", "(JLandroidx/compose/runtime/Composer;I)J", "surfaceColorAtElevation", "elevation", "Landroidx/compose/ui/unit/Dp;", "surfaceColorAtElevation-3ABfNKs", "(Landroidx/compose/material3/ColorScheme;F)J", "expressiveLightColorScheme", "lightColorScheme-C-Xl9yA", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;", "lightColorScheme-G1PFc-w", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/ColorScheme;", "darkColorScheme-C-Xl9yA", "darkColorScheme-G1PFc-w", "fromToken", RNConstants.ARG_VALUE, "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;", "(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J", "LocalColorScheme", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "getLocalColorScheme", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "DisabledAlpha", "", "getValue", "(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J", "applyTonalElevation", "applyTonalElevation-RFCenO8", "(Landroidx/compose/material3/ColorScheme;JFLandroidx/compose/runtime/Composer;I)J", "LocalTonalElevationEnabled", "", "getLocalTonalElevationEnabled", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ColorSchemeKt {
    public static final float DisabledAlpha = 0.38f;
    private static final ProvidableCompositionLocal<ColorScheme> LocalColorScheme = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.compose.material3.ColorSchemeKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ColorSchemeKt.LocalColorScheme$lambda$0();
        }
    });
    private static final ProvidableCompositionLocal<Boolean> LocalTonalElevationEnabled = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.compose.material3.ColorSchemeKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(ColorSchemeKt.LocalTonalElevationEnabled$lambda$0());
        }
    });

    /* JADX INFO: compiled from: ColorScheme.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ColorSchemeKeyTokens.values().length];
            try {
                iArr[ColorSchemeKeyTokens.Background.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Error.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ColorSchemeKeyTokens.ErrorContainer.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseOnSurface.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InversePrimary.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseSurface.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnBackground.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnError.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnErrorContainer.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimary.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryContainer.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondary.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryContainer.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurface.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurfaceVariant.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceTint.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiary.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryContainer.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Outline.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OutlineVariant.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Primary.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryContainer.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Scrim.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Secondary.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryContainer.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Surface.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceVariant.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceBright.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainer.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHigh.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHighest.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLow.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLowest.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceDim.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Tertiary.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryContainer.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryFixed.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryFixedDim.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryFixed.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryFixedVariant.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryFixed.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryFixedDim.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryFixed.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryFixedVariant.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryFixed.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryFixedDim.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryFixed.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryFixedVariant.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean LocalTonalElevationEnabled$lambda$0() {
        return true;
    }

    /* JADX INFO: renamed from: lightColorScheme-_VG5OTI$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m2308lightColorScheme_VG5OTI$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48, int i, int i2, Object obj) {
        long jM4532getPrimary0d7_KjU = (i & 1) != 0 ? ColorLightTokens.INSTANCE.m4532getPrimary0d7_KjU() : j;
        long jM4516getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorLightTokens.INSTANCE.m4516getOnPrimary0d7_KjU() : j2;
        long jM4533getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorLightTokens.INSTANCE.m4533getPrimaryContainer0d7_KjU() : j3;
        long jM4517getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorLightTokens.INSTANCE.m4517getOnPrimaryContainer0d7_KjU() : j4;
        long jM4511getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorLightTokens.INSTANCE.m4511getInversePrimary0d7_KjU() : j5;
        long jM4537getSecondary0d7_KjU = (i & 32) != 0 ? ColorLightTokens.INSTANCE.m4537getSecondary0d7_KjU() : j6;
        long jM4520getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorLightTokens.INSTANCE.m4520getOnSecondary0d7_KjU() : j7;
        long j49 = jM4532getPrimary0d7_KjU;
        long jM4538getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorLightTokens.INSTANCE.m4538getSecondaryContainer0d7_KjU() : j8;
        long jM4521getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorLightTokens.INSTANCE.m4521getOnSecondaryContainer0d7_KjU() : j9;
        long jM4551getTertiary0d7_KjU = (i & 512) != 0 ? ColorLightTokens.INSTANCE.m4551getTertiary0d7_KjU() : j10;
        long jM4526getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorLightTokens.INSTANCE.m4526getOnTertiary0d7_KjU() : j11;
        long jM4552getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorLightTokens.INSTANCE.m4552getTertiaryContainer0d7_KjU() : j12;
        long jM4527getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorLightTokens.INSTANCE.m4527getOnTertiaryContainer0d7_KjU() : j13;
        long jM4507getBackground0d7_KjU = (i & 8192) != 0 ? ColorLightTokens.INSTANCE.m4507getBackground0d7_KjU() : j14;
        long jM4513getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorLightTokens.INSTANCE.m4513getOnBackground0d7_KjU() : j15;
        long jM4541getSurface0d7_KjU = (i & 32768) != 0 ? ColorLightTokens.INSTANCE.m4541getSurface0d7_KjU() : j16;
        long jM4524getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorLightTokens.INSTANCE.m4524getOnSurface0d7_KjU() : j17;
        long jM4550getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorLightTokens.INSTANCE.m4550getSurfaceVariant0d7_KjU() : j18;
        long jM4525getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorLightTokens.INSTANCE.m4525getOnSurfaceVariant0d7_KjU() : j19;
        long j50 = (i & 524288) != 0 ? j49 : j20;
        long jM4512getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorLightTokens.INSTANCE.m4512getInverseSurface0d7_KjU() : j21;
        long jM4510getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorLightTokens.INSTANCE.m4510getInverseOnSurface0d7_KjU() : j22;
        long jM4508getError0d7_KjU = (i & 4194304) != 0 ? ColorLightTokens.INSTANCE.m4508getError0d7_KjU() : j23;
        long jM4514getOnError0d7_KjU = (i & 8388608) != 0 ? ColorLightTokens.INSTANCE.m4514getOnError0d7_KjU() : j24;
        long jM4509getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorLightTokens.INSTANCE.m4509getErrorContainer0d7_KjU() : j25;
        long jM4515getOnErrorContainer0d7_KjU = (i & 33554432) != 0 ? ColorLightTokens.INSTANCE.m4515getOnErrorContainer0d7_KjU() : j26;
        long jM4530getOutline0d7_KjU = (i & 67108864) != 0 ? ColorLightTokens.INSTANCE.m4530getOutline0d7_KjU() : j27;
        long jM4531getOutlineVariant0d7_KjU = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? ColorLightTokens.INSTANCE.m4531getOutlineVariant0d7_KjU() : j28;
        long jM4536getScrim0d7_KjU = (i & 268435456) != 0 ? ColorLightTokens.INSTANCE.m4536getScrim0d7_KjU() : j29;
        long jM4542getSurfaceBright0d7_KjU = (i & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? ColorLightTokens.INSTANCE.m4542getSurfaceBright0d7_KjU() : j30;
        long jM4543getSurfaceContainer0d7_KjU = (i & 1073741824) != 0 ? ColorLightTokens.INSTANCE.m4543getSurfaceContainer0d7_KjU() : j31;
        long jM4544getSurfaceContainerHigh0d7_KjU = (i & Integer.MIN_VALUE) != 0 ? ColorLightTokens.INSTANCE.m4544getSurfaceContainerHigh0d7_KjU() : j32;
        long jM4545getSurfaceContainerHighest0d7_KjU = (i2 & 1) != 0 ? ColorLightTokens.INSTANCE.m4545getSurfaceContainerHighest0d7_KjU() : j33;
        long jM4546getSurfaceContainerLow0d7_KjU = (i2 & 2) != 0 ? ColorLightTokens.INSTANCE.m4546getSurfaceContainerLow0d7_KjU() : j34;
        long jM4547getSurfaceContainerLowest0d7_KjU = (i2 & 4) != 0 ? ColorLightTokens.INSTANCE.m4547getSurfaceContainerLowest0d7_KjU() : j35;
        long jM4548getSurfaceDim0d7_KjU = (i2 & 8) != 0 ? ColorLightTokens.INSTANCE.m4548getSurfaceDim0d7_KjU() : j36;
        long jM4534getPrimaryFixed0d7_KjU = (i2 & 16) != 0 ? ColorLightTokens.INSTANCE.m4534getPrimaryFixed0d7_KjU() : j37;
        long jM4535getPrimaryFixedDim0d7_KjU = (i2 & 32) != 0 ? ColorLightTokens.INSTANCE.m4535getPrimaryFixedDim0d7_KjU() : j38;
        long jM4518getOnPrimaryFixed0d7_KjU = (i2 & 64) != 0 ? ColorLightTokens.INSTANCE.m4518getOnPrimaryFixed0d7_KjU() : j39;
        long jM4519getOnPrimaryFixedVariant0d7_KjU = (i2 & 128) != 0 ? ColorLightTokens.INSTANCE.m4519getOnPrimaryFixedVariant0d7_KjU() : j40;
        long jM4539getSecondaryFixed0d7_KjU = (i2 & 256) != 0 ? ColorLightTokens.INSTANCE.m4539getSecondaryFixed0d7_KjU() : j41;
        long jM4540getSecondaryFixedDim0d7_KjU = (i2 & 512) != 0 ? ColorLightTokens.INSTANCE.m4540getSecondaryFixedDim0d7_KjU() : j42;
        long jM4522getOnSecondaryFixed0d7_KjU = (i2 & 1024) != 0 ? ColorLightTokens.INSTANCE.m4522getOnSecondaryFixed0d7_KjU() : j43;
        long jM4523getOnSecondaryFixedVariant0d7_KjU = (i2 & 2048) != 0 ? ColorLightTokens.INSTANCE.m4523getOnSecondaryFixedVariant0d7_KjU() : j44;
        long jM4553getTertiaryFixed0d7_KjU = (i2 & 4096) != 0 ? ColorLightTokens.INSTANCE.m4553getTertiaryFixed0d7_KjU() : j45;
        long jM4554getTertiaryFixedDim0d7_KjU = (i2 & 8192) != 0 ? ColorLightTokens.INSTANCE.m4554getTertiaryFixedDim0d7_KjU() : j46;
        long jM4528getOnTertiaryFixed0d7_KjU = (i2 & 16384) != 0 ? ColorLightTokens.INSTANCE.m4528getOnTertiaryFixed0d7_KjU() : j47;
        if ((i2 & 32768) != 0) {
            j48 = ColorLightTokens.INSTANCE.m4529getOnTertiaryFixedVariant0d7_KjU();
        }
        return m2307lightColorScheme_VG5OTI(j49, jM4516getOnPrimary0d7_KjU, jM4533getPrimaryContainer0d7_KjU, jM4517getOnPrimaryContainer0d7_KjU, jM4511getInversePrimary0d7_KjU, jM4537getSecondary0d7_KjU, jM4520getOnSecondary0d7_KjU, jM4538getSecondaryContainer0d7_KjU, jM4521getOnSecondaryContainer0d7_KjU, jM4551getTertiary0d7_KjU, jM4526getOnTertiary0d7_KjU, jM4552getTertiaryContainer0d7_KjU, jM4527getOnTertiaryContainer0d7_KjU, jM4507getBackground0d7_KjU, jM4513getOnBackground0d7_KjU, jM4541getSurface0d7_KjU, jM4524getOnSurface0d7_KjU, jM4550getSurfaceVariant0d7_KjU, jM4525getOnSurfaceVariant0d7_KjU, j50, jM4512getInverseSurface0d7_KjU, jM4510getInverseOnSurface0d7_KjU, jM4508getError0d7_KjU, jM4514getOnError0d7_KjU, jM4509getErrorContainer0d7_KjU, jM4515getOnErrorContainer0d7_KjU, jM4530getOutline0d7_KjU, jM4531getOutlineVariant0d7_KjU, jM4536getScrim0d7_KjU, jM4542getSurfaceBright0d7_KjU, jM4543getSurfaceContainer0d7_KjU, jM4544getSurfaceContainerHigh0d7_KjU, jM4545getSurfaceContainerHighest0d7_KjU, jM4546getSurfaceContainerLow0d7_KjU, jM4547getSurfaceContainerLowest0d7_KjU, jM4548getSurfaceDim0d7_KjU, jM4534getPrimaryFixed0d7_KjU, jM4535getPrimaryFixedDim0d7_KjU, jM4518getOnPrimaryFixed0d7_KjU, jM4519getOnPrimaryFixedVariant0d7_KjU, jM4539getSecondaryFixed0d7_KjU, jM4540getSecondaryFixedDim0d7_KjU, jM4522getOnSecondaryFixed0d7_KjU, jM4523getOnSecondaryFixedVariant0d7_KjU, jM4553getTertiaryFixed0d7_KjU, jM4554getTertiaryFixedDim0d7_KjU, jM4528getOnTertiaryFixed0d7_KjU, j48);
    }

    /* JADX INFO: renamed from: lightColorScheme-_VG5OTI, reason: not valid java name */
    public static final ColorScheme m2307lightColorScheme_VG5OTI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48) {
        return new ColorScheme(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j36, j31, j32, j33, j34, j35, j37, j38, j39, j40, j41, j42, j43, j44, j45, j46, j47, j48, null);
    }

    /* JADX INFO: renamed from: darkColorScheme-_VG5OTI$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m2302darkColorScheme_VG5OTI$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48, int i, int i2, Object obj) {
        long jM4484getPrimary0d7_KjU = (i & 1) != 0 ? ColorDarkTokens.INSTANCE.m4484getPrimary0d7_KjU() : j;
        long jM4468getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorDarkTokens.INSTANCE.m4468getOnPrimary0d7_KjU() : j2;
        long jM4485getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorDarkTokens.INSTANCE.m4485getPrimaryContainer0d7_KjU() : j3;
        long jM4469getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorDarkTokens.INSTANCE.m4469getOnPrimaryContainer0d7_KjU() : j4;
        long jM4463getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorDarkTokens.INSTANCE.m4463getInversePrimary0d7_KjU() : j5;
        long jM4489getSecondary0d7_KjU = (i & 32) != 0 ? ColorDarkTokens.INSTANCE.m4489getSecondary0d7_KjU() : j6;
        long jM4472getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorDarkTokens.INSTANCE.m4472getOnSecondary0d7_KjU() : j7;
        long j49 = jM4484getPrimary0d7_KjU;
        long jM4490getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorDarkTokens.INSTANCE.m4490getSecondaryContainer0d7_KjU() : j8;
        long jM4473getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorDarkTokens.INSTANCE.m4473getOnSecondaryContainer0d7_KjU() : j9;
        long jM4503getTertiary0d7_KjU = (i & 512) != 0 ? ColorDarkTokens.INSTANCE.m4503getTertiary0d7_KjU() : j10;
        long jM4478getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorDarkTokens.INSTANCE.m4478getOnTertiary0d7_KjU() : j11;
        long jM4504getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorDarkTokens.INSTANCE.m4504getTertiaryContainer0d7_KjU() : j12;
        long jM4479getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorDarkTokens.INSTANCE.m4479getOnTertiaryContainer0d7_KjU() : j13;
        long jM4459getBackground0d7_KjU = (i & 8192) != 0 ? ColorDarkTokens.INSTANCE.m4459getBackground0d7_KjU() : j14;
        long jM4465getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorDarkTokens.INSTANCE.m4465getOnBackground0d7_KjU() : j15;
        long jM4493getSurface0d7_KjU = (i & 32768) != 0 ? ColorDarkTokens.INSTANCE.m4493getSurface0d7_KjU() : j16;
        long jM4476getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorDarkTokens.INSTANCE.m4476getOnSurface0d7_KjU() : j17;
        long jM4502getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorDarkTokens.INSTANCE.m4502getSurfaceVariant0d7_KjU() : j18;
        long jM4477getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorDarkTokens.INSTANCE.m4477getOnSurfaceVariant0d7_KjU() : j19;
        long j50 = (i & 524288) != 0 ? j49 : j20;
        long jM4464getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorDarkTokens.INSTANCE.m4464getInverseSurface0d7_KjU() : j21;
        long jM4462getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorDarkTokens.INSTANCE.m4462getInverseOnSurface0d7_KjU() : j22;
        long jM4460getError0d7_KjU = (i & 4194304) != 0 ? ColorDarkTokens.INSTANCE.m4460getError0d7_KjU() : j23;
        long jM4466getOnError0d7_KjU = (i & 8388608) != 0 ? ColorDarkTokens.INSTANCE.m4466getOnError0d7_KjU() : j24;
        long jM4461getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorDarkTokens.INSTANCE.m4461getErrorContainer0d7_KjU() : j25;
        long jM4467getOnErrorContainer0d7_KjU = (i & 33554432) != 0 ? ColorDarkTokens.INSTANCE.m4467getOnErrorContainer0d7_KjU() : j26;
        long jM4482getOutline0d7_KjU = (i & 67108864) != 0 ? ColorDarkTokens.INSTANCE.m4482getOutline0d7_KjU() : j27;
        long jM4483getOutlineVariant0d7_KjU = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? ColorDarkTokens.INSTANCE.m4483getOutlineVariant0d7_KjU() : j28;
        long jM4488getScrim0d7_KjU = (i & 268435456) != 0 ? ColorDarkTokens.INSTANCE.m4488getScrim0d7_KjU() : j29;
        long jM4494getSurfaceBright0d7_KjU = (i & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? ColorDarkTokens.INSTANCE.m4494getSurfaceBright0d7_KjU() : j30;
        long jM4495getSurfaceContainer0d7_KjU = (i & 1073741824) != 0 ? ColorDarkTokens.INSTANCE.m4495getSurfaceContainer0d7_KjU() : j31;
        long jM4496getSurfaceContainerHigh0d7_KjU = (i & Integer.MIN_VALUE) != 0 ? ColorDarkTokens.INSTANCE.m4496getSurfaceContainerHigh0d7_KjU() : j32;
        long jM4497getSurfaceContainerHighest0d7_KjU = (i2 & 1) != 0 ? ColorDarkTokens.INSTANCE.m4497getSurfaceContainerHighest0d7_KjU() : j33;
        long jM4498getSurfaceContainerLow0d7_KjU = (i2 & 2) != 0 ? ColorDarkTokens.INSTANCE.m4498getSurfaceContainerLow0d7_KjU() : j34;
        long jM4499getSurfaceContainerLowest0d7_KjU = (i2 & 4) != 0 ? ColorDarkTokens.INSTANCE.m4499getSurfaceContainerLowest0d7_KjU() : j35;
        long jM4500getSurfaceDim0d7_KjU = (i2 & 8) != 0 ? ColorDarkTokens.INSTANCE.m4500getSurfaceDim0d7_KjU() : j36;
        long jM4486getPrimaryFixed0d7_KjU = (i2 & 16) != 0 ? ColorDarkTokens.INSTANCE.m4486getPrimaryFixed0d7_KjU() : j37;
        long jM4487getPrimaryFixedDim0d7_KjU = (i2 & 32) != 0 ? ColorDarkTokens.INSTANCE.m4487getPrimaryFixedDim0d7_KjU() : j38;
        long jM4470getOnPrimaryFixed0d7_KjU = (i2 & 64) != 0 ? ColorDarkTokens.INSTANCE.m4470getOnPrimaryFixed0d7_KjU() : j39;
        long jM4471getOnPrimaryFixedVariant0d7_KjU = (i2 & 128) != 0 ? ColorDarkTokens.INSTANCE.m4471getOnPrimaryFixedVariant0d7_KjU() : j40;
        long jM4491getSecondaryFixed0d7_KjU = (i2 & 256) != 0 ? ColorDarkTokens.INSTANCE.m4491getSecondaryFixed0d7_KjU() : j41;
        long jM4492getSecondaryFixedDim0d7_KjU = (i2 & 512) != 0 ? ColorDarkTokens.INSTANCE.m4492getSecondaryFixedDim0d7_KjU() : j42;
        long jM4474getOnSecondaryFixed0d7_KjU = (i2 & 1024) != 0 ? ColorDarkTokens.INSTANCE.m4474getOnSecondaryFixed0d7_KjU() : j43;
        long jM4475getOnSecondaryFixedVariant0d7_KjU = (i2 & 2048) != 0 ? ColorDarkTokens.INSTANCE.m4475getOnSecondaryFixedVariant0d7_KjU() : j44;
        long jM4505getTertiaryFixed0d7_KjU = (i2 & 4096) != 0 ? ColorDarkTokens.INSTANCE.m4505getTertiaryFixed0d7_KjU() : j45;
        long jM4506getTertiaryFixedDim0d7_KjU = (i2 & 8192) != 0 ? ColorDarkTokens.INSTANCE.m4506getTertiaryFixedDim0d7_KjU() : j46;
        long jM4480getOnTertiaryFixed0d7_KjU = (i2 & 16384) != 0 ? ColorDarkTokens.INSTANCE.m4480getOnTertiaryFixed0d7_KjU() : j47;
        if ((i2 & 32768) != 0) {
            j48 = ColorDarkTokens.INSTANCE.m4481getOnTertiaryFixedVariant0d7_KjU();
        }
        return m2301darkColorScheme_VG5OTI(j49, jM4468getOnPrimary0d7_KjU, jM4485getPrimaryContainer0d7_KjU, jM4469getOnPrimaryContainer0d7_KjU, jM4463getInversePrimary0d7_KjU, jM4489getSecondary0d7_KjU, jM4472getOnSecondary0d7_KjU, jM4490getSecondaryContainer0d7_KjU, jM4473getOnSecondaryContainer0d7_KjU, jM4503getTertiary0d7_KjU, jM4478getOnTertiary0d7_KjU, jM4504getTertiaryContainer0d7_KjU, jM4479getOnTertiaryContainer0d7_KjU, jM4459getBackground0d7_KjU, jM4465getOnBackground0d7_KjU, jM4493getSurface0d7_KjU, jM4476getOnSurface0d7_KjU, jM4502getSurfaceVariant0d7_KjU, jM4477getOnSurfaceVariant0d7_KjU, j50, jM4464getInverseSurface0d7_KjU, jM4462getInverseOnSurface0d7_KjU, jM4460getError0d7_KjU, jM4466getOnError0d7_KjU, jM4461getErrorContainer0d7_KjU, jM4467getOnErrorContainer0d7_KjU, jM4482getOutline0d7_KjU, jM4483getOutlineVariant0d7_KjU, jM4488getScrim0d7_KjU, jM4494getSurfaceBright0d7_KjU, jM4495getSurfaceContainer0d7_KjU, jM4496getSurfaceContainerHigh0d7_KjU, jM4497getSurfaceContainerHighest0d7_KjU, jM4498getSurfaceContainerLow0d7_KjU, jM4499getSurfaceContainerLowest0d7_KjU, jM4500getSurfaceDim0d7_KjU, jM4486getPrimaryFixed0d7_KjU, jM4487getPrimaryFixedDim0d7_KjU, jM4470getOnPrimaryFixed0d7_KjU, jM4471getOnPrimaryFixedVariant0d7_KjU, jM4491getSecondaryFixed0d7_KjU, jM4492getSecondaryFixedDim0d7_KjU, jM4474getOnSecondaryFixed0d7_KjU, jM4475getOnSecondaryFixedVariant0d7_KjU, jM4505getTertiaryFixed0d7_KjU, jM4506getTertiaryFixedDim0d7_KjU, jM4480getOnTertiaryFixed0d7_KjU, j48);
    }

    /* JADX INFO: renamed from: darkColorScheme-_VG5OTI, reason: not valid java name */
    public static final ColorScheme m2301darkColorScheme_VG5OTI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48) {
        return new ColorScheme(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j36, j31, j32, j33, j34, j35, j37, j38, j39, j40, j41, j42, j43, j44, j45, j46, j47, j48, null);
    }

    /* JADX INFO: renamed from: contentColorFor-4WTKRHQ, reason: not valid java name */
    public static final long m2295contentColorFor4WTKRHQ(ColorScheme colorScheme, long j) {
        if (Color.m6059equalsimpl0(j, colorScheme.getPrimary())) {
            return colorScheme.getOnPrimary();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getSecondary())) {
            return colorScheme.getOnSecondary();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getTertiary())) {
            return colorScheme.getOnTertiary();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getBackground())) {
            return colorScheme.getOnBackground();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getError())) {
            return colorScheme.getOnError();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getPrimaryContainer())) {
            return colorScheme.getOnPrimaryContainer();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getSecondaryContainer())) {
            return colorScheme.getOnSecondaryContainer();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getTertiaryContainer())) {
            return colorScheme.getOnTertiaryContainer();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getErrorContainer())) {
            return colorScheme.getOnErrorContainer();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getInverseSurface())) {
            return colorScheme.getInverseOnSurface();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getSurface())) {
            return colorScheme.getOnSurface();
        }
        if (Color.m6059equalsimpl0(j, colorScheme.getSurfaceVariant())) {
            return colorScheme.getOnSurfaceVariant();
        }
        if (!Color.m6059equalsimpl0(j, colorScheme.getSurfaceBright()) && !Color.m6059equalsimpl0(j, colorScheme.getSurfaceContainer()) && !Color.m6059equalsimpl0(j, colorScheme.getSurfaceContainerHigh()) && !Color.m6059equalsimpl0(j, colorScheme.getSurfaceContainerHighest()) && !Color.m6059equalsimpl0(j, colorScheme.getSurfaceContainerLow()) && !Color.m6059equalsimpl0(j, colorScheme.getSurfaceContainerLowest()) && !Color.m6059equalsimpl0(j, colorScheme.getSurfaceDim())) {
            if (!Color.m6059equalsimpl0(j, colorScheme.getPrimaryFixed()) && !Color.m6059equalsimpl0(j, colorScheme.getPrimaryFixedDim())) {
                if (!Color.m6059equalsimpl0(j, colorScheme.getSecondaryFixed()) && !Color.m6059equalsimpl0(j, colorScheme.getSecondaryFixedDim())) {
                    if (!Color.m6059equalsimpl0(j, colorScheme.getTertiaryFixed()) && !Color.m6059equalsimpl0(j, colorScheme.getTertiaryFixedDim())) {
                        return Color.INSTANCE.m6094getUnspecified0d7_KjU();
                    }
                    return colorScheme.getOnTertiaryFixed();
                }
                return colorScheme.getOnSecondaryFixed();
            }
            return colorScheme.getOnPrimaryFixed();
        }
        return colorScheme.getOnSurface();
    }

    /* JADX INFO: renamed from: contentColorFor-ek8zF_U, reason: not valid java name */
    public static final long m2296contentColorForek8zF_U(long j, Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, 509589638, "C(contentColorFor)N(backgroundColor:c#ui.graphics.Color)1125@51799L11:ColorScheme.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(509589638, i, -1, "androidx.compose.material3.contentColorFor (ColorScheme.kt:1125)");
        }
        composer.startReplaceGroup(89373914);
        ComposerKt.sourceInformation(composer, "*1126@51883L7");
        long jM2295contentColorFor4WTKRHQ = m2295contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composer, 6), j);
        if (jM2295contentColorFor4WTKRHQ == 16) {
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = composer.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd(composer);
            jM2295contentColorFor4WTKRHQ = ((Color) objConsume).m6068unboximpl();
        }
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return jM2295contentColorFor4WTKRHQ;
    }

    public static final ColorScheme expressiveLightColorScheme() {
        return m2308lightColorScheme_VG5OTI$default(0L, 0L, 0L, PaletteTokens.INSTANCE.m4919getPrimary300d7_KjU(), 0L, 0L, 0L, 0L, PaletteTokens.INSTANCE.m4932getSecondary300d7_KjU(), 0L, 0L, 0L, PaletteTokens.INSTANCE.m4945getTertiary300d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, PaletteTokens.INSTANCE.m4869getError300d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -33558793, 65535, null);
    }

    /* JADX INFO: renamed from: lightColorScheme-C-Xl9yA$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m2304lightColorSchemeCXl9yA$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, int i, int i2, Object obj) {
        long jM4532getPrimary0d7_KjU = (i & 1) != 0 ? ColorLightTokens.INSTANCE.m4532getPrimary0d7_KjU() : j;
        long jM4516getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorLightTokens.INSTANCE.m4516getOnPrimary0d7_KjU() : j2;
        long jM4533getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorLightTokens.INSTANCE.m4533getPrimaryContainer0d7_KjU() : j3;
        long jM4517getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorLightTokens.INSTANCE.m4517getOnPrimaryContainer0d7_KjU() : j4;
        long jM4511getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorLightTokens.INSTANCE.m4511getInversePrimary0d7_KjU() : j5;
        long jM4537getSecondary0d7_KjU = (i & 32) != 0 ? ColorLightTokens.INSTANCE.m4537getSecondary0d7_KjU() : j6;
        long jM4520getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorLightTokens.INSTANCE.m4520getOnSecondary0d7_KjU() : j7;
        long jM4538getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorLightTokens.INSTANCE.m4538getSecondaryContainer0d7_KjU() : j8;
        long j37 = jM4532getPrimary0d7_KjU;
        long jM4521getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorLightTokens.INSTANCE.m4521getOnSecondaryContainer0d7_KjU() : j9;
        long jM4551getTertiary0d7_KjU = (i & 512) != 0 ? ColorLightTokens.INSTANCE.m4551getTertiary0d7_KjU() : j10;
        long jM4526getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorLightTokens.INSTANCE.m4526getOnTertiary0d7_KjU() : j11;
        long jM4552getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorLightTokens.INSTANCE.m4552getTertiaryContainer0d7_KjU() : j12;
        long jM4527getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorLightTokens.INSTANCE.m4527getOnTertiaryContainer0d7_KjU() : j13;
        long jM4507getBackground0d7_KjU = (i & 8192) != 0 ? ColorLightTokens.INSTANCE.m4507getBackground0d7_KjU() : j14;
        long jM4513getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorLightTokens.INSTANCE.m4513getOnBackground0d7_KjU() : j15;
        long jM4541getSurface0d7_KjU = (i & 32768) != 0 ? ColorLightTokens.INSTANCE.m4541getSurface0d7_KjU() : j16;
        long jM4524getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorLightTokens.INSTANCE.m4524getOnSurface0d7_KjU() : j17;
        long jM4550getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorLightTokens.INSTANCE.m4550getSurfaceVariant0d7_KjU() : j18;
        long jM4525getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorLightTokens.INSTANCE.m4525getOnSurfaceVariant0d7_KjU() : j19;
        long j38 = (i & 524288) != 0 ? j37 : j20;
        long jM4512getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorLightTokens.INSTANCE.m4512getInverseSurface0d7_KjU() : j21;
        long jM4510getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorLightTokens.INSTANCE.m4510getInverseOnSurface0d7_KjU() : j22;
        long jM4508getError0d7_KjU = (i & 4194304) != 0 ? ColorLightTokens.INSTANCE.m4508getError0d7_KjU() : j23;
        long jM4514getOnError0d7_KjU = (i & 8388608) != 0 ? ColorLightTokens.INSTANCE.m4514getOnError0d7_KjU() : j24;
        long jM4509getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorLightTokens.INSTANCE.m4509getErrorContainer0d7_KjU() : j25;
        long jM4515getOnErrorContainer0d7_KjU = (i & 33554432) != 0 ? ColorLightTokens.INSTANCE.m4515getOnErrorContainer0d7_KjU() : j26;
        long jM4530getOutline0d7_KjU = (i & 67108864) != 0 ? ColorLightTokens.INSTANCE.m4530getOutline0d7_KjU() : j27;
        long jM4531getOutlineVariant0d7_KjU = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? ColorLightTokens.INSTANCE.m4531getOutlineVariant0d7_KjU() : j28;
        long jM4536getScrim0d7_KjU = (i & 268435456) != 0 ? ColorLightTokens.INSTANCE.m4536getScrim0d7_KjU() : j29;
        long jM4542getSurfaceBright0d7_KjU = (i & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? ColorLightTokens.INSTANCE.m4542getSurfaceBright0d7_KjU() : j30;
        long jM4543getSurfaceContainer0d7_KjU = (i & 1073741824) != 0 ? ColorLightTokens.INSTANCE.m4543getSurfaceContainer0d7_KjU() : j31;
        long jM4544getSurfaceContainerHigh0d7_KjU = (i & Integer.MIN_VALUE) != 0 ? ColorLightTokens.INSTANCE.m4544getSurfaceContainerHigh0d7_KjU() : j32;
        long jM4545getSurfaceContainerHighest0d7_KjU = (i2 & 1) != 0 ? ColorLightTokens.INSTANCE.m4545getSurfaceContainerHighest0d7_KjU() : j33;
        long jM4546getSurfaceContainerLow0d7_KjU = (i2 & 2) != 0 ? ColorLightTokens.INSTANCE.m4546getSurfaceContainerLow0d7_KjU() : j34;
        long jM4547getSurfaceContainerLowest0d7_KjU = (i2 & 4) != 0 ? ColorLightTokens.INSTANCE.m4547getSurfaceContainerLowest0d7_KjU() : j35;
        if ((i2 & 8) != 0) {
            j36 = ColorLightTokens.INSTANCE.m4548getSurfaceDim0d7_KjU();
        }
        return m2303lightColorSchemeCXl9yA(j37, jM4516getOnPrimary0d7_KjU, jM4533getPrimaryContainer0d7_KjU, jM4517getOnPrimaryContainer0d7_KjU, jM4511getInversePrimary0d7_KjU, jM4537getSecondary0d7_KjU, jM4520getOnSecondary0d7_KjU, jM4538getSecondaryContainer0d7_KjU, jM4521getOnSecondaryContainer0d7_KjU, jM4551getTertiary0d7_KjU, jM4526getOnTertiary0d7_KjU, jM4552getTertiaryContainer0d7_KjU, jM4527getOnTertiaryContainer0d7_KjU, jM4507getBackground0d7_KjU, jM4513getOnBackground0d7_KjU, jM4541getSurface0d7_KjU, jM4524getOnSurface0d7_KjU, jM4550getSurfaceVariant0d7_KjU, jM4525getOnSurfaceVariant0d7_KjU, j38, jM4512getInverseSurface0d7_KjU, jM4510getInverseOnSurface0d7_KjU, jM4508getError0d7_KjU, jM4514getOnError0d7_KjU, jM4509getErrorContainer0d7_KjU, jM4515getOnErrorContainer0d7_KjU, jM4530getOutline0d7_KjU, jM4531getOutlineVariant0d7_KjU, jM4536getScrim0d7_KjU, jM4542getSurfaceBright0d7_KjU, jM4543getSurfaceContainer0d7_KjU, jM4544getSurfaceContainerHigh0d7_KjU, jM4545getSurfaceContainerHighest0d7_KjU, jM4546getSurfaceContainerLow0d7_KjU, jM4547getSurfaceContainerLowest0d7_KjU, j36);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use overload with additional Fixed roles instead")
    /* JADX INFO: renamed from: lightColorScheme-C-Xl9yA, reason: not valid java name */
    public static final /* synthetic */ ColorScheme m2303lightColorSchemeCXl9yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        return m2308lightColorScheme_VG5OTI$default(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 65520, null);
    }

    /* JADX INFO: renamed from: lightColorScheme-G1PFc-w$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m2306lightColorSchemeG1PFcw$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, int i, Object obj) {
        long jM4532getPrimary0d7_KjU = (i & 1) != 0 ? ColorLightTokens.INSTANCE.m4532getPrimary0d7_KjU() : j;
        long jM4516getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorLightTokens.INSTANCE.m4516getOnPrimary0d7_KjU() : j2;
        long jM4533getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorLightTokens.INSTANCE.m4533getPrimaryContainer0d7_KjU() : j3;
        long jM4517getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorLightTokens.INSTANCE.m4517getOnPrimaryContainer0d7_KjU() : j4;
        long jM4511getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorLightTokens.INSTANCE.m4511getInversePrimary0d7_KjU() : j5;
        long jM4537getSecondary0d7_KjU = (i & 32) != 0 ? ColorLightTokens.INSTANCE.m4537getSecondary0d7_KjU() : j6;
        long jM4520getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorLightTokens.INSTANCE.m4520getOnSecondary0d7_KjU() : j7;
        long jM4538getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorLightTokens.INSTANCE.m4538getSecondaryContainer0d7_KjU() : j8;
        long j30 = jM4532getPrimary0d7_KjU;
        long jM4521getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorLightTokens.INSTANCE.m4521getOnSecondaryContainer0d7_KjU() : j9;
        long jM4551getTertiary0d7_KjU = (i & 512) != 0 ? ColorLightTokens.INSTANCE.m4551getTertiary0d7_KjU() : j10;
        long jM4526getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorLightTokens.INSTANCE.m4526getOnTertiary0d7_KjU() : j11;
        long jM4552getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorLightTokens.INSTANCE.m4552getTertiaryContainer0d7_KjU() : j12;
        long jM4527getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorLightTokens.INSTANCE.m4527getOnTertiaryContainer0d7_KjU() : j13;
        long jM4507getBackground0d7_KjU = (i & 8192) != 0 ? ColorLightTokens.INSTANCE.m4507getBackground0d7_KjU() : j14;
        long jM4513getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorLightTokens.INSTANCE.m4513getOnBackground0d7_KjU() : j15;
        long jM4541getSurface0d7_KjU = (i & 32768) != 0 ? ColorLightTokens.INSTANCE.m4541getSurface0d7_KjU() : j16;
        long jM4524getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorLightTokens.INSTANCE.m4524getOnSurface0d7_KjU() : j17;
        long jM4550getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorLightTokens.INSTANCE.m4550getSurfaceVariant0d7_KjU() : j18;
        long jM4525getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorLightTokens.INSTANCE.m4525getOnSurfaceVariant0d7_KjU() : j19;
        long j31 = (i & 524288) != 0 ? j30 : j20;
        long jM4512getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorLightTokens.INSTANCE.m4512getInverseSurface0d7_KjU() : j21;
        long jM4510getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorLightTokens.INSTANCE.m4510getInverseOnSurface0d7_KjU() : j22;
        long jM4508getError0d7_KjU = (i & 4194304) != 0 ? ColorLightTokens.INSTANCE.m4508getError0d7_KjU() : j23;
        long jM4514getOnError0d7_KjU = (i & 8388608) != 0 ? ColorLightTokens.INSTANCE.m4514getOnError0d7_KjU() : j24;
        long jM4509getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorLightTokens.INSTANCE.m4509getErrorContainer0d7_KjU() : j25;
        long jM4515getOnErrorContainer0d7_KjU = (i & 33554432) != 0 ? ColorLightTokens.INSTANCE.m4515getOnErrorContainer0d7_KjU() : j26;
        long jM4530getOutline0d7_KjU = (i & 67108864) != 0 ? ColorLightTokens.INSTANCE.m4530getOutline0d7_KjU() : j27;
        long jM4531getOutlineVariant0d7_KjU = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? ColorLightTokens.INSTANCE.m4531getOutlineVariant0d7_KjU() : j28;
        if ((i & 268435456) != 0) {
            j29 = ColorLightTokens.INSTANCE.m4536getScrim0d7_KjU();
        }
        return m2305lightColorSchemeG1PFcw(j30, jM4516getOnPrimary0d7_KjU, jM4533getPrimaryContainer0d7_KjU, jM4517getOnPrimaryContainer0d7_KjU, jM4511getInversePrimary0d7_KjU, jM4537getSecondary0d7_KjU, jM4520getOnSecondary0d7_KjU, jM4538getSecondaryContainer0d7_KjU, jM4521getOnSecondaryContainer0d7_KjU, jM4551getTertiary0d7_KjU, jM4526getOnTertiary0d7_KjU, jM4552getTertiaryContainer0d7_KjU, jM4527getOnTertiaryContainer0d7_KjU, jM4507getBackground0d7_KjU, jM4513getOnBackground0d7_KjU, jM4541getSurface0d7_KjU, jM4524getOnSurface0d7_KjU, jM4550getSurfaceVariant0d7_KjU, jM4525getOnSurfaceVariant0d7_KjU, j31, jM4512getInverseSurface0d7_KjU, jM4510getInverseOnSurface0d7_KjU, jM4508getError0d7_KjU, jM4514getOnError0d7_KjU, jM4509getErrorContainer0d7_KjU, jM4515getOnErrorContainer0d7_KjU, jM4530getOutline0d7_KjU, jM4531getOutlineVariant0d7_KjU, j29);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use overload with additional surface roles instead")
    /* JADX INFO: renamed from: lightColorScheme-G1PFc-w, reason: not valid java name */
    public static final /* synthetic */ ColorScheme m2305lightColorSchemeG1PFcw(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29) {
        return m2308lightColorScheme_VG5OTI$default(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -536870912, 65535, null);
    }

    /* JADX INFO: renamed from: darkColorScheme-C-Xl9yA$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m2298darkColorSchemeCXl9yA$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, int i, int i2, Object obj) {
        long jM4484getPrimary0d7_KjU = (i & 1) != 0 ? ColorDarkTokens.INSTANCE.m4484getPrimary0d7_KjU() : j;
        long jM4468getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorDarkTokens.INSTANCE.m4468getOnPrimary0d7_KjU() : j2;
        long jM4485getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorDarkTokens.INSTANCE.m4485getPrimaryContainer0d7_KjU() : j3;
        long jM4469getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorDarkTokens.INSTANCE.m4469getOnPrimaryContainer0d7_KjU() : j4;
        long jM4463getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorDarkTokens.INSTANCE.m4463getInversePrimary0d7_KjU() : j5;
        long jM4489getSecondary0d7_KjU = (i & 32) != 0 ? ColorDarkTokens.INSTANCE.m4489getSecondary0d7_KjU() : j6;
        long jM4472getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorDarkTokens.INSTANCE.m4472getOnSecondary0d7_KjU() : j7;
        long jM4490getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorDarkTokens.INSTANCE.m4490getSecondaryContainer0d7_KjU() : j8;
        long j37 = jM4484getPrimary0d7_KjU;
        long jM4473getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorDarkTokens.INSTANCE.m4473getOnSecondaryContainer0d7_KjU() : j9;
        long jM4503getTertiary0d7_KjU = (i & 512) != 0 ? ColorDarkTokens.INSTANCE.m4503getTertiary0d7_KjU() : j10;
        long jM4478getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorDarkTokens.INSTANCE.m4478getOnTertiary0d7_KjU() : j11;
        long jM4504getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorDarkTokens.INSTANCE.m4504getTertiaryContainer0d7_KjU() : j12;
        long jM4479getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorDarkTokens.INSTANCE.m4479getOnTertiaryContainer0d7_KjU() : j13;
        long jM4459getBackground0d7_KjU = (i & 8192) != 0 ? ColorDarkTokens.INSTANCE.m4459getBackground0d7_KjU() : j14;
        long jM4465getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorDarkTokens.INSTANCE.m4465getOnBackground0d7_KjU() : j15;
        long jM4493getSurface0d7_KjU = (i & 32768) != 0 ? ColorDarkTokens.INSTANCE.m4493getSurface0d7_KjU() : j16;
        long jM4476getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorDarkTokens.INSTANCE.m4476getOnSurface0d7_KjU() : j17;
        long jM4502getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorDarkTokens.INSTANCE.m4502getSurfaceVariant0d7_KjU() : j18;
        long jM4477getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorDarkTokens.INSTANCE.m4477getOnSurfaceVariant0d7_KjU() : j19;
        long j38 = (i & 524288) != 0 ? j37 : j20;
        long jM4464getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorDarkTokens.INSTANCE.m4464getInverseSurface0d7_KjU() : j21;
        long jM4462getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorDarkTokens.INSTANCE.m4462getInverseOnSurface0d7_KjU() : j22;
        long jM4460getError0d7_KjU = (i & 4194304) != 0 ? ColorDarkTokens.INSTANCE.m4460getError0d7_KjU() : j23;
        long jM4466getOnError0d7_KjU = (i & 8388608) != 0 ? ColorDarkTokens.INSTANCE.m4466getOnError0d7_KjU() : j24;
        long jM4461getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorDarkTokens.INSTANCE.m4461getErrorContainer0d7_KjU() : j25;
        long jM4467getOnErrorContainer0d7_KjU = (i & 33554432) != 0 ? ColorDarkTokens.INSTANCE.m4467getOnErrorContainer0d7_KjU() : j26;
        long jM4482getOutline0d7_KjU = (i & 67108864) != 0 ? ColorDarkTokens.INSTANCE.m4482getOutline0d7_KjU() : j27;
        long jM4483getOutlineVariant0d7_KjU = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? ColorDarkTokens.INSTANCE.m4483getOutlineVariant0d7_KjU() : j28;
        long jM4488getScrim0d7_KjU = (i & 268435456) != 0 ? ColorDarkTokens.INSTANCE.m4488getScrim0d7_KjU() : j29;
        long jM4494getSurfaceBright0d7_KjU = (i & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? ColorDarkTokens.INSTANCE.m4494getSurfaceBright0d7_KjU() : j30;
        long jM4495getSurfaceContainer0d7_KjU = (i & 1073741824) != 0 ? ColorDarkTokens.INSTANCE.m4495getSurfaceContainer0d7_KjU() : j31;
        long jM4496getSurfaceContainerHigh0d7_KjU = (i & Integer.MIN_VALUE) != 0 ? ColorDarkTokens.INSTANCE.m4496getSurfaceContainerHigh0d7_KjU() : j32;
        long jM4497getSurfaceContainerHighest0d7_KjU = (i2 & 1) != 0 ? ColorDarkTokens.INSTANCE.m4497getSurfaceContainerHighest0d7_KjU() : j33;
        long jM4498getSurfaceContainerLow0d7_KjU = (i2 & 2) != 0 ? ColorDarkTokens.INSTANCE.m4498getSurfaceContainerLow0d7_KjU() : j34;
        long jM4499getSurfaceContainerLowest0d7_KjU = (i2 & 4) != 0 ? ColorDarkTokens.INSTANCE.m4499getSurfaceContainerLowest0d7_KjU() : j35;
        if ((i2 & 8) != 0) {
            j36 = ColorDarkTokens.INSTANCE.m4500getSurfaceDim0d7_KjU();
        }
        return m2297darkColorSchemeCXl9yA(j37, jM4468getOnPrimary0d7_KjU, jM4485getPrimaryContainer0d7_KjU, jM4469getOnPrimaryContainer0d7_KjU, jM4463getInversePrimary0d7_KjU, jM4489getSecondary0d7_KjU, jM4472getOnSecondary0d7_KjU, jM4490getSecondaryContainer0d7_KjU, jM4473getOnSecondaryContainer0d7_KjU, jM4503getTertiary0d7_KjU, jM4478getOnTertiary0d7_KjU, jM4504getTertiaryContainer0d7_KjU, jM4479getOnTertiaryContainer0d7_KjU, jM4459getBackground0d7_KjU, jM4465getOnBackground0d7_KjU, jM4493getSurface0d7_KjU, jM4476getOnSurface0d7_KjU, jM4502getSurfaceVariant0d7_KjU, jM4477getOnSurfaceVariant0d7_KjU, j38, jM4464getInverseSurface0d7_KjU, jM4462getInverseOnSurface0d7_KjU, jM4460getError0d7_KjU, jM4466getOnError0d7_KjU, jM4461getErrorContainer0d7_KjU, jM4467getOnErrorContainer0d7_KjU, jM4482getOutline0d7_KjU, jM4483getOutlineVariant0d7_KjU, jM4488getScrim0d7_KjU, jM4494getSurfaceBright0d7_KjU, jM4495getSurfaceContainer0d7_KjU, jM4496getSurfaceContainerHigh0d7_KjU, jM4497getSurfaceContainerHighest0d7_KjU, jM4498getSurfaceContainerLow0d7_KjU, jM4499getSurfaceContainerLowest0d7_KjU, j36);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use overload with additional surface roles instead")
    /* JADX INFO: renamed from: darkColorScheme-C-Xl9yA, reason: not valid java name */
    public static final /* synthetic */ ColorScheme m2297darkColorSchemeCXl9yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        return m2302darkColorScheme_VG5OTI$default(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 65520, null);
    }

    /* JADX INFO: renamed from: darkColorScheme-G1PFc-w$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m2300darkColorSchemeG1PFcw$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, int i, Object obj) {
        long jM4484getPrimary0d7_KjU = (i & 1) != 0 ? ColorDarkTokens.INSTANCE.m4484getPrimary0d7_KjU() : j;
        long jM4468getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorDarkTokens.INSTANCE.m4468getOnPrimary0d7_KjU() : j2;
        long jM4485getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorDarkTokens.INSTANCE.m4485getPrimaryContainer0d7_KjU() : j3;
        long jM4469getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorDarkTokens.INSTANCE.m4469getOnPrimaryContainer0d7_KjU() : j4;
        long jM4463getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorDarkTokens.INSTANCE.m4463getInversePrimary0d7_KjU() : j5;
        long jM4489getSecondary0d7_KjU = (i & 32) != 0 ? ColorDarkTokens.INSTANCE.m4489getSecondary0d7_KjU() : j6;
        long jM4472getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorDarkTokens.INSTANCE.m4472getOnSecondary0d7_KjU() : j7;
        long jM4490getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorDarkTokens.INSTANCE.m4490getSecondaryContainer0d7_KjU() : j8;
        long j30 = jM4484getPrimary0d7_KjU;
        long jM4473getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorDarkTokens.INSTANCE.m4473getOnSecondaryContainer0d7_KjU() : j9;
        long jM4503getTertiary0d7_KjU = (i & 512) != 0 ? ColorDarkTokens.INSTANCE.m4503getTertiary0d7_KjU() : j10;
        long jM4478getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorDarkTokens.INSTANCE.m4478getOnTertiary0d7_KjU() : j11;
        long jM4504getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorDarkTokens.INSTANCE.m4504getTertiaryContainer0d7_KjU() : j12;
        long jM4479getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorDarkTokens.INSTANCE.m4479getOnTertiaryContainer0d7_KjU() : j13;
        long jM4459getBackground0d7_KjU = (i & 8192) != 0 ? ColorDarkTokens.INSTANCE.m4459getBackground0d7_KjU() : j14;
        long jM4465getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorDarkTokens.INSTANCE.m4465getOnBackground0d7_KjU() : j15;
        long jM4493getSurface0d7_KjU = (i & 32768) != 0 ? ColorDarkTokens.INSTANCE.m4493getSurface0d7_KjU() : j16;
        long jM4476getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorDarkTokens.INSTANCE.m4476getOnSurface0d7_KjU() : j17;
        long jM4502getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorDarkTokens.INSTANCE.m4502getSurfaceVariant0d7_KjU() : j18;
        long jM4477getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorDarkTokens.INSTANCE.m4477getOnSurfaceVariant0d7_KjU() : j19;
        long j31 = (i & 524288) != 0 ? j30 : j20;
        long jM4464getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorDarkTokens.INSTANCE.m4464getInverseSurface0d7_KjU() : j21;
        long jM4462getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorDarkTokens.INSTANCE.m4462getInverseOnSurface0d7_KjU() : j22;
        long jM4460getError0d7_KjU = (i & 4194304) != 0 ? ColorDarkTokens.INSTANCE.m4460getError0d7_KjU() : j23;
        long jM4466getOnError0d7_KjU = (i & 8388608) != 0 ? ColorDarkTokens.INSTANCE.m4466getOnError0d7_KjU() : j24;
        long jM4461getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorDarkTokens.INSTANCE.m4461getErrorContainer0d7_KjU() : j25;
        long jM4467getOnErrorContainer0d7_KjU = (i & 33554432) != 0 ? ColorDarkTokens.INSTANCE.m4467getOnErrorContainer0d7_KjU() : j26;
        long jM4482getOutline0d7_KjU = (i & 67108864) != 0 ? ColorDarkTokens.INSTANCE.m4482getOutline0d7_KjU() : j27;
        long jM4483getOutlineVariant0d7_KjU = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? ColorDarkTokens.INSTANCE.m4483getOutlineVariant0d7_KjU() : j28;
        if ((i & 268435456) != 0) {
            j29 = ColorDarkTokens.INSTANCE.m4488getScrim0d7_KjU();
        }
        return m2299darkColorSchemeG1PFcw(j30, jM4468getOnPrimary0d7_KjU, jM4485getPrimaryContainer0d7_KjU, jM4469getOnPrimaryContainer0d7_KjU, jM4463getInversePrimary0d7_KjU, jM4489getSecondary0d7_KjU, jM4472getOnSecondary0d7_KjU, jM4490getSecondaryContainer0d7_KjU, jM4473getOnSecondaryContainer0d7_KjU, jM4503getTertiary0d7_KjU, jM4478getOnTertiary0d7_KjU, jM4504getTertiaryContainer0d7_KjU, jM4479getOnTertiaryContainer0d7_KjU, jM4459getBackground0d7_KjU, jM4465getOnBackground0d7_KjU, jM4493getSurface0d7_KjU, jM4476getOnSurface0d7_KjU, jM4502getSurfaceVariant0d7_KjU, jM4477getOnSurfaceVariant0d7_KjU, j31, jM4464getInverseSurface0d7_KjU, jM4462getInverseOnSurface0d7_KjU, jM4460getError0d7_KjU, jM4466getOnError0d7_KjU, jM4461getErrorContainer0d7_KjU, jM4467getOnErrorContainer0d7_KjU, jM4482getOutline0d7_KjU, jM4483getOutlineVariant0d7_KjU, j29);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use overload with additional surface roles instead")
    /* JADX INFO: renamed from: darkColorScheme-G1PFc-w, reason: not valid java name */
    public static final /* synthetic */ ColorScheme m2299darkColorSchemeG1PFcw(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29) {
        return m2302darkColorScheme_VG5OTI$default(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -536870912, 65535, null);
    }

    public static final long fromToken(ColorScheme colorScheme, ColorSchemeKeyTokens colorSchemeKeyTokens) {
        switch (WhenMappings.$EnumSwitchMapping$0[colorSchemeKeyTokens.ordinal()]) {
            case 1:
                return colorScheme.getBackground();
            case 2:
                return colorScheme.getError();
            case 3:
                return colorScheme.getErrorContainer();
            case 4:
                return colorScheme.getInverseOnSurface();
            case 5:
                return colorScheme.getInversePrimary();
            case 6:
                return colorScheme.getInverseSurface();
            case 7:
                return colorScheme.getOnBackground();
            case 8:
                return colorScheme.getOnError();
            case 9:
                return colorScheme.getOnErrorContainer();
            case 10:
                return colorScheme.getOnPrimary();
            case 11:
                return colorScheme.getOnPrimaryContainer();
            case 12:
                return colorScheme.getOnSecondary();
            case 13:
                return colorScheme.getOnSecondaryContainer();
            case 14:
                return colorScheme.getOnSurface();
            case 15:
                return colorScheme.getOnSurfaceVariant();
            case 16:
                return colorScheme.getSurfaceTint();
            case 17:
                return colorScheme.getOnTertiary();
            case 18:
                return colorScheme.getOnTertiaryContainer();
            case 19:
                return colorScheme.getOutline();
            case 20:
                return colorScheme.getOutlineVariant();
            case 21:
                return colorScheme.getPrimary();
            case 22:
                return colorScheme.getPrimaryContainer();
            case 23:
                return colorScheme.getScrim();
            case 24:
                return colorScheme.getSecondary();
            case 25:
                return colorScheme.getSecondaryContainer();
            case 26:
                return colorScheme.getSurface();
            case 27:
                return colorScheme.getSurfaceVariant();
            case 28:
                return colorScheme.getSurfaceBright();
            case 29:
                return colorScheme.getSurfaceContainer();
            case 30:
                return colorScheme.getSurfaceContainerHigh();
            case 31:
                return colorScheme.getSurfaceContainerHighest();
            case 32:
                return colorScheme.getSurfaceContainerLow();
            case 33:
                return colorScheme.getSurfaceContainerLowest();
            case 34:
                return colorScheme.getSurfaceDim();
            case 35:
                return colorScheme.getTertiary();
            case 36:
                return colorScheme.getTertiaryContainer();
            case 37:
                return colorScheme.getPrimaryFixed();
            case 38:
                return colorScheme.getPrimaryFixedDim();
            case 39:
                return colorScheme.getOnPrimaryFixed();
            case 40:
                return colorScheme.getOnPrimaryFixedVariant();
            case 41:
                return colorScheme.getSecondaryFixed();
            case 42:
                return colorScheme.getSecondaryFixedDim();
            case 43:
                return colorScheme.getOnSecondaryFixed();
            case 44:
                return colorScheme.getOnSecondaryFixedVariant();
            case 45:
                return colorScheme.getTertiaryFixed();
            case 46:
                return colorScheme.getTertiaryFixedDim();
            case 47:
                return colorScheme.getOnTertiaryFixed();
            case 48:
                return colorScheme.getOnTertiaryFixedVariant();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ColorScheme LocalColorScheme$lambda$0() {
        return m2308lightColorScheme_VG5OTI$default(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1, 65535, null);
    }

    public static final ProvidableCompositionLocal<ColorScheme> getLocalColorScheme() {
        return LocalColorScheme;
    }

    public static final long getValue(ColorSchemeKeyTokens colorSchemeKeyTokens, Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, -810780884, "C(<get-value>)1540@70691L11:ColorScheme.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-810780884, i, -1, "androidx.compose.material3.<get-value> (ColorScheme.kt:1540)");
        }
        long jFromToken = fromToken(MaterialTheme.INSTANCE.getColorScheme(composer, 6), colorSchemeKeyTokens);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return jFromToken;
    }

    /* JADX INFO: renamed from: applyTonalElevation-RFCenO8, reason: not valid java name */
    public static final long m2294applyTonalElevationRFCenO8(ColorScheme colorScheme, long j, float f, Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, -1610977682, "C(applyTonalElevation)N(backgroundColor:c#ui.graphics.Color,elevation:c#ui.unit.Dp)1556@71561L7:ColorScheme.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1610977682, i, -1, "androidx.compose.material3.applyTonalElevation (ColorScheme.kt:1555)");
        }
        ProvidableCompositionLocal<Boolean> providableCompositionLocal = LocalTonalElevationEnabled;
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = composer.consume(providableCompositionLocal);
        ComposerKt.sourceInformationMarkerEnd(composer);
        boolean zBooleanValue = ((Boolean) objConsume).booleanValue();
        if (Color.m6059equalsimpl0(j, colorScheme.getSurface()) && zBooleanValue) {
            j = m2309surfaceColorAtElevation3ABfNKs(colorScheme, f);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return j;
    }

    public static final ProvidableCompositionLocal<Boolean> getLocalTonalElevationEnabled() {
        return LocalTonalElevationEnabled;
    }

    /* JADX INFO: renamed from: surfaceColorAtElevation-3ABfNKs, reason: not valid java name */
    public static final long m2309surfaceColorAtElevation3ABfNKs(ColorScheme colorScheme, float f) {
        if (Dp.m8897equalsimpl0(f, Dp.m8892constructorimpl(0))) {
            return colorScheme.getSurface();
        }
        return ColorKt.m6103compositeOverOWjLjI(Color.m6057copywmQWz5c$default(colorScheme.getSurfaceTint(), ((((float) Math.log(f + 1)) * 4.5f) + 2.0f) / 100.0f, 0.0f, 0.0f, 0.0f, 14, null), colorScheme.getSurface());
    }
}
