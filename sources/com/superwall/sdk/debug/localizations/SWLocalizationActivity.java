package com.superwall.sdk.debug.localizations;

import android.content.Intent;
import android.os.Bundle;
import android.widget.SearchView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.hermes.intl.Constants;
import com.google.android.gms.actions.SearchIntents;
import com.superwall.sdk.R;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SWLocalizationViewController.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001$B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\b\u0010\u0019\u001a\u00020\u0016H\u0002J\b\u0010\u001a\u001a\u00020\u0016H\u0002J\b\u0010\u001b\u001a\u00020\u0016H\u0002J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0012\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\"\u001a\u00020 2\b\u0010#\u001a\u0004\u0018\u00010\u001eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/widget/SearchView$OnQueryTextListener;", "<init>", "()V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "adapter", "Lcom/superwall/sdk/debug/localizations/LocalizationAdapter;", "localizationManager", "Lcom/superwall/sdk/debug/localizations/LocalizationManager;", "allRowModels", "", "Lcom/superwall/sdk/debug/localizations/LocalizationGrouping;", "getAllRowModels", "()Ljava/util/List;", "allRowModels$delegate", "Lkotlin/Lazy;", "rowModels", "searchView", "Landroid/widget/SearchView;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setupRecyclerView", "setupSearchView", "setupActionBar", "completion", Constants.LOCALE, "", "onQueryTextSubmit", "", SearchIntents.EXTRA_QUERY, "onQueryTextChange", "newText", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SWLocalizationActivity extends AppCompatActivity implements SearchView.OnQueryTextListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static Function1<? super String, Unit> completion;
    private LocalizationAdapter adapter;
    private LocalizationManager localizationManager;
    private RecyclerView recyclerView;
    private SearchView searchView;

    /* JADX INFO: renamed from: allRowModels$delegate, reason: from kotlin metadata */
    private final Lazy allRowModels = LazyKt.lazy(new Function0() { // from class: com.superwall.sdk.debug.localizations.SWLocalizationActivity$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SWLocalizationActivity.allRowModels_delegate$lambda$0(this.f$0);
        }
    });
    private List<LocalizationGrouping> rowModels = CollectionsKt.emptyList();

    /* JADX INFO: compiled from: SWLocalizationViewController.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/superwall/sdk/debug/localizations/SWLocalizationActivity$Companion;", "", "<init>", "()V", "completion", "Lkotlin/Function1;", "", "", "getCompletion", "()Lkotlin/jvm/functions/Function1;", "setCompletion", "(Lkotlin/jvm/functions/Function1;)V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Function1<String, Unit> getCompletion() {
            return SWLocalizationActivity.completion;
        }

        public final void setCompletion(Function1<? super String, Unit> function1) {
            SWLocalizationActivity.completion = function1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List allRowModels_delegate$lambda$0(SWLocalizationActivity sWLocalizationActivity) {
        LocalizationManager localizationManager = sWLocalizationActivity.localizationManager;
        if (localizationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localizationManager");
            localizationManager = null;
        }
        return localizationManager.getLocalizationGroupings();
    }

    private final List<LocalizationGrouping> getAllRowModels() {
        return (List) this.allRowModels.getValue();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_localization);
        this.localizationManager = new LocalizationManager();
        this.rowModels = getAllRowModels();
        this.recyclerView = (RecyclerView) findViewById(R.id.recycler_view);
        setupRecyclerView();
        setupSearchView();
        setupActionBar();
    }

    private final void setupRecyclerView() {
        this.adapter = new LocalizationAdapter(this.rowModels, new Function1() { // from class: com.superwall.sdk.debug.localizations.SWLocalizationActivity$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SWLocalizationActivity.setupRecyclerView$lambda$1(this.f$0, (String) obj);
            }
        });
        RecyclerView recyclerView = this.recyclerView;
        LocalizationAdapter localizationAdapter = null;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView = null;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            recyclerView2 = null;
        }
        LocalizationAdapter localizationAdapter2 = this.adapter;
        if (localizationAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            localizationAdapter = localizationAdapter2;
        }
        recyclerView2.setAdapter(localizationAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupRecyclerView$lambda$1(SWLocalizationActivity sWLocalizationActivity, String locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        sWLocalizationActivity.finish();
        Function1<? super String, Unit> function1 = completion;
        if (function1 != null) {
            function1.invoke(locale);
        }
        return Unit.INSTANCE;
    }

    private final void setupSearchView() {
        SearchView searchView = (SearchView) findViewById(R.id.search_view);
        this.searchView = searchView;
        if (searchView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchView");
            searchView = null;
        }
        searchView.setOnQueryTextListener(this);
    }

    private final void setupActionBar() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle("Localization");
        }
    }

    private final void completion(String locale) {
        Intent intent = new Intent();
        intent.putExtra(Constants.LOCALE, locale);
        setResult(-1, intent);
        finish();
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String query) {
        if (query == null) {
            return true;
        }
        LocalizationManager localizationManager = this.localizationManager;
        LocalizationAdapter localizationAdapter = null;
        if (localizationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localizationManager");
            localizationManager = null;
        }
        this.rowModels = localizationManager.localizationGroupings(query);
        LocalizationAdapter localizationAdapter2 = this.adapter;
        if (localizationAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            localizationAdapter = localizationAdapter2;
        }
        localizationAdapter.updateData(this.rowModels);
        return true;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String newText) {
        if (newText == null) {
            return true;
        }
        LocalizationManager localizationManager = this.localizationManager;
        LocalizationAdapter localizationAdapter = null;
        if (localizationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localizationManager");
            localizationManager = null;
        }
        this.rowModels = localizationManager.localizationGroupings(newText);
        LocalizationAdapter localizationAdapter2 = this.adapter;
        if (localizationAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            localizationAdapter = localizationAdapter2;
        }
        localizationAdapter.updateData(this.rowModels);
        return true;
    }
}
