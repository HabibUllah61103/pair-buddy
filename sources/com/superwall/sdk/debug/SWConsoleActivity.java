package com.superwall.sdk.debug;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.superwall.sdk.R;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SWConsoleViewController.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/superwall/sdk/debug/SWConsoleActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "productPicker", "Landroid/widget/Spinner;", "tableView", "Landroidx/recyclerview/widget/RecyclerView;", "productAdapter", "Landroid/widget/ArrayAdapter;", "", "tableViewAdapter", "Lcom/superwall/sdk/debug/TableViewAdapter;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", "", "menu", "Landroid/view/Menu;", "onOptionsItemSelected", "item", "Landroid/view/MenuItem;", "setupTableView", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SWConsoleActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static List<StoreProduct> products = CollectionsKt.emptyList();
    private ArrayAdapter<String> productAdapter;
    private Spinner productPicker;
    private RecyclerView tableView;
    private TableViewAdapter tableViewAdapter;

    /* JADX INFO: compiled from: SWConsoleViewController.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/debug/SWConsoleActivity$Companion;", "", "<init>", "()V", "products", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "getProducts", "()Ljava/util/List;", "setProducts", "(Ljava/util/List;)V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<StoreProduct> getProducts() {
            return SWConsoleActivity.products;
        }

        public final void setProducts(List<StoreProduct> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            SWConsoleActivity.products = list;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_console);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle("Template Variables");
        }
        ActionBar supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setBackgroundDrawable(new ColorDrawable(-16777216));
        }
        this.productPicker = (Spinner) findViewById(R.id.productPicker);
        this.tableView = (RecyclerView) findViewById(R.id.console_recycler_view);
        SWConsoleActivity sWConsoleActivity = this;
        int i = R.layout.spinner_item;
        List<StoreProduct> list = products;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((StoreProduct) it.next()).getProductIdentifier());
        }
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<>(sWConsoleActivity, i, arrayList);
        this.productAdapter = arrayAdapter;
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        Spinner spinner = this.productPicker;
        Spinner spinner2 = null;
        if (spinner == null) {
            Intrinsics.throwUninitializedPropertyAccessException("productPicker");
            spinner = null;
        }
        ArrayAdapter<String> arrayAdapter2 = this.productAdapter;
        if (arrayAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("productAdapter");
            arrayAdapter2 = null;
        }
        spinner.setAdapter((SpinnerAdapter) arrayAdapter2);
        Spinner spinner3 = this.productPicker;
        if (spinner3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("productPicker");
        } else {
            spinner2 = spinner3;
        }
        spinner2.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.superwall.sdk.debug.SWConsoleActivity.onCreate.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
                Intrinsics.checkNotNullParameter(parent, "parent");
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(view, "view");
                TableViewAdapter tableViewAdapter = SWConsoleActivity.this.tableViewAdapter;
                if (tableViewAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tableViewAdapter");
                    tableViewAdapter = null;
                }
                tableViewAdapter.updateData(SWConsoleActivity.INSTANCE.getProducts().get(position).getAttributes(), position);
            }
        });
        setupTableView();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        getMenuInflater().inflate(R.menu.menu_console, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getItemId() == R.id.action_done) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private final void setupTableView() {
        RecyclerView recyclerView = this.tableView;
        TableViewAdapter tableViewAdapter = null;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tableView");
            recyclerView = null;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.tableViewAdapter = new TableViewAdapter(new ArrayList(), 0);
        RecyclerView recyclerView2 = this.tableView;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tableView");
            recyclerView2 = null;
        }
        TableViewAdapter tableViewAdapter2 = this.tableViewAdapter;
        if (tableViewAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tableViewAdapter");
        } else {
            tableViewAdapter = tableViewAdapter2;
        }
        recyclerView2.setAdapter(tableViewAdapter);
    }
}
