.class Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 234
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 237
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->access$000(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lccsanandroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 238
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->access$000(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;->onNavigationItemReselected(Lccsanandroid/view/MenuItem;)V

    .line 239
    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->access$100(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->access$100(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onMenuModeChange(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 245
    return-void
.end method
